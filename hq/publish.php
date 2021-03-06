<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
require '../common.inc.php';
require '../include/post.func.php';
require '../module/member/member.class.php';
$table_sell= DT_PRE.'sell_5';
$table_sell_data= DT_PRE.'sell_data_5';
$table_sell_search= DT_PRE.'sell_search_5';
$table_member= DT_PRE.'member';
$table_company= DT_PRE.'company';
$table_area= DT_PRE.'area';
$table_category= DT_PRE.'category';

$userid=$_POST['userid'];
$username=$_POST['username'];
$secret=$_POST['secret'];
$sell['company'] = $_POST['company'];
$sell['username'] = $_POST['username'];
$sell['userid'] = $_POST['userid'];
$sell['introduce'] =$_POST['introduce'];
$sell['title'] =$_POST['title'];
$sell['n1'] =$_POST['n1'];
$sell['n2'] =$_POST['n2'];
$sell['n3'] =$_POST['n3'];
$sell['v1'] =$_POST['v1'];
$sell['v2'] =$_POST['v2'];
$sell['v3'] =$_POST['v3'];
$sell['brand'] =$_POST['brand'];
$sell['unit'] =$_POST['unit'];
$sell['price'] =$_POST['price'];
$sell['minamount'] =$_POST['minamount'];
$sell['amount'] =$_POST['amount'];
$sell['days'] =$_POST['days'];
$sell['thumb'] =$_POST['thumb'];
$sell['thumb1'] =$_POST['thumb1'];
$sell['thumb2'] =$_POST['thumb2'];
$sell['typeid'] ='0';
$sell['adddate'] = date("Y-m-d");
$sell['editdate'] = $sell['adddate'];
$sell['edittime'] = DT_TIME;
$sell['addtime'] = DT_TIME;
$sell['ip'] = DT_IP;
$catid=$sell['catid'] =$_POST['catid'];
$areaid=$sell['areaid'] =$_POST['areaid'];


if($sell['catid']==''){
    $result = array('msg'=>'行业id不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}


if($sell['areaid']==''){
    $result = array('msg'=>'地区id不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($sell['username']==''){
    $result = array('msg'=>'用户名不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}


if($sell['userid']==''){
    $result = array('msg'=>'用户id不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($sell['title']==''){
    $result = array('msg'=>'标题不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($sell['introduce']==''){
    $result = array('msg'=>'产品介绍不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($sell['price']==''){
    $result = array('msg'=>'价格不能为空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

if($sell['thumb']==''){
    $result = array('msg'=>'图片不能未空!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

/**
 * 根据用户名查询表
 */
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

$cat_exsit= DB::count($table_category, "catid='$catid'");
if(!$cat_exsit){
    $result = array('msg'=>'行业id不存在!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}
$area_exsit= DB::count($table_area, "areaid='$areaid'");
if(!$area_exsit){
    $result = array('msg'=>'行业id不存在!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}

/**
 * 查询catid,areaid
 */
$company=DB::get_one("SELECT * FROM {$table_company} WHERE username='$username' and userid='$userid'");
if($company==null){
    $result = array('msg'=>'公司不存在!','code'=>2);
    $jsonResult=json_encode($result, JSON_UNESCAPED_UNICODE);
    echo $jsonResult;
    return;
}



$sell['telephone']=$company['telephone'];
$sell['company']=$company['company'];
$sell['address']=$company['address'];
$sell['mobile']=$member['mobile'];
$sell['truename']=$member['truename'];
$sell['email']=$member['email'];
$sell['qq']=$member['qq'];




$sell_fileds=array('catid','mycatid','areaid','typeid','level','title','tag','style','fee','introduce','n1','n2','n3','v1','v2','v3','brand','unit','price','minamount','amount','days','thumb','thumb1','thumb2','tag','status','hits','username','totime','editor','addtime','adddate','edittime','editdate','ip','template','linkurl','filepath','elite','note','company','truename','telephone','mobile','address','email','qq','wx','ali','skype');
$sell_sqlk = $sell_sqlv = '';
foreach($sell as $k=>$v) {
    if(in_array($k, $sell_fileds)) {$sell_sqlk .= ','.$k; $sell_sqlv .= ",'$v'";}
}

$sell_sqlk = substr($sell_sqlk, 1);
$sell_sqlv = substr($sell_sqlv, 1);

/**
 * 插入sell表
 */
DB::query("INSERT INTO {$table_sell} ($sell_sqlk,status)  VALUES ($sell_sqlv,3)");
$itemid = DB::insert_id();
/**
 * 插入sell_data表
 */
DB::query("REPLACE INTO {$table_sell_data} (itemid,content) VALUES ('$itemid ', '$sell[introduce]')");

global $TYPE;
$item = DB::get_one("SELECT * FROM {$table_sell} WHERE itemid=$itemid");
$keyword = $item['title'].','.'供应'.','.strip_tags(cat_pos(get_cat($item['catid']), ','));


$update = '';
$update .= ",keyword='$keyword'";
$linkurl = "https://www.yhwy.net/goods/". 'show.php?itemid='.$itemid;
$update .= ",linkurl='$linkurl'";
if($update) DB::query("UPDATE {$table_sell} SET ".(substr($update, 1))." WHERE itemid=$itemid");
$sorttime = timetodate($item['edittime'], 'Y-m-d').' '.sprintf('%02d', $item['vip']).':'.timetodate($item['edittime'], 'H:i');
$sorttime=strtotime($sorttime);
DB::query("REPLACE INTO {$table_sell_search} (itemid,catid,areaid,status,content,sorttime) VALUES ($itemid,'$item[catid]','$item[areaid]','$item[status]','$keyword','$sorttime')");

$result = array('msg'=>'发布成功!','code'=>1,'link'=>$linkurl,'itemid'=>$itemid);
$jsonResult=json_encode($result,JSON_UNESCAPED_UNICODE);
echo $jsonResult;



?>