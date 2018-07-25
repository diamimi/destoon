<?php defined('IN_DESTOON') or exit('Access Denied');?><?php if(is_array($tags)) { foreach($tags as $k => $t) { ?>
<div class="list" id="item_<?php echo $t['itemid'];?>">
<table>
<tr align="center">
<td width="25">&nbsp;<input type="checkbox" id="check_<?php echo $t['itemid'];?>" name="itemid[]" value="<?php echo $t['itemid'];?>" onclick="sell_tip(this, <?php echo $t['itemid'];?>);"/> </td>
<td width="90"><div><a href="<?php echo $t['linkurl'];?>" target="_blank"><img src="<?php echo imgurl($t['thumb']);?>" width="80" height="80" alt="<?php echo $t['alt'];?>" onmouseover="img_tip(this, this.src);" onmouseout="img_tip(this, '');"/></a></div></td>
<td width="10"> </td>
<td align="left">
<ul>
<li><a href="<?php echo $t['linkurl'];?>" target="_blank"><strong class="px14"><?php echo $t['title'];?></strong></a></li>
<li class="f_gray"><?php echo $t['introduce'];?></li>
<li><span class="f_r"><?php echo timetodate($t['edittime'], $datetype);?>&nbsp;&nbsp;</span>[<?php echo area_pos($t['areaid'], '');?>]</li>
<li>
<span class="f_r f_gray">
<?php if($t['username'] && $DT['im_web']) { ?><?php echo im_web($t['username'].'&mid='.$moduleid.'&itemid='.$t['itemid']);?>&nbsp;<?php } ?>
<?php if($t['qq'] && $DT['im_qq']) { ?><?php echo im_qq($t['qq']);?>&nbsp;<?php } ?>
<?php if($t['wx'] && $DT['im_wx']) { ?><?php echo im_wx($t['wx'], $t['username']);?>&nbsp;<?php } ?>
<?php if($t['ali'] && $DT['im_ali']) { ?><?php echo im_ali($t['ali']);?>&nbsp;<?php } ?>
<?php if($t['skype'] && $DT['im_skype']) { ?><?php echo im_skype($t['skype']);?>&nbsp;<?php } ?>
</span>
<?php if($t['vip']) { ?><img src="<?php echo DT_SKIN;?>image/vip_<?php echo $t['vip'];?>.gif" alt="<?php echo VIP;?>" title="<?php echo VIP;?>:<?php echo $t['vip'];?>级" align="absmiddle"/> <?php } ?>
<a href="<?php echo userurl($t['username']);?>" target="_blank"><?php echo $t['company'];?></a>&nbsp;
<span class="f_gray">
<?php if($t['validated']) { ?><span class="f_green">[已核实]</span><?php } else { ?>[未核实]<?php } ?>
<?php if(!$t['username']) { ?> [未注册]<?php } ?>
</span>
</li>
</ul>
</td>
<td width="10"> </td>
<td width="100"> 
<?php if($t['unit'] && $t['price']>0) { ?>
<span class="f_red"><?php echo $DT['money_sign'];?><strong class="px14"><?php echo $t['price'];?></strong>/<?php echo $t['unit'];?></span><br/>
<?php echo $t['minamount'];?><?php echo $t['unit'];?>起订<br/>
<?php } else { ?>
<span class="f_gray">面议</span><br/>
<?php } ?>
<?php if(SELL_ORDER && $t['username'] && $t['price']>0 && $t['minamount']>0 && $t['amount']>0 && $t['unit']) { ?>
<a href="<?php echo $MODULE['2']['linkurl'];?>buy.php?mid=<?php echo $moduleid;?>&itemid=<?php echo $t['itemid'];?>" target="_blank"><img src="<?php echo DT_SKIN;?>image/buy.gif" title="购买" class="iq_btn"/></a>
<?php } else { ?>
<a href="<?php echo $MOD['linkurl'];?><?php echo rewrite('inquiry.php?itemid='.$t['itemid']);?>" target="_blank"><img src="<?php echo DT_SKIN;?>image/inquiry.gif" title="询价" class="iq_btn"/></a>
<?php } ?>
</td>
</tr>
</table>
</div>
<?php } } ?>
<?php if($showpage && $pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>