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

$member['username'] = $_POST['username'];
$member['company'] = $_POST['company'];
$member['userid'] =$_POST['userid'];
$member['email'] = $_POST['email'];
$member['time'] = $_POST['time'];
$member['auth'] = $_POST['auth'];
$member['truename'] = $_POST['truename'];
$member['mobile'] = $_POST['mobile'];
$member['qq'] = $_POST['qq'];
$member['gender'] = $_POST['gender'];
$member['groupid'] ='8';
$member['catid'] =$_POST['catid'];
$member['areaid'] =$_POST['areaid'];
$username=$member['username'];
$userid=$_POST['userid'];
$secret=$_POST['secret'];


if($secret==''){
    $result = array('msg'=>'密钥不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($userid==''){
    $result = array('msg'=>'用户id不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($username==''){
    $result = array('msg'=>'用户名不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$member=DB::get_one("SELECT * FROM {$table_member} WHERE username='$username' and userid='$userid'");
if($member==null){
    $result = array('msg'=>'用户不存在!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}



if($secret!=$member['password']){
    $result = array('msg'=>'密钥错误!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$username=$member['username'];
$company=$member['company'];
$email=$member['email'];

$update = '';
$member_fields = array('email','gender','truename','mobile','qq');
foreach($member as $k=>$v) {
    if(in_array($k, $member_fields)) {$update .= ','.$k.'='.$v;}
}
DB::query("UPDATE {$table_member} SET ".(substr($update, 1))." WHERE itemid=$itemid");


$result = array('msg'=>'success!','username' => $member['username'],'userid' =>$userid,'password'=>$member['password'],'passsalt'=>$member['passsalt'],'code'=>1);
$jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
echo $jsonResult;



?>