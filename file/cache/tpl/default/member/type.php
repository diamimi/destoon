<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header-widget', 'member');?>
<?php if($MG['type_limit'] > -1) { ?>
<script type="text/javascript">
var _del = 0;
</script>
<form method="post" action="?">
<input type="hidden" name="item" value="<?php echo $item;?>"/>
<div class="ls">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="60">删</th>
<th width="80">排序</th>
<th width="250">名称</th>
<th>上级分类</th>
</tr>
<?php if(is_array($lists['0'])) { foreach($lists['0'] as $k0 => $v0) { ?>
<tr>
<td align="center"><input name="post[<?php echo $v0['typeid'];?>][delete]" type="checkbox" value="1" onclick="if(this.checked){_del++;}else{_del--;}"/></td>
<td align="center"><input name="post[<?php echo $v0['typeid'];?>][listorder]" type="text" size="5" value="<?php echo $v0['listorder'];?>" maxlength="3"/></td>
<td><input name="post[<?php echo $v0['typeid'];?>][typename]" type="text" size="20" value="<?php echo $v0['typename'];?>" maxlength="50" style="width:140px;color:<?php echo $v0['style'];?>"/> <?php echo $v0['style_select'];?></td>
<td><?php echo $v0['parent_select'];?></td>
</tr>
<?php if(isset($lists['1'][$v0['typeid']])) { ?>
<?php if(is_array($lists['1'][$v0['typeid']])) { foreach($lists['1'][$v0['typeid']] as $k1 => $v1) { ?>
<tr>
<td align="center"><input name="post[<?php echo $v1['typeid'];?>][delete]" type="checkbox" value="1" onclick="if(this.checked){_del++;}else{_del--;}"/></td>
<td align="center"><input name="post[<?php echo $v1['typeid'];?>][listorder]" type="text" size="5" value="<?php echo $v1['listorder'];?>" maxlength="3"/></td>
<td><img src="<?php echo DT_PATH;?>admin/image/tree.gif" align="absmiddle"/><input name="post[<?php echo $v1['typeid'];?>][typename]" type="text" size="20" value="<?php echo $v1['typename'];?>" maxlength="50" style="width:120px;color:<?php echo $v1['style'];?>"/> <?php echo $v1['style_select'];?></td>
<td><?php echo $v1['parent_select'];?></td>
</tr>
<?php } } ?>
<?php } ?>
<?php } } ?>
<tr>
<td class="f_red" align="center">新增</td>
<td align="center"><input name="post[0][listorder]" type="text" size="5" value="" maxlength="3"/></td>
<td><input name="post[0][typename]" type="text" size="20" value="" maxlength="50" style="width:140px;"/> <?php echo $new_style;?></td>
<td><?php echo $parent_select;?></td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3"><br/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value=" 提 交 " onclick="if(_del && !confirm('提示:您选择删除'+_del+'个分类？确定要删除吗？')) return false;" class="btn_g"/>&nbsp;&nbsp;
<input type="button" value=" 关 闭 " class="btn" onclick="window.parent.cDialog();"/>
<?php if($MG['type_limit']) { ?>&nbsp;最多可定义 <strong class="f_red"><?php echo $MG['type_limit'];?></strong> 个分类&nbsp;&nbsp;&nbsp;当前已定义 <strong class="f_blue"><?php echo count($types);?></strong> 个&nbsp;&nbsp;&nbsp;<?php } ?>
<br/>&nbsp;
</td>
</tr>
</table>
</div>
</form>
<?php } else { ?>
<br/><br/>
<center class="f_red">抱歉，您没有权限自定义分类</center>
<br/><br/>
<?php } ?>
</body>
</html>