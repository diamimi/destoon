<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="add"><a href="?mid=<?php echo $mid;?>&action=add"><span>添加<?php echo $MOD['name'];?></span></a></td>
<?php if($_userid) { ?>
<td class="tab" id="s3"><a href="?mid=<?php echo $mid;?>"><span>已发布(<?php echo $nums['3'];?>)</span></a></td>
<td class="tab" id="s2"><a href="?mid=<?php echo $mid;?>&status=2"><span>审核中(<?php echo $nums['2'];?>)</span></a></td>
<td class="tab" id="s1"><a href="?mid=<?php echo $mid;?>&status=1"><span>未通过(<?php echo $nums['1'];?>)</span></a></td>
<?php } ?>
</tr>
</table>
</div>
<?php if($action=='add' || $action=='edit') { ?>
<?php echo load('page.js');?>
<iframe src="" name="send" id="send" style="display:none;"></iframe>
<form method="post" action="?" id="dform" target="send" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<table cellpadding="10" cellspacing="1" class="tb">
<?php if($status==1 && $action=='edit' && $note) { ?>
<tr>
<td class="tl">未通过原因</td>
<td class="tr f_blue"><?php echo $note;?></td>
</tr>
<?php } ?>
<tr>
<td class="tl"><span class="f_red">*</span> 所属分类</td>
<td class="tr"><?php echo category_select('post[catid]', '选择分类', $catid, $moduleid);?> <span id="dcatid" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> <?php echo $MOD['name'];?>标题</td>
<td class="tr"><input name="post[title]" type="text" id="title" size="50" value="<?php echo $title;?>"/> <span id="dtitle" class="f_red"></span></td>
</tr>
<?php if($action=='add' && $could_color) { ?>
<tr>
<td class="tl">标题颜色</td>
<td class="tr">
<?php echo dstyle('color');?>&nbsp;
设置信息标题颜色需消费 <strong class="f_red"><?php echo $MOD['credit_color'];?></strong> <?php echo $DT['credit_name'];?>
</td>
</tr>
<?php } ?>
<tr>
<td class="tl"><span class="f_red">*</span> 标题图片</td>
<td class="tr"><input name="post[thumb]" id="thumb" type="text" size="60" value="<?php echo $thumb;?>" readonly/>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dthumb(<?php echo $moduleid;?>,<?php echo $MOD['thumb_width'];?>,<?php echo $MOD['thumb_height'];?>, Dd('thumb').value, true);" class="t">[上传]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="_preview(Dd('thumb').value);" class="t">[预览]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dd('thumb').value='';" class="t">[删除]</a> <span id="dthumb" class="f_red"></span></td>
</tr>
<?php if($MOD['swfu']==1 && $MG['upload'] && check_group($_groupid, $MOD['group_upload'])) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> <?php echo $MOD['name'];?>地址</td>
<td class="tr"><div style="float:left;"><input name="post[video]" id="video" type="text" size="60" value="<?php echo $video;?>" onblur="UpdateURL();"/>&nbsp;&nbsp;</div><div style="width:34px;height:20px;float:left;"><span id="spanButtonPlaceHolder"></span></div><table cellspacing="0" style="display:none;">
<tr>
<td>Files Queued:</td>
<td id="tdFilesQueued"></td>
</tr>
<tr>
<td>Files Uploaded:</td>
<td id="tdFilesUploaded"></td>
</tr>
<tr>
<td>Errors:</td>
<td id="tdErrors"></td>
</tr>
<tr>
<td>Current Speed:</td>
<td id="tdCurrentSpeed"></td>
</tr>
<tr>
<td>Average Speed:</td>
<td id="tdAverageSpeed"></td>
</tr>
<tr>
<td>Moving Average Speed:</td>
<td id="tdMovingAverageSpeed"></td>
</tr>
<tr>
<td>Time Remaining</td>
<td id="tdTimeRemaining"></td>
</tr>
<tr>
<td>Time Elapsed</td>
<td id="tdTimeElapsed"></td>
</tr>
<tr>
<td>Size Uploaded</td>
<td id="tdSizeUploaded"></td>
</tr>
<tr>
<td>Progress Event Count</td>
<td id="tdProgressEventCount"></td>
</tr>
</table>
<div style="float:left;">&nbsp;&nbsp;<span onclick="vs();" class="jt">[预览]</span>&nbsp;&nbsp;<span onclick="vh();Dd('video').value='';" class="jt">[删除]</span>&nbsp;&nbsp; 
<span class="f_gray">进度：<span id="tdPercentUploaded">0%</span></span> <span id="dvideo" class="f_red"></span></div>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.js"></script>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.queue.js"></script>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.speed.js"></script>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/handlers_video.js"></script>
<script type="text/javascript">
var swfu;
/* window.onload = function() { */
var settings = {
flash_url : "<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.swf",
upload_url: UPPath,
post_params: {"moduleid": "<?php echo $moduleid;?>", "from": "file", "width": "100", "height": "100", "swf_userid": "<?php echo $_userid;?>", "swf_username": "<?php echo $_username;?>", "swf_groupid": "<?php echo $_groupid;?>", "swf_company": "<?php echo $_company;?>", "swf_auth": "<?php echo md5($_userid.$_username.$_groupid.$_company.DT_KEY.$DT_IP);?>", "swfupload": "1"},
file_size_limit : "1000 MB",
/* file_types : "*.*", */
file_types : "*.<?php echo str_replace('|', ';*.', $MOD['upload']);?>",
file_types_description : "视频文件",
/* /file_upload_limit : 100, */
file_upload_limit : 10,
file_queue_limit : 0,
debug: false,
button_image_url: "<?php echo $MODULE['1']['linkurl'];?>api/swfupload/upload2.png",
button_width: "34",
button_height: "20",
button_placeholder_id: "spanButtonPlaceHolder",

moving_average_history_size: 40,

file_queued_handler : fileQueued,
file_dialog_complete_handler: fileDialogComplete,
upload_start_handler : uploadStart,
upload_progress_handler : uploadProgress,
upload_success_handler : uploadSuccess,
upload_complete_handler : uploadComplete,

custom_settings : {
tdFilesQueued : document.getElementById("tdFilesQueued"),
tdFilesUploaded : document.getElementById("tdFilesUploaded"),
tdErrors : document.getElementById("tdErrors"),
tdCurrentSpeed : document.getElementById("tdCurrentSpeed"),
tdAverageSpeed : document.getElementById("tdAverageSpeed"),
tdMovingAverageSpeed : document.getElementById("tdMovingAverageSpeed"),
tdTimeRemaining : document.getElementById("tdTimeRemaining"),
tdTimeElapsed : document.getElementById("tdTimeElapsed"),
tdPercentUploaded : document.getElementById("tdPercentUploaded"),
tdSizeUploaded : document.getElementById("tdSizeUploaded"),
tdProgressEventCount : document.getElementById("tdProgressEventCount")
}
};
swfu = new SWFUpload(settings);
 /* }; */
</script>
</td>
</tr>
<?php } else { ?>
<tr>
<td class="tl"><span class="f_red">*</span> <?php echo $MOD['name'];?>地址</td>
<td class="tr"><input name="post[video]" type="text" id="video" size="60" value="<?php echo $video;?>" onblur="UpdateURL();"/><?php if($MG['upload'] && check_group($_groupid, $MOD['group_upload'])) { ?>&nbsp;&nbsp;<span onclick="Dfile(<?php echo $moduleid;?>, Dd('video').value, 'video', '<?php echo $MOD['upload'];?>');" class="jt">[上传]</span><?php } ?>
&nbsp;&nbsp;<span onclick="vs();" class="jt">[预览]</span>&nbsp;&nbsp;<span onclick="Dd('video').value='';" class="jt">[删除]</span> <span id="dvideo" class="f_red"></span>
</td>
</tr>
<?php } ?>
<tr>
<td class="tl"><span class="f_red">*</span> <?php echo $MOD['name'];?>宽度</td>
<td class="tr"><input name="post[width]" id="width" type="text" size="5" value="<?php echo $width;?>"/> px&nbsp;&nbsp;&nbsp;高度 <input name="post[height]" id="height" type="text" size="5" value="<?php echo $height;?>"/> px <span id="dsize" class="f_red"></span></td>
</tr>
<tr id="v_player" style="display:none;">
<td class="tl">视频预览</td>
<td><div id="v_play"></div><div style="padding-top:10px;"><a href="javascript:" onclick="vh();" class="t">[关闭预览]</a></div></td>
</tr>
<?php if($CP) { ?>
<script type="text/javascript">
var property_catid = <?php echo $catid;?>;
var property_itemid = <?php echo $itemid;?>;
var property_admin = 0;
</script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/property.js"></script>
<tbody id="load_property" style="display:none;">
<tr><td></td><td></td></tr>
</tbody>
<?php } ?>
<?php if($FD) { ?><?php echo fields_html('<td class="tl">', '<td class="tr">', $item);?><?php } ?>
<tr>
<td class="tl"><?php echo $MOD['name'];?>说明</td>
<td class="tr"><textarea name="post[content]" id="content" class="dsn"><?php echo $content;?></textarea><?php echo deditor($moduleid, 'content', $group_editor, '100%', 350);?></td>
</tr>
<?php if($fee_add) { ?>
<tr>
<td class="tl">发布此信息需消费</td>
<td class="tr"><span class="f_b f_red"><?php echo $fee_add;?></span> <?php echo $fee_unit;?></td>
</tr>
<?php if($fee_currency == 'money') { ?>
<tr>
<td class="tl"><?php echo $DT['money_name'];?>余额</td>
<td class="tr"><span class="f_blue f_b"><?php echo $_money;?><?php echo $fee_unit;?></span> <a href="charge.php?action=pay" target="_blank" class="t">[充值]</a></td>
</tr>
<?php } else { ?>
<tr>
<td class="tl"><?php echo $DT['credit_name'];?>余额</td>
<td class="tr"><span class="f_blue f_b"><?php echo $_credit;?><?php echo $fee_unit;?></span> <a href="credit.php?action=buy" target="_blank" class="t">[购买]</a></td>
</tr>
<?php } ?>
<?php } ?>
<?php if($need_password) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 支付密码</td>
<td class="tr"><?php include template('password', 'chip');?> <span id="dpassword" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_question) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证问题</td>
<td class="tr"><?php include template('question', 'chip');?> <span id="danswer" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_captcha) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证码</td>
<td class="tr"><?php include template('captcha', 'chip');?> <span id="dcaptcha" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($action=='add') { ?>
<tr style="display:none;" id="weibo_sync">
<td class="tl">同步主题</td>
<td class="tr" id="weibo_show"></td>
</tr>
<?php } ?>
<tr>
<td class="tl">&nbsp;</td>
<td class="tr" height="50"><input type="submit" name="submit" value=" 提 交 " class="btn_g"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/></td>
</tr>
</table>
</form>
<?php echo load('clear.js');?>
<?php if($action=='add') { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('<?php echo $action;?>');</script>
<?php } else { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="status" value="<?php echo $status;?>"/>
&nbsp;<?php echo category_select('catid', '所有分类', $catid, $moduleid);?>&nbsp;
<input type="text" size="50" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&status=<?php echo $status;?>');"/>
</form>
</div>
<div class="ls">
<form method="post">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="20"><input type="checkbox" onclick="checkall(this.form);"/></th>
<th width="90">图 片</th>
<th>标 题</th>
<th>分 类</th>
<th><?php if($timetype=='add') { ?>添加<?php } else { ?>更新<?php } ?>
时间</th>
<?php if($MOD['hits']) { ?><th>播放</th><?php } ?>
<th width="50">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>"/></td>
<td><a href="javascript:_preview('<?php echo $v['thumb'];?>');"><img src="<?php echo $v['thumb'];?>" width="50" class="thumb"/></a></td>
<td align="left" title="<?php echo $v['alt'];?>">&nbsp;<?php if($v['status']==3) { ?><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php } else { ?><a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>" class="t"><?php } ?>
<?php echo $v['title'];?></a><?php if($v['status']==1 && $v['note']) { ?> <a href="javascript:" onclick="alert('<?php echo $v['note'];?>');"><img src="image/why.gif" title="未通过原因"/></a><?php } ?>
</td>
<td>&nbsp;&nbsp;<a href="<?php echo $v['caturl'];?>" target="_blank"><?php echo $v['catname'];?></a>&nbsp;&nbsp;</td>
<?php if($timetype=='add') { ?>
<td class="f_gray" title="更新时间 <?php echo $v['editdate'];?>"><?php echo $v['adddate'];?></td>
<?php } else { ?>
<td class="f_gray" title="添加时间 <?php echo $v['adddate'];?>"><?php echo $v['editdate'];?></td>
<?php } ?>
<?php if($MOD['hits']) { ?><td class="f_gray"><?php echo $v['hits'];?></td><?php } ?>
<td>
<a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/edit.png" title="修改" alt=""/></a>
<?php if($MG['delete']) { ?>&nbsp;<a href="?mid=<?php echo $mid;?>&action=delete&itemid=<?php echo $v['itemid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a><?php } ?>
</td>
</tr>
<?php } } ?>
</table>
</div>
<?php if($MG['delete']) { ?>
<div class="btns">
<input type="submit" value=" 删除选中 " class="btn" onclick="if(confirm('确定要删除选中<?php echo $MOD['name'];?>吗？')){this.form.action='?mid=<?php echo $mid;?>&status=<?php echo $status;?>&action=delete'}else{return false;}"/>
</div>
<?php } ?>
</form>
<?php if($mod_limit || (!$MG['fee_mode'] && $MOD['fee_add'])) { ?>
<div class="limit">
<?php if($mod_limit) { ?>
总共可发 <span class="f_b f_red"><?php echo $mod_limit;?></span> 条&nbsp;&nbsp;&nbsp;
当前已发 <span class="f_b"><?php echo $limit_used;?></span> 条&nbsp;&nbsp;&nbsp;
还可以发 <span class="f_b f_blue"><?php echo $limit_free;?></span> 条&nbsp;&nbsp;&nbsp;
<?php } ?>
<?php if(!$MG['fee_mode'] && $MOD['fee_add']) { ?>
发布信息收费 <span class="f_b f_red"><?php echo $MOD['fee_add'];?></span> <?php if($MOD['fee_currency'] == 'money') { ?><?php echo $DT['money_unit'];?><?php } else { ?><?php echo $DT['credit_unit'];?><?php } ?>
/条&nbsp;&nbsp;&nbsp;
可免费发布 <span class="f_b"><?php if($mod_free_limit<0) { ?>无限<?php } else { ?><?php echo $mod_free_limit;?><?php } ?>
</span> 条&nbsp;&nbsp;&nbsp;
<?php } ?>
</div>
<?php } ?>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php if($action == 'add' || $action == 'edit') { ?>
<?php echo load('player.js');?>
<?php echo load('url2video.js');?>
<script type="text/javascript">
function check() {
var l;
var f;
f = 'catid_1';
if(Dd(f).value == 0) {
Dmsg('请选择所属分类', 'catid', 1);
return false;
}
f = 'title';
l = Dd(f).value.length;
if(l < 5 || l > 30) {
Dmsg('标题应为5-30字，当前已输入'+l+'字', f);
return false;
}
f = 'thumb';
l = Dd(f).value.length;
if(l < 10) {
Dmsg('请上传标题图片', f);
return false;
}
UpdateURL();
f = 'video';
l = Dd(f).value.length;
if(l < 10) {
Dmsg('请填写视频地址', f);
return false;
}
if(!Dd('width').value) {
Dmsg('请填写视频宽度', 'size');
return false;
}
if(!Dd('height').value) {
Dmsg('请填写视频高度', 'size');
return false;
}
<?php if($FD) { ?><?php echo fields_js();?><?php } ?>
<?php if($CP) { ?><?php echo property_js();?><?php } ?>
<?php if($need_password) { ?>
f = 'password';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
<?php } ?>
<?php if($need_question) { ?>
f = 'answer';
if($('#c'+f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证问题', f);
return false;
}
<?php } ?>
<?php if($need_captcha) { ?>
f = 'captcha';
if($('#c'+f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证码', f);
return false;
}
<?php } ?>
return true;
}
function vs() {
UpdateURL();
if(Dd('video').value.length > 5) {
Ds('v_player');
Inner('v_play', player(Dd('video').value,Dd('width').value,Dd('height').value,1));
} else {
Dmsg('请填写视频地址', 'video');
vh();
}
}
function vh() {Inner('v_play', '');Dh('v_player');}
function UpdateURL() {
var str = url2video(Dd('video').value);
if(str) Dd('video').value = str;
}
var destoon_oauth = '<?php echo $EXT['oauth'];?>';
</script>
<?php } ?>
<?php if($action=='add' && strlen($EXT['oauth']) > 1) { ?><?php echo load('weibo.js');?><?php } ?>
<?php include template('footer', 'member');?>