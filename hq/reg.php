<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
require '../common.inc.php';
require '../include/post.func.php';
require '../module/member/member.class.php';
$table_member= DT_PRE.'member';
$table_member_misc = DT_PRE.'member_misc';
$table_company = DT_PRE.'company';

$result='';
$jsonResult='';
$member['linkurl'] = userurl($_POST['username']);
$password = $_POST['password'];
if($password==''){
    $result = array('msg'=>'密码不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}
$member['passsalt'] = random(8);
$member['paysalt'] = random(8);
$member['password'] = dpassword($password, $member['passsalt']);
$member['payword'] = dpassword($password, $member['paysalt']);
$member['sound'] = 1;
$member['username'] = $_POST['username'];
$member['passport'] = $_POST['username'];
$member['company'] = $_POST['company'];
$member['email'] = $_POST['email'];
$member['time'] = $_POST['time'];
$member['auth'] = $_POST['auth'];
$member['groupid'] ='6';

if($member['auth']!=md5($member['time']."tuiguangjia")){
    $result = array('msg'=>'认证失败!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($member['username']==''){
    $result = array('msg'=>'用户名不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}



if($member['company']==''){
    $result = array('msg'=>'公司名不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($member['email']==''){
    $result = array('msg'=>'邮箱不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}
$username=$member['username'];
$company=$member['company'];
$email=$member['email'];
$check = DB::count($table_member," username='$username' or company='$company' or email='$email'");
if($check){
    $result = array('msg'=>'公司名或用户名或邮箱已存在!','code'=>3);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$member_fields = array('username','company','passport', 'password','payword','email','sound','gender','truename','mobile','qq','wx','wxqr','ali','skype','department','career','groupid','regid','areaid','edittime','inviter','passsalt', 'paysalt');
$misc_fields = array('username','bank','banktype','branch','account','reply','black', 'send');
$company_fields = array('username','groupid','company','type','catid','catids','areaid', 'mode','capital','regunit','size','regyear','sell','buy','business','telephone','fax','mail','gzh','gzhqr','address','postcode','homepage','introduce','thumb','keyword','linkurl');
$member_sqlk = $member_sqlv = $misc_sqlk = $misc_sqlv = $company_sqlk = $company_sqlv = '';
foreach($member as $k=>$v) {
    if(in_array($k, $member_fields)) {$member_sqlk .= ','.$k; $member_sqlv .= ",'$v'";}
    if(in_array($k, $company_fields)) {$company_sqlk .= ','.$k; $company_sqlv .= ",'$v'";}
    if(in_array($k, $misc_fields)) {$misc_sqlk .= ','.$k; $misc_sqlv .= ",'$v'";}
}
$member_sqlk = substr($member_sqlk, 1);
$member_sqlv = substr($member_sqlv, 1);
$misc_sqlk = substr($misc_sqlk, 1);
$misc_sqlv = substr($misc_sqlv, 1);
$company_sqlk = substr($company_sqlk, 1);
$company_sqlv = substr($company_sqlv, 1);
DB::query("INSERT INTO {$table_member} ($member_sqlk,regip,regtime,loginip,logintime)  VALUES ($member_sqlv,'".DT_IP."','".DT_TIME."','".DT_IP."','".DT_TIME."')");
$userid = DB::insert_id();
$member['userid'] = $userid;
DB::query("INSERT INTO {$table_member_misc} (userid, $misc_sqlk) VALUES ('$userid', $misc_sqlv)");
DB::query("INSERT INTO {$table_company} (userid, $company_sqlk) VALUES ('$userid', $company_sqlv)");
$content_table = content_table(4, $userid, is_file(DT_CACHE.'/4.part'), $table_company_data);
DB::query("INSERT INTO {$content_table} (userid, content) VALUES ('$userid', '$member[content]')");
if($MOD['credit_register'] > 0) {
    credit_add($member['username'] , $MOD['credit_register']);
    credit_record($member['username'] , $MOD['credit_register'], 'system', $L['member_record_reg'], DT_IP);
}
if($MOD['money_register'] > 0) {
    money_add($member['username'], $MOD['money_register']);
    money_record($member['username'], $MOD['money_register'], $L['in_site'], 'system', $L['member_record_reg'], DT_IP);
}
if($MOD['sms_register'] > 0) {
    sms_add($member['username'], $MOD['sms_register']);
    sms_record($member['username'], $MOD['sms_register'], 'system', $L['member_record_reg'], DT_IP);
}
$result = array('msg'=>'success!','username' => $member['username'],'userid' =>$userid,'password'=>$member['password'],'passsalt'=>$member['passsalt'],'payword'=>$member['payword'],'paysalt'=>$member['paysalt'],'code'=>1);
$jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
echo $jsonResult;



?>