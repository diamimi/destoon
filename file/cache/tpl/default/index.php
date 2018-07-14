<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m0">
<div class="m">
<div class="im0">
<div class="im0l">
<?php $mid = isset($MODULE[16]) ? 16 : 5;?>
<?php $c0 = get_maincat(0, $mid, 1);?>
<ul>
<?php if(is_array($c0)) { foreach($c0 as $k0 => $v0) { ?>
<?php if($k0 < 16 && $v0['child']) { ?>
<?php $_c1 = get_maincat($v0['catid'], $mid, 2);?>
<?php $c1 = get_maincat($v0['catid'], $mid);?>
<li class="cate-<?php echo $k0;?>"><i>&gt;</i>
<a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $v0['linkurl'];?>" target="_blank"><strong><?php echo $v0['catname'];?></strong></a> 
<?php if($_c1) { ?>
<a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $_c1['0']['linkurl'];?>" target="_blank"><strong><?php echo $_c1['0']['catname'];?></strong></a>
<?php } else { ?>
<a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $c1['0']['linkurl'];?>" target="_blank"><strong><?php echo $c1['0']['catname'];?></strong></a>
<?php } ?>
<div>
<?php if(is_array($c1)) { foreach($c1 as $k1 => $v1) { ?>
<dl>
<dt><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $v1['linkurl'];?>" target="_blank"><?php echo set_style($v1['catname'], $v1['style']);?></a></dt>
<?php if($v1['child']) { ?>
<?php $c2 = get_maincat($v1['catid'], $mid);?>
<dd>
<?php if(is_array($c2)) { foreach($c2 as $k2 => $v2) { ?>
<?php if($k2) { ?><em>|</em><?php } ?>
<a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $v2['linkurl'];?>" target="_blank"><?php echo set_style($v2['catname'], $v2['style']);?></a>
<?php } } ?>
</dd>
<?php } ?>
</dl>
<?php } } ?>
</div>
</li>
<?php } ?>
<?php } } ?>
</ul>
</div>
<div class="im0m">
<div><?php echo ad(14);?></div>
<div class="im0a">
<div><?php echo ad(21);?></div>
<div><?php echo ad(22);?></div>
<div><?php echo ad(23);?></div>
<div><?php echo ad(24);?></div>
<div><?php echo ad(25);?></div>
</div>
</div>
<div class="im0r">
<div class="im0u">
<div class="user-info" style="background:#FFFFFF;">
<script type="text/javascript">
var destoon_uname = get_cookie('username');
document.write('<a href="<?php echo $MODULE['2']['linkurl'];?>avatar.php"><img src="'+DTPath+'api/avatar/show.php?size=large&reload=<?php echo DT_TIME;?>&username='+destoon_uname+'"/></a>');
document.write('<ul>');
if(get_cookie('auth')) {
document.write('<li><em><a href="<?php echo $MODULE['2']['linkurl'];?>logout.php">退出</a></em><a href="<?php echo $MODULE['2']['linkurl'];?>"><strong>Hi,'+destoon_uname+'</strong></a></li>');
} else {
if(destoon_uname) {
document.write('<li><em><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>">登录</a></em><a href="<?php echo $MODULE['2']['linkurl'];?>"><strong>Hi,'+destoon_uname+'</strong></a></li>');
} else {
document.write('<li><em><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>">注册</a></em><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>"><strong>Hi,请登录</strong></a></li>');
}
}
document.write('<li><a href="<?php echo $MODULE['2']['linkurl'];?>" class="b">会员中心</a><i>|</i><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>" class="b">发布信息</a><i>|</i><a href="<?php echo $MODULE['2']['linkurl'];?>biz.php" class="b">商户后台</a></li>');
document.write('</ul>');
</script>
</div>
<div id="ian">
<div class="ian-h">
<ul id="ian-h">
<li id="ian-h-1" onmouseover="Tb(this);" class="on"><a href="<?php echo $EXT['announce_url'];?>" target="_blank"><span>网站动态</span></a></li>
<li id="ian-h-2" onmouseover="Tb(this);"><a href="<?php echo $MODULE['2']['linkurl'];?>" target="_blank"><span>我是买家</span></a></li>
<li id="ian-h-3" onmouseover="Tb(this);"><a href="<?php echo $MODULE['2']['linkurl'];?>biz.php" target="_blank"><span>我是卖家</span></a></li>
</ul>
</div>
<div id="ian-b-1" class="ian-b" style="display:;">
<?php echo tag("table=announce&condition=(totime=0 or totime>$today_endtime-86400)&areaid=$cityid&pagesize=3&datetype=2&order=listorder desc,addtime desc&target=_blank");?>
</div>
<div id="ian-b-2" class="ian-b" style="display:none;">
<a href="<?php echo $MODULE['5']['linkurl'];?>"><div>搜索产品</div></a>
<p>&gt;</p>
<a href="<?php echo $MODULE['2']['linkurl'];?>order.php" target="_blank"><div>我的订单</div></a>
<p>&gt;</p>
<a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=6&action=add" target="_blank"><div>发布求购</div></a>
</div>
<div id="ian-b-3" class="ian-b" style="display:none;">
<a href="<?php echo $MODULE['2']['linkurl'];?>home.php" target="_blank"><div>完善商铺</div></a>
<p>&gt;</p>
<a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=5&action=add" target="_blank"><div>发布产品</div></a>
<p>&gt;</p>
<a href="<?php echo $MODULE['2']['linkurl'];?>trade.php" target="_blank"><div>订单管理</div></a>
</div>
</div>
<div class="im0g">
<?php if($DT['max_cart']) { ?><a href="<?php echo $MODULE['2']['linkurl'];?>cart.php" target="_blank"><div><em><script type="text/javascript">document.write(get_cart());</script></em><img src="<?php echo DT_SKIN;?>image/grid-cart.png"/><br/>购物车</div></a><?php } ?>
<a href="<?php echo $MODULE['2']['linkurl'];?>grade.php" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-vip.png"/><br/>付费会员</div></a>
<a href="<?php echo $EXT['spread_url'];?>" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-spread.png"/><br/>排名推广</div></a>
<?php if($EXT['ad_enable']) { ?><a href="<?php echo $EXT['ad_url'];?>" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-ad.png"/><br/>广告投放</div></a><?php } ?>
<?php if($EXT['gift_enable']) { ?><a href="<?php echo $EXT['gift_url'];?>" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-gift.png"/><br/>积分换礼</div></a><?php } ?>
<a href="<?php echo $MODULE['1']['linkurl'];?>sitemap/" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-map.png"/><br/>网站地图</div></a>
<?php if($EXT['mobile_enable']) { ?><a href="<?php echo $MODULE['1']['linkurl'];?>api/mobile.php" target="_blank"><div><img src="<?php echo DT_SKIN;?>image/grid-mobile.png"/><br/>手机浏览</div></a><?php } ?>
</div>
</div>
<div class="im0t">
<div id="itrade">
<div class="tab-head">
<ul id="trade-h">
<li id="trade-h-4" onmouseover="Tb(this);" class="on"><a href="<?php echo $MODULE['4']['linkurl'];?>" target="_blank"><span>企业</span></a></li>
<?php if(isset($MODULE['6'])) { ?><li id="trade-h-6" onmouseover="Tb(this);"><a href="<?php echo $MODULE['6']['linkurl'];?>" target="_blank"><span>求购</span></a></li><?php } ?>
<?php if(isset($MODULE['7'])) { ?><li id="trade-h-7" onmouseover="Tb(this);"><a href="<?php echo $MODULE['7']['linkurl'];?>" target="_blank"><span>行情</span></a></li><?php } ?>
<?php if(isset($MODULE['21'])) { ?><li id="trade-h-21" onmouseover="Tb(this);"><a href="<?php echo $MODULE['21']['linkurl'];?>" target="_blank"><span>头条</span></a></li><?php } ?>
<?php if(isset($MODULE['18'])) { ?><li id="trade-h-18" onmouseover="Tb(this);"><a href="<?php echo $MODULE['18']['linkurl'];?>" target="_blank"><span>社区</span></a></li><?php } ?>
</ul>
</div>
<div id="trade-b-4" class="im0t-list" style="display:;">
<?php echo tag("moduleid=4&condition=vip>0 and catids<>''&areaid=$cityid&pagesize=6&target=_blank&order=fromtime desc&template=list-com");?>
</div>
<?php if(isset($MODULE['6'])) { ?>
<div id="trade-b-6" class="im0t-list" style="display:none;">
<?php echo tag("moduleid=6&condition=status=3&areaid=$cityid&pagesize=6&datetype=2&target=_blank&order=addtime desc");?>
</div>
<?php } ?>
<?php if(isset($MODULE['7'])) { ?>
<div id="trade-b-7" class="im0t-list" style="display:none;">
<?php echo tag("moduleid=7&condition=status=3&areaid=$cityid&pagesize=6&datetype=2&target=_blank&order=addtime desc");?>
</div>
<?php } ?>
<?php if(isset($MODULE['21'])) { ?>
<div id="trade-b-21" class="im0t-list" style="display:none;">
<?php echo tag("moduleid=21&condition=status=3 and level>0&areaid=$cityid&pagesize=6&datetype=2&target=_blank&order=addtime desc");?>
</div>
<?php } ?>
<?php if(isset($MODULE['18'])) { ?>
<div id="trade-b-18" class="im0t-list" style="display:none;">
<?php echo tag("moduleid=18&condition=status=3 and level>0&areaid=$cityid&pagesize=6&datetype=2&target=_blank&order=addtime desc");?>
</div>
<?php } ?>
</div>
</div>
</div>
<div class="c_b"></div>
</div>
</div>
</div>
<div class="m">
<div class="b10"></div>
<div class="head-txt">
<span>
 <?php if(isset($MODULE['5'])) { ?><a href="<?php echo $MODULE['5']['linkurl'];?>"><?php echo $MODULE['5']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['6'])) { ?><a href="<?php echo $MODULE['6']['linkurl'];?>"><?php echo $MODULE['6']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['22'])) { ?><a href="<?php echo $MODULE['22']['linkurl'];?>"><?php echo $MODULE['22']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['16'])) { ?><a href="<?php echo $MODULE['16']['linkurl'];?>"><?php echo $MODULE['16']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['17'])) { ?><a href="<?php echo $MODULE['17']['linkurl'];?>"><?php echo $MODULE['17']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['7'])) { ?><a href="<?php echo $MODULE['7']['linkurl'];?>"><?php echo $MODULE['7']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <a href="<?php echo $MODULE['4']['linkurl'];?>"><?php echo $MODULE['4']['name'];?></a>
</span>
<strong>行业市场</strong>
</div>
<?php if(isset($MODULE['16']) && $DT['page_mall']) { ?>
<?php $mid = 16;?>
<div class="im-b im-b-mall">
<div class="im-l">
<a href="<?php echo $MODULE[$mid]['linkurl'];?>"><p><?php echo $MODULE[$mid]['name'];?></p></a>
<?php $child = get_maincat(0, $mid, 1);?>
<ul>
<?php if(is_array($child)) { foreach($child as $i => $c) { ?>
<li><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $c['linkurl'];?>" target="_blank"><?php echo set_style($c['catname'], $c['style']);?></a></li>
<?php } } ?>
</ul>
</div>
<div class="im-r im-r-mall">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_mall']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="134" height="134" alt=""/></a>
<b><?php echo $DT['money_sign'];?><?php echo $t['price'];?></b>
<p><a href="<?php echo $t['linkurl'];?>" title="<?php echo $t['alt'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
</div>
</div>
<?php } ?>
<?php if(isset($MODULE['5']) && $DT['page_sell']) { ?>
<?php $mid = 5;?>
<div class="im-b im-b-sell">
<div class="im-l">
<a href="<?php echo $MODULE[$mid]['linkurl'];?>"><p><?php echo $MODULE[$mid]['name'];?></p></a>
<?php $child = get_maincat(0, $mid, 1);?>
<ul>
<?php if(is_array($child)) { foreach($child as $i => $c) { ?>
<li><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $c['linkurl'];?>" target="_blank"><?php echo set_style($c['catname'], $c['style']);?></a></li>
<?php } } ?>
</ul>
</div>
<div class="im-r im-r-sell">
<?php $tags=tag("moduleid=$mid&condition=status=3 and thumb<>'' and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_sell']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="134" height="134" alt=""/></a>
<b><?php if($t['price']>0) { ?><?php echo $DT['money_sign'];?><?php echo $t['price'];?><?php } else { ?>面议<?php } ?>
</b>
<p><a href="<?php echo $t['linkurl'];?>" title="<?php echo $t['alt'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
</div>
</div>
<?php } ?>
<?php if(isset($MODULE['22']) && $DT['page_info']) { ?>
<?php $mid = 22;?>
<div class="im-b im-b-info">
<div class="im-l">
<a href="<?php echo $MODULE[$mid]['linkurl'];?>"><p><?php echo $MODULE[$mid]['name'];?></p></a>
<?php $child = get_maincat(0, $mid, 1);?>
<ul>
<?php if(is_array($child)) { foreach($child as $i => $c) { ?>
<li><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $c['linkurl'];?>" target="_blank"><?php echo set_style($c['catname'], $c['style']);?></a></li>
<?php } } ?>
</ul>
</div>
<div class="im-r im-r-info">
<?php $tags=tag("moduleid=$mid&condition=status=3 and thumb<>'' and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_info']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="134" height="134" alt=""/></a>
<a href="<?php echo userurl($t['username']);?>" title="<?php echo $t['company'];?>" target="_blank"><b><?php echo $t['company'];?></b></a>
<p><a href="<?php echo $t['linkurl'];?>" title="<?php echo $t['alt'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
</div>
</div>
<?php } ?>
<?php if(isset($MODULE['17']) && $DT['page_group']) { ?>
<?php $mid = 17;?>
<div class="im-b im-b-group">
<div class="im-l">
<a href="<?php echo $MODULE[$mid]['linkurl'];?>"><p><?php echo $MODULE[$mid]['name'];?></p></a>
<?php $child = get_maincat(0, $mid, 1);?>
<ul>
<?php if(is_array($child)) { foreach($child as $i => $c) { ?>
<li><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $c['linkurl'];?>" target="_blank"><?php echo set_style($c['catname'], $c['style']);?></a></li>
<?php } } ?>
</ul>
</div>
<div class="im-r im-r-group">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_group']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="134" height="134" alt=""/></a>
<b><?php echo $DT['money_sign'];?><?php echo $t['price'];?></b>
<p><a href="<?php echo $t['linkurl'];?>" title="<?php echo $t['alt'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
</div>
</div>
<?php } ?>
</div>
<div class="m">
<div class="head-txt">
<?php if(isset($MODULE['21'])) { ?>
<span>
<?php $tags=tag("table=category&condition=moduleid=21 and parentid=0&pagesize=10&order=listorder,catid&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?><a href="<?php echo $MODULE['21']['linkurl'];?><?php echo $t['linkurl'];?>"><?php echo $t['catname'];?></a> &nbsp;|&nbsp; <?php } } ?>
<a href="<?php echo $MODULE['21']['linkurl'];?>">更多<i>&gt;</i></a>
</span>
<?php } ?>
<strong>资讯中心</strong>
</div>
<div class="in-b">
<div class="in-l">
<?php if(isset($MODULE['21']) && $DT['page_newst']) { ?>
<?php $tags=tag("moduleid=21&condition=status=3 and thumb<>'' and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_newst']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></p>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="160" height="120" alt=""/></a>
</div>
<?php } } ?>
<?php } ?>
<?php if(isset($MODULE['11']) && $DT['page_special']) { ?>
<?php $mid = 11;?>
<?php $tags=tag("moduleid=$mid&condition=status=3 and thumb<>'' and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_special']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<p><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">[<?php echo $MODULE[$mid]['name'];?>]</a> <a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></p>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="160" height="120" alt=""/></a>
</div>
<?php } } ?>
<?php } ?>

</div>
<div class="in-m">
<?php if(isset($MODULE['21']) && $DT['page_newsh']) { ?>
<?php echo tag("moduleid=21&condition=status=3 and level=5&areaid=$cityid&order=addtime desc&pagesize=1&target=_blank&template=list-hl");?>
<?php } ?>
<?php if(isset($MODULE['21']) && $DT['page_news']) { ?>
<div class="list-txt">
<?php echo tag("moduleid=21&condition=status=3 and level>0&areaid=$cityid&pagesize=".$DT['page_news']."&datetype=2&order=addtime desc&target=_blank");?>
</div>
<div class="b20 bd-t"></div>
<div class="list-txt">
<?php echo tag("moduleid=21&condition=status=3 and level>0&areaid=$cityid&pagesize=".$DT['page_news']."&datetype=2&page=2&order=addtime desc&target=_blank");?>
</div>
<?php } ?>
</div>
<div class="in-r">
<?php if(isset($MODULE['14']) && $DT['page_video']) { ?>
<?php $mid = 14;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong><?php echo $MODULE[$mid]['name'];?></strong>
</div>
<div class="in-video">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_video']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="136" height="102" alt=""/></a>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
</div>
<?php } ?>
<?php if(isset($MODULE['12']) && $DT['page_photo']) { ?>
<?php $mid = 12;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong><?php echo $MODULE[$mid]['name'];?></strong>
</div>
<div class="in-photo">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_photo']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="136" height="102" alt=""/></a>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
<?php } ?>

</div>
<div class="c_b"></div>
</div>
</div>
<div class="m">
<div class="head-txt">
<span>
 <?php if(isset($MODULE['10'])) { ?><a href="<?php echo $MODULE['10']['linkurl'];?>"><?php echo $MODULE['10']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['8'])) { ?><a href="<?php echo $MODULE['8']['linkurl'];?>"><?php echo $MODULE['8']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['13'])) { ?><a href="<?php echo $MODULE['13']['linkurl'];?>"><?php echo $MODULE['13']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['9'])) { ?><a href="<?php echo $MODULE['9']['linkurl'];?>"><?php echo $MODULE['9']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['15'])) { ?><a href="<?php echo $MODULE['15']['linkurl'];?>"><?php echo $MODULE['15']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if(isset($MODULE['18'])) { ?><a href="<?php echo $MODULE['18']['linkurl'];?>"><?php echo $MODULE['18']['name'];?></a> &nbsp;|&nbsp;<?php } ?>
 <?php if($EXT['ad_enable']) { ?><a href="<?php echo $EXT['ad_url'];?>">广告</a> &nbsp;|&nbsp;<?php } ?>
 <a href="<?php echo $EXT['spread_url'];?>">推广</a>
</span>
<strong>企业服务</strong>
</div>
<div class="ic-b">
<div class="ic-l">
<?php if(isset($MODULE['13']) && $DT['page_brand']) { ?>
<?php $mid = 13;?>
<div class="ic-brand">
<a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank"><i><?php echo $MODULE[$mid]['name'];?></i></a>
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_brand']."&template=null");?>
<div id="brands">
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="150" height="50" alt=""/></a><b><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></b></p>
<?php } } ?>
</div>
</div>
<?php } ?>

