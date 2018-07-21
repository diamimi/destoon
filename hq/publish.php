<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
require '../common.inc.php';
require '../include/post.func.php';
require '../module/member/member.class.php';
$table_msg= DT_PRE.'sell_5';


$msg['username'] = userurl($_POST['username']);
$msg['company'] = userurl($_POST['company']);
$msg['introduce'] =$_POST['introduce'];
$msg['title'] =$_POST['title'];
$msg['n1'] =$_POST['n1'];
$msg['n2'] =$_POST['n2'];
$msg['n3'] =$_POST['n3'];
$msg['v1'] =$_POST['v1'];
$msg['v2'] =$_POST['v2'];
$msg['v3'] =$_POST['v3'];
$msg['brand'] =$_POST['brand'];
$msg['unit'] =$_POST['unit'];
$msg['price'] =$_POST['price'];
$msg['minamount'] =$_POST['minamount'];
$msg['amount'] =$_POST['amount'];
$msg['days'] =$_POST['days'];
$msg['keyword'] =$_POST['keyword'];
$msg['hits'] =$_POST['hits'];
$msg['thumb'] =$_POST['thumb'];
$msg['v3'] =$_POST['v3'];

$Fileds=array('catid','mycatid','areaid','typeid','level','title','tag','style','fee','introduce','n1','n2','n3','v1','v2','v3','brand','unit','price','minamount','amount','days','thumb','thumb1','thumb2','tag','status','hits','username','totime','editor','addtime','adddate','edittime','editdate','ip','template','linkurl','filepath','elite','note','company','truename','telephone','mobile','address','email','qq','wx','ali','skype');



if($member['username']==''){
    echo "用户名不能为空";
    return;
}

if($member['company']==''){
    echo "公司名不能为空";
    return;
}

if($member['email']==''){
    echo "邮箱不能为空";
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
$result='';
if($userid==0){
    $result = array('msg' => 'fail,username is already used!');
    $jsonResult=json_encode($result);
    echo $jsonResult;
    return;
}
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
$result = array('msg'=>'success!','username' => $member['username'],'userid' =>$userid,'password'=>$member['password'],'passsalt'=>$member['passsalt'],'payword'=>$member['payword'],'paysalt'=>$member['paysalt']);
$jsonResult=json_encode($result);
echo $jsonResult;



?>