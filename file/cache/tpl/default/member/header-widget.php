<?php defined('IN_DESTOON') or exit('Access Denied');?><!doctype html>
<html>
<head>
<meta charset="<?php echo DT_CHARSET;?>"/>
<title><?php if($head_title) { ?><?php echo $head_title;?><?php echo $DT['seo_delimiter'];?><?php } ?>
<?php echo $DT['sitename'];?></title>
<meta name="generator" content="DESTOON B2B - www.destoon.com"/>
<link rel="stylesheet" type="text/css" href="image/style.css" />
<style type="text/css">
#msgbox{z-index:5;position:absolute;background:#333333;border-radius:5px;top:100px;left:40%;color:#FFFFFF;padding:15px;font-size:14px;letter-spacing:2px;opacity:0.9;filter:alpha(opacity=90);}
</style>
<script type="text/javascript" src="<?php echo DT_STATIC;?>lang/<?php echo DT_LANG;?>/lang.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/config.js"></script>
<!--[if lte IE 9]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-1.5.2.min.js"></script>
<!--<![endif]-->
<!--[if (gte IE 10)|!(IE)]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-2.1.1.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/common.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/admin.js"></script>
</head>
<body>
<div id="msgbox" style="display:none;"></div>
<?php echo dmsg();?>