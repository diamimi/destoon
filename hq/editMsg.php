<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
require '../common.inc.php';
require '../include/post.func.php';
require '../module/member/member.class.php';
$table_sell = DT_PRE . 'sell_5';
$table_sell_data = DT_PRE . 'sell_data_5';
$table_sell_search = DT_PRE . 'sell_search_5';
$table_member = DT_PRE . 'member';
$table_company = DT_PRE . 'company';


$username = $_POST['username'];
$userid = $_POST['userid'];
$secret = $_POST['secret'];
$itemid = $_POST['itemid'];
$sell['title'] = $_POST['title'];
$sell['introduce'] = $_POST['introduce'];
$sell['content'] = $_POST['introduce'];
$sell['n1'] = $_POST['n1'];
$sell['n2'] = $_POST['n2'];
$sell['n3'] = $_POST['n3'];
$sell['v1'] = $_POST['v1'];
$sell['v2'] = $_POST['v2'];
$sell['v3'] = $_POST['v3'];
$sell['brand'] = $_POST['brand'];
$sell['unit'] = $_POST['unit'];
$sell['price'] = $_POST['price'];
$sell['minamount'] = $_POST['minamount'];
$sell['amount'] = $_POST['amount'];
$sell['days'] = $_POST['days'];
$sell['thumb'] = $_POST['thumb'];
$sell['thumb1'] = $_POST['thumb1'];
$sell['thumb2'] = $_POST['thumb2'];
$sell['editdate'] = date("Y-m-d");


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

if ($itemid == '') {
    $result = array('msg' => '消息id不能为空!', 'code' => 2);
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
$i = DB::get_one("SELECT * FROM {$table_sell} WHERE username='$username' and   itemid='$itemid'");
if($i==null){
    $result = array('msg' => '消息不存在!', 'code' => 2);
    $jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

$sell_update =$sell_data_update = '';
$sell_fileds=array('catid','mycatid','areaid','typeid','level','title','tag','style','fee','introduce','n1','n2','n3','v1','v2','v3','brand','unit','price','minamount','amount','days','thumb','thumb1','thumb2','tag','status','hits','username','totime','editor','addtime','adddate','edittime','editdate','ip','template','linkurl','filepath','elite','note','company','truename','telephone','mobile','address','email','qq','wx','ali','skype');
$sell_data_fileds=array('content');

foreach ($sell as $k => $v) {
    if (in_array($k, $sell_fileds)) {
        if ($v != '') {
            $sell_update .= ",$k='$v'";
        }
    }

    if (in_array($k, $sell_data_fileds)) {
        if ($v != '') {
            $sell_data_update .= ",$k='$v'";
        }
    }
}
DB::query("UPDATE {$table_sell} SET " . (substr($sell_update, 1)) . " WHERE itemid='$itemid' ");
DB::query("UPDATE {$table_sell_data} SET " . (substr($sell_data_update, 1)) . " WHERE itemid='$itemid' ");


$result = array('msg' => '修改成功!', 'code' => 1);
$jsonResult = json_encode($result, JSON_UNESCAPED_UNICODE);
echo $jsonResult;


?>