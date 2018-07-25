<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<?php if($MOD['page_irec']) { ?>
<div class="m o_h">
<div class="head-txt"><span><a href="<?php echo $MODULE['2']['linkurl'];?>grade.php" target="_blank">加入<i>&gt;</i></a></span><strong>名企推荐</strong></div>
<div class="list-img list0"><?php echo tag("moduleid=$moduleid&condition=catids<>'' and thumb<>'' and level>0&areaid=$cityid&order=vip desc&width=180&height=180&lazy=$lazy&pagesize=".$MOD['page_irec']."&template=list-thumb");?></div>
</div>
<?php } ?>
<div class="m m3">
<div class="m3l o_h">
<div class="head-txt"><strong>按地区浏览</strong></div>
<div class="list-area">
<?php $mainarea = get_mainarea(0)?>
<ul>
<?php if(is_array($mainarea)) { foreach($mainarea as $k => $v) { ?>
<li><a href="<?php echo $MOD['linkurl'];?><?php echo rewrite('search.php?areaid='.$v['areaid']);?>"><?php echo $v['areaname'];?></a></li>
<?php } } ?>
</ul>
<div class="c_b"></div>
</div>
<div class="head-txt"><strong>按行业浏览</strong></div>
<div class="list-cate">
<?php $mid = $moduleid;?>
<?php include template('catalog', 'chip');?>
</div>
</div>
<div class="m3r">
<?php if($MOD['page_ivip']) { ?>
<div class="head-sub"><span><a href="<?php echo $MODULE['2']['linkurl'];?>grade.php" target="_blank">加入<i>&gt;</i></a></span><strong>最新<?php echo VIP;?></strong></div>
<div class="list-txt">
<?php echo tag("moduleid=$moduleid&condition=vip>0 and catids<>''&areaid=$cityid&pagesize=".$MOD['page_ivip']."&order=fromtime desc&template=list-com");?>
</div>
<?php } ?>
<?php if($MOD['page_inew']) { ?>
<div class="head-sub"><span><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>" target="_blank">注册<i>&gt;</i></a></span><strong>最新加入</strong></div>
<div class="list-txt">
<?php echo tag("moduleid=$moduleid&condition=groupid>5 and catids<>''&areaid=$cityid&pagesize=".$MOD['page_inew']."&order=userid desc&template=list-com");?>
</div>
<?php } ?>
<?php if($MOD['page_inews']) { ?>
<div class="head-sub"><span><a href="<?php echo $MOD['linkurl'];?><?php echo rewrite('news.php?page=1');?>">更多<i>&gt;</i></a></span><strong>企业新闻</strong></div>
<div class="list-txt">
<?php echo tag("table=news&condition=status=3 and level>0&pagesize=".$MOD['page_inews']."&datetype=2&order=addtime desc&target=_blank");?>
</div>
<?php } ?>
</div>
<div class="c_b"></div>
</div>
<?php include template('footer');?>