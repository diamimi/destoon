<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
require '../common.inc.php';
require '../include/post.func.php';
require '../module/member/member.class.php';
$table_member = DT_PRE . 'member';
$table_member_misc = DT_PRE . 'member_misc';
$table_company = DT_PRE . 'company';
$table_company_data = DT_PRE . 'company_data';

$member['username'] = $_POST['username'];
$member['company'] = $_POST['company'];
$member['userid'] = $_POST['userid'];
$member['email'] = $_POST['email'];
$member['time'] = $_POST['time'];
$member['auth'] = $_POST['auth'];
$member['truename'] = $_POST['truename'];
$member['mobile'] = $_POST['mobile'];
$member['qq'] = $_POST['qq'];
$member['gender'] = $_POST['gender'];
$member['catid'] = $_POST['catid'];
$member['areaid'] = $_POST['areaid'];
$member['telephone'] = $_POST['telephone'];
$member['address'] = $_POST['address'];
$member['regyear'] = $_POST['regyear'];
$member['business'] = $_POST['business'];
$member['content'] = $_POST['content'];
$username = $member['username'];
$userid = $_POST['userid'];
$secret = $_POST['secret'];


if ($secret == '') {
    $result = array('msg' => '密钥不能为空!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if ($userid == '') {
    $result = array('msg' => '用户id不能为空!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if ($username == '') {
    $result = array('msg' => '用户名不能为空!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$m = DB::get_one("SELECT * FROM {$table_member} WHERE username='$username' and userid='$userid'");
if ($m == null) {
    $result = array('msg' => '用户不存在!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}


if ($secret != $m['password']) {
    $result = array('msg' => '密钥错误!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}
$username = $member['username'];
$company = $member['company'];
$email = $member['email'];
$mobile = $member['mobile'];
$telephone = $member['telephone'];
$check_fields = array('company', 'email', 'mobile');
$check_sql = '';
foreach ($member as $k => $v) {
    if (in_array($k, $check_fields)) {
        if ($v != '') {
            $check_sql .= "or $k='$v'";
        }
    }
}
$check = $check2 = 0;
if ($check_sql != '') {
    $check_sql = substr($check_sql, 2);
    $check = DB::count($table_member, $check_sql);
}
if ($telephone != '') {
    $check2 = DB::count($table_company, "telephone='$telephone'");
}
if ($check || $check2) {
    $result = array('msg' => '公司名/用户名/邮箱/手机号/公司电话已存在!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$member_update = $company_update = $company_date_update = '';
$member_fields = array('email', 'gender', 'truename', 'mobile', 'qq', 'areaid', 'company');
$company_fields = array('regyear', 'business', 'telephone', 'address', 'catid', 'areaid', 'company');
$company_data_fields = array('content');

foreach ($member as $k => $v) {
    if (in_array($k, $member_fields)) {
        if ($v != '') {
            $member_update .= ",$k='$v'";
        }
    }
    if (in_array($k, $company_fields)) {
        if ($v != '') {
            $company_update .= ",$k='$v'";
        }
    }
    if (in_array($k, $company_data_fields)) {
        if ($v != '') {
            $company_date_update .= ",$k='$v'";
        }
    }
}
DB::query("UPDATE {$table_member} SET " . (substr($member_update, 1)) . " WHERE userid='$userid' ");
DB::query("UPDATE {$table_company} SET " . (substr($company_update, 1)) . " WHERE userid='$userid' ");
DB::query("UPDATE {$table_company_data} SET " . (substr($company_date_update, 1)) . " WHERE userid='$userid' ");


$result = array('msg' => '修改成功!', 'code' => 1);
$jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
echo $jsonResult;


?>