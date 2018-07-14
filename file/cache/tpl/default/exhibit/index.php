<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m m3">
<div class="m3l">
<div class="exh-slide">
<?php echo tag("moduleid=$moduleid&condition=status=3 and level=2 and thumb!=''&areaid=$cityid&order=".$MOD['order']."&pagesize=".$MOD['page_islide']."&width=320&height=240&template=slide");?>
</div>
<div class="exh-rec">
<?php $tags=tag("moduleid=$moduleid&condition=status=3 and level=1&areaid=$cityid&pagesize=3&order=".$MOD['order']."&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<ul>
<li><a href="<?php echo $t['linkurl'];?>" target="_blank" title="<?php echo $t['alt'];?>" class="f_b px16"><?php echo $t['title'];?></a></li>
<li><?php echo timetodate($t['fromtime'], 3);?> 至 <?php echo timetodate($t['totime'], 3);?> [<?php echo $t['city'];?>]</li>
<li title="<?php echo $t['city'];?><?php echo $t['hallname'];?>">主办：<?php echo $t['sponsor'];?></li>
</ul>
<?php } } ?>
</div>
<div class="c_b"></div>
<?php if(is_array($maincat)) { foreach($maincat as $i => $c) { ?>
<div class="head-txt"><span><a href="<?php echo $MOD['linkurl'];?><?php echo $c['linkurl'];?>">更多<i>&gt;</i></a></span><strong><?php echo $c['catname'];?></strong></div>
<div class="exh-list">
<?php $tags=tag("moduleid=$moduleid&areaid=$cityid&catid=".$c['catid']."&condition=status=3&order=".$MOD['order']."&pagesize=".$MOD['page_icat']."&template=null");?><ul>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<li title="<?php echo $t['alt'];?>&#13;主办：<?php echo $t['sponsor'];?>&#13;展馆：<?php echo $t['hallname'];?>"><em><i>[<?php echo $t['city'];?>]</i><?php echo timetodate($t['fromtime'], 3);?> 至 <?php echo timetodate($t['totime'], 3);?></em><a href="<?php echo $t['linkurl'];?>" target="_blank" class="px14"><?php echo $t['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<?php } } ?>
</div>
<div class="m3r">
<?php if($news_id) { ?>
<?php if($MOD['cat_news_num']) { ?>
<div class="head-sub"><span><a href="<?php if($MOD['cat_news']) { ?><?php echo cat_url($MOD['cat_news']);?><?php } else { ?><?php echo $MODULE[$news_id]['linkurl'];?><?php } ?>
">更多<i>&gt;</i></a></span><strong>展会资讯</strong></div>
<div class="list-thumb"><?php echo tag("moduleid=$news_id&condition=status=3 and thumb!=''&areaid=$cityid&catid=".$MOD['cat_news']."&pagesize=2&length=20&order=addtime desc&width=120&height=90&cols=2&template=thumb-table&target=_blank");?></div>
<div class="b10  bd-b"></div>
<div class="b10"></div>
<div class="list-txt"><?php echo tag("moduleid=$news_id&condition=status=3&areaid=$cityid&catid=".$MOD['cat_news']."&pagesize=".$MOD['cat_news_num']."&datetype=2&order=addtime desc&target=_blank");?></div>
<?php } ?>
<?php if($MOD['cat_hall'] && $MOD['cat_hall_num']) { ?>
<div class="head-sub"><span><a href="<?php echo cat_url($MOD['cat_hall']);?>">更多<i>&gt;</i></a></span><strong>展馆介绍</strong></div>
<div class="list-thumb"><?php echo tag("moduleid=$news_id&condition=status=3 and thumb!=''&areaid=$cityid&catid=".$MOD['cat_hall']."&pagesize=".$MOD['cat_hall_num']."&length=15&order=addtime desc&width=120&height=90&cols=2&template=thumb-table&target=_blank");?></div>
<div class="b10"></div>
<?php } ?>
<?php if($MOD['cat_service'] && $MOD['cat_service_num']) { ?>
<div class="head-sub"><span><a href="<?php echo cat_url($MOD['cat_service']);?>">更多<i>&gt;</i></a></span><strong>展会服务</strong></div>
<div class="list-txt"><?php echo tag("moduleid=$news_id&condition=status=3&areaid=$cityid&catid=".$MOD['cat_service']."&pagesize=".$MOD['cat_service_num']."&order=addtime desc&target=_blank");?></div>
<?php } ?>
<?php } ?>
</div>
<div class="c_b"></div>
</div>
<?php include template('footer');?>