</div>
<div class="ic-m">
<?php if($DT['page_exhibit'] && isset($MODULE['8'])) { ?>
<?php $mid = 8;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong><?php echo $MODULE[$mid]['name'];?></strong>
</div>
<div class="list-txt">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&pagesize=".$DT['page_exhibit']."&order=addtime desc&template=null");?>
<ul>
<?php if(is_array($tags)) { foreach($tags as $t) { ?>
<li title="<?php echo $t['alt'];?> <?php echo timetodate($t['fromtime'], 'Y年m月d日');?>"><span class="f_r"><?php echo $t['city'];?></span><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<?php } ?>
<?php if(isset($MODULE['9']) && $DT['page_job']) { ?>
<?php $mid = 9;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong>招聘</strong>
</div>
<div class="list-txt">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&pagesize=".$DT['page_job']."&order=edittime desc&template=null");?>
<ul>
<?php if(is_array($tags)) { foreach($tags as $t) { ?>
<li title="<?php echo $t['alt'];?>"><span class="f_r"><?php echo area_pos($t['areaid'], '', 1);?></span><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<?php } ?>
</div>
<div class="ic-r">
<?php if(isset($MODULE['10']) && $DT['page_know']) { ?>
<?php $mid = 10;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong><?php echo $MODULE[$mid]['name'];?></strong>
</div>
<div class="list-txt">
<?php $tags=tag("moduleid=$mid&condition=status=3 and process>0 and credit>0&pagesize=".$DT['page_know']."&order=addtime desc&template=null");?>
<ul>
<?php if(is_array($tags)) { foreach($tags as $t) { ?>
<li title="<?php echo $t['alt'];?>"><span class="f_r"><span class="ic-know-credit"><?php echo $t['credit'];?></span></span><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<?php } ?>
<?php if(isset($MODULE['15']) && $DT['page_down']) { ?>
<?php $mid = 15;?>
<div class="head-txt">
<span><a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank">更多<i>&gt;</i></a></span><strong><?php echo $MODULE[$mid]['name'];?></strong>
</div>
<div class="ic-down">
<?php $tags=tag("moduleid=$mid&condition=status=3 and level>0&areaid=$cityid&order=addtime desc&lazy=$lazy&pagesize=".$DT['page_down']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="136" height="102" alt=""/></a>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?></a></p>
</div>
<?php } } ?>
<?php } ?>
</div>
<div class="c_b"></div>
</div>
</div>
<?php if(isset($MODULE['18']) && $DT['page_club']) { ?>
<?php $mid = 18;?>
<div class="m">
<div class="ic-club">
<div class="ic-club-h">
<span>
<?php $tags=tag("table=category&condition=moduleid=$mid and parentid=0&pagesize=10&order=listorder,catid&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $t['linkurl'];?>"><?php echo $t['catname'];?></a> &nbsp;|&nbsp; <?php } } ?>
<a href="<?php echo $MODULE[$mid]['linkurl'];?>">更多<i>&gt;</i></a>
</span>
<a href="<?php echo $MODULE[$mid]['linkurl'];?>" target="_blank"><strong><?php echo $MODULE[$mid]['name'];?></strong></a>
</div>
<div class="ic-club-b">
<?php $tags=tag("moduleid=18&table=club_group_18&condition=status=3 AND level>0&areaid=$cityid&order=addtime desc&pagesize=".$DT['page_club']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo $t['thumb'];?>"/></a>
<p><a href="<?php echo $t['linkurl'];?>" target="_blank"><?php echo $t['title'];?>圈</a></p>
<span><?php echo $t['post'];?>主题 <?php echo $t['fans'];?>粉丝</span>
</div>
<?php } } ?>
</div>
</div>
</div>
<?php } ?>
<?php if($DT['page_logo'] || $DT['page_text']) { ?>
<div class="m">
<div class="head-txt">
<span>
<a href="<?php echo $EXT['link_url'];?><?php echo rewrite('index.php?action=reg');?>">申请链接</a> &nbsp;|&nbsp;
<a href="<?php echo $EXT['link_url'];?>">更多<i>&gt;</i></a>
</span>
<div class="px16">友情链接</div>
</div>
<?php if($DT['page_logo']) { ?>
<?php $tags=tag("table=link&condition=status=3 and level>0 and thumb<>'' and username=''&areaid=$cityid&pagesize=".$DT['page_logo']."&order=listorder desc,itemid desc&lazy=$lazy&template=null");?>
<div class="ilink">
<ul>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<li><a href="<?php echo $t['linkurl'];?>" target="_blank" title="<?php echo $t['alt'];?>"><img src="<?php echo $t['thumb'];?>"/></a></li>
<?php } } ?>
</ul>
<div class="c_b"></div>
</div>
<?php } ?>
<?php if($DT['page_text']) { ?>
<?php $tags=tag("table=link&condition=status=3 and level>0 and thumb='' and username=''&areaid=$cityid&pagesize=".$DT['page_text']."&order=listorder desc,itemid desc&template=null");?>
<div class="ilink">
<ul>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<li><a href="<?php echo $t['linkurl'];?>" target="_blank" title="<?php echo $t['alt'];?>"><?php echo $t['title'];?></a></li>
<?php } } ?>
</ul>
<div class="c_b"></div>
</div>
<?php } ?>
</div>
<?php } ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/marquee.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/index.js"></script>
<?php include template('footer');?>