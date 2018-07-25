<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m">
<div class="nav bd-b"><a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> <i>&gt;</i> <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> <i>&gt;</i> <?php echo cat_pos($CAT, ' <i>&gt;</i> ');?></div>
</div>
<div class="m m2">
<div class="m2l">
<div class="sort">
<div class="sort-k">行业</div>
<div class="sort-v">
<ul>
<?php if(is_array($maincat)) { foreach($maincat as $k => $v) { ?>
<li<?php if($v['catid']==$catid) { ?> class="on"<?php } ?>
><a href="<?php echo $MOD['linkurl'];?><?php echo $v['linkurl'];?>"><?php echo set_style($v['catname'],$v['style']);?></a><?php if(!$cityid) { ?> <i>(<?php echo $v['item'];?>)</i><?php } ?>
<li>
<?php } } ?>
</ul>
</div>
<div class="c_b"></div>
</div>
<div class="sort">
<div class="sort-k">地区</div>
<div class="sort-v">
<ul>
<?php $mainarea = get_mainarea(0)?>
<?php if(is_array($mainarea)) { foreach($mainarea as $k => $v) { ?>
<li><a href="<?php echo $MOD['linkurl'];?><?php echo rewrite('search.php?catid='.$catid.'&areaid='.$v['areaid']);?>"><?php echo $v['areaname'];?></a></li>
<?php } } ?>
</ul>
</div>
<div class="c_b"></div>
</div>
<?php if($TYPE) { ?>
<div class="sort">
<div class="sort-k">类别</div>
<div class="sort-v">
<ul>
<?php if(is_array($TYPE)) { foreach($TYPE as $k => $v) { ?>
<li><a href="<?php echo $MOD['linkurl'];?><?php echo rewrite('search.php?catid='.$catid.'&typeid='.$k);?>"><?php echo $v;?></a></li>
<?php } } ?>
</ul>
</div>
<div class="c_b"></div>
</div>
<?php } ?>
<?php if($CP) { ?><?php include template('property_list', 'chip');?><?php } ?>
<form method="post">
<div class="sell_tip" id="sell_tip" style="display:none;" title="双击关闭" ondblclick="Dh(this.id);">
<div>
<p>您可以</p>
<input type="submit" value="对比选中" onclick="this.form.action='<?php echo $MOD['linkurl'];?>compare.php';" class="tool-btn"/> 或 
<input type="submit" value="批量询价" onclick="this.form.action='<?php echo $MOD['linkurl'];?>inquiry.php';" class="tool-btn"/>
</div>
</div>
<div class="img_tip" id="img_tip" style="display:none;">&nbsp;</div>
<div class="tool">
<table>
<tr height="30">
<td width="25" align="center"><input type="checkbox" onclick="checkall(this.form);"/></td>
<td>
<input type="submit" value="对比选中" onclick="this.form.action='<?php echo $MOD['linkurl'];?>compare.php';" class="tool-btn"/>&nbsp; &nbsp;
<input type="submit" value="批量询价" onclick="this.form.action='<?php echo $MOD['linkurl'];?>inquiry.php';" class="tool-btn"/>
</td>
<td align="right">
<script type="text/javascript">var sh = '<?php echo $MOD['linkurl'];?>search.php?catid=<?php echo $catid;?>';</script>
<input type="checkbox" onclick="Go(sh+'&price=1');"/>标价&nbsp;
<input type="checkbox" onclick="Go(sh+'&thumb=1');"/>图片&nbsp;
<input type="checkbox" onclick="Go(sh+'&vip=1');"/><?php echo VIP;?>&nbsp;
<select onchange="Go(sh+'&day='+this.value)">
<option value="0">更新时间</option>
<option value="1">1天内</option>
<option value="3">3天内</option>
<option value="7">7天内</option>
<option value="15">15天内</option>
<option value="30">30天内</option>
</select>&nbsp;
<select onchange="Go(sh+'&order='+this.value)">
<option value="0">显示顺序</option>
<option value="2">价格由高到低</option>
<option value="3">价格由低到高</option>
<option value="4"><?php echo VIP;?>级别由高到低</option>
<option value="5"><?php echo VIP;?>级别由低到高</option>
<option value="6">供货量由高到低</option>
<option value="7">供货量由低到高</option>
<option value="8">起订量由高到低</option>
<option value="9">起订量由低到高</option>
</select>&nbsp;
<img src="<?php echo DT_SKIN;?>image/list_img.gif" width="16" height="16" alt="图片列表" align="absmiddle" class="c_p" onclick="Go(sh+'&list=1');"/>&nbsp;
<img src="<?php echo DT_SKIN;?>image/list_mix_on.gif" width="16" height="16" alt="图文列表" align="absmiddle" class="c_p" onclick="Go(sh+'&list=0');"/>&nbsp;
</td>
</tr>
</table>
</div>
<?php if($page == 1) { ?><?php echo ad($moduleid,$catid,$kw,6);?><?php } ?>
<?php if($tags) { ?><?php include template('list-'.$module, 'tag');?><?php } ?>
<div class="tool">
<table>
<tr height="30">
<td width="25"></td>
<td>
<input type="submit" value="对比选中" onclick="this.form.action='<?php echo $MOD['linkurl'];?>compare.php';" class="tool-btn"/>&nbsp; &nbsp;
<input type="submit" value="批量询价" onclick="this.form.action='<?php echo $MOD['linkurl'];?>inquiry.php';" class="tool-btn"/>
</td>
</tr>
</table>
</div>
</form>
</div>
<div class="m2r">
<div class="sponsor"><?php echo ad($moduleid,$catid,$kw,7);?></div>
<div class="head-sub"><strong>搜索排行</strong></div>
<div class="list-rank">
<?php echo tag("moduleid=$moduleid&table=keyword&condition=moduleid=$moduleid and status=3 and updatetime>$today_endtime-86400*30&pagesize=9&order=week_search desc&key=week_search&template=list-search_rank");?>
</div>
</div>
<div class="c_b"></div>
</div>
<?php include template('footer');?>