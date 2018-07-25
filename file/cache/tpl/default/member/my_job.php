<?php defined('IN_DESTOON') or exit('Access Denied');?><?php if($action == 'resume_invite') { ?>
<!doctype html>
<html>
<head>
<meta charset="<?php echo DT_CHARSET;?>"/>
<title>Loading...</title>
<meta name="generator" content="DESTOON B2B - www.destoon.com"/>
</head>
<body onload="document.getElementById('invite').submit();">
<form action="message.php" method="post" id="invite">
<input type="hidden" name="action" value="send" />
<input type="hidden" name="touser" value="<?php echo $apply['apply_username'];?>" />
<input type="hidden" name="title" value="<?php echo $title;?>" />
<textarea name="content" style="display:none;">
<?php echo $resume['truename'];?>，您好：<br/><br/>
本公司已经收到您向 <a href="<?php echo $joburl;?>" target="_blank"><?php echo $job['title'];?></a> 投递的简历，现邀请您面试。<br/><br/>
联系人：<?php echo $job['truename'];?><br/>
电话：<?php echo $job['telephone'];?><br/>
邮件：<?php echo $job['email'];?><br/>
<?php if($job['mobile']) { ?>手机：<?php echo $job['mobile'];?><br/><?php } ?>
<?php if($job['address']) { ?>地址：<?php echo $job['address'];?><br/><?php } ?>
<?php if($job['qq']) { ?>QQ：<?php echo $job['qq'];?><br/><?php } ?>
<?php if($job['wx']) { ?>微信：<?php echo $job['wx'];?><br/><?php } ?>
</textarea>
</form>
</body>
</html>
<?php } else { ?>
<?php include template('header', 'member');?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="add"><a href="?mid=<?php echo $mid;?>&action=add"><span>添加招聘</span></a></td>
<?php if($_userid) { ?>
<td class="tab" id="s3"><a href="?mid=<?php echo $mid;?>"><span>已发布(<?php echo $nums['3'];?>)</span></a></td>
<td class="tab" id="s2"><a href="?mid=<?php echo $mid;?>&status=2"><span>审核中(<?php echo $nums['2'];?>)</span></a></td>
<td class="tab" id="s1"><a href="?mid=<?php echo $mid;?>&status=1"><span>未通过(<?php echo $nums['1'];?>)</span></a></td>
<td class="tab" id="s4"><a href="?mid=<?php echo $mid;?>&status=4"><span>已过期(<?php echo $nums['4'];?>)</span></a></td>
<td class="tab" id="talent"><a href="?mid=<?php echo $mid;?>&action=talent"><span>人才库(<?php echo $nums['talent'];?>)</span></a></td>
<td class="tab" id="resume"><a href="?mid=<?php echo $mid;?>&action=resume"><span>收到简历(<?php echo $nums['resume'];?>)</span></a></td>
<td class="tab" id="resume_search"><a href="?mid=<?php echo $mid;?>&action=resume_search"><span>简历搜索</span></a></td>
<?php } ?>
</tr>
</table>
</div>
<?php if($action=='add' || $action=='edit') { ?>
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
<td class="tl"><span class="f_red">*</span> 信息标题</td>
<td class="tr f_gray"><input name="post[title]" type="text" id="title" size="50" value="<?php echo $title;?>"/> <span id="dtitle" class="f_red"></span></td>
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
<td class="tl"><span class="f_red">*</span>行业/职位</td>
<td class="tr"><div id="catesch"></div><?php echo ajax_category_select('post[catid]', '选择分类', $catid, $moduleid);?><?php if($DT['schcate_limit']) { ?> <a href="javascript:schcate(<?php echo $moduleid;?>);" class="t">搜索分类</a><?php } ?>
 <span id="dcatid" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">招聘部门 </td>
<td class="tr"><input name="post[department]" type="text" id="department" size="30"  value="<?php echo $department;?>"/> <span id="ddepartment" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 招聘人数</td>
<td class="tr"><input name="post[total]" type="text" id="total" size="6" value="<?php echo $total;?>"/> 人 (填0为若干)</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 待遇水平</td>
<td class="tr"><input name="post[minsalary]" type="text" id="minsalary" size="6" value="<?php echo $minsalary;?>"/> 至 <input name="post[maxsalary]" type="text" id="maxsalary" size="6" value="<?php echo $maxsalary;?>"/> <?php echo $DT['money_unit'];?>/月 (填0为面议)</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 工作地区</td>
<td class="tr"><?php echo ajax_area_select('post[areaid]', '请选择', $areaid);?> <span id="dareaid" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 工作性质</td>
<td class="tr">
<?php if(is_array($TYPE)) { foreach($TYPE as $k => $v) { ?>
<input type="radio" name="post[type]" id="type_<?php echo $k;?>" value="<?php echo $k;?>"<?php if($k == $type) { ?> checked<?php } ?>
/><label for="type_<?php echo $k;?>"> <?php echo $v;?></label> 
<?php } } ?>
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 性别要求</td>
<td class="tr">
<?php if(is_array($GENDER)) { foreach($GENDER as $k => $v) { ?>
<input type="radio" name="post[gender]" id="gender_<?php echo $k;?>" value="<?php echo $k;?>"<?php if($k == $gender) { ?> checked<?php } ?>
/><label for="gender_<?php echo $k;?>"> <?php echo $v;?></label> 
<?php } } ?>
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 婚姻要求</td>
<td class="tr">
<?php if(is_array($MARRIAGE)) { foreach($MARRIAGE as $k => $v) { ?>
<input type="radio" name="post[marriage]" id="marriage_<?php echo $k;?>" value="<?php echo $k;?>"<?php if($k == $marriage) { ?> checked<?php } ?>
/><label for="marriage_<?php echo $k;?>"> <?php echo $v;?></label> 
<?php } } ?>
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 学历要求</td>
<td class="tr">
<?php if(is_array($EDUCATION)) { foreach($EDUCATION as $k => $v) { ?>
<input type="radio" name="post[education]" id="education_<?php echo $k;?>" value="<?php echo $k;?>"<?php if($k == $education) { ?> checked<?php } ?>
/><label for="education_<?php echo $k;?>"> <?php echo $v;?></label> 
<?php } } ?>
&nbsp;&nbsp;(以上)
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 年龄要求</td>
<td class="tr"><input name="post[minage]" type="text" id="minage" size="5" value="<?php echo $minage;?>"/> 至 <input name="post[maxage]" type="text" id="maxage" size="5" value="<?php echo $maxage;?>"/> 周岁 (填0为不限)</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 工作经验</td>
<td class="tr">
<select name="post[experience]" id="experience">
<option value="0">不限</option>
<?php for($i = 1; $i < 21; $i++) { ?>
<option value="<?php echo $i;?>"<?php if($i == $experience) { ?> selected<?php } ?>
><?php echo $i;?></option>
<?php } ?>
</select> &nbsp;&nbsp;年以上</td>
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
<td class="tl"><span class="f_red">*</span> 详细说明</td>
<td class="tr f_gray"><textarea name="post[content]" id="content" class="dsn"><?php echo $content;?></textarea>
<?php echo deditor($moduleid, 'content', $group_editor, '100%', 350);?><br/><span id="dcontent" class="f_red"></span>
</td>
</tr>
<tr>
<td class="tl">过期时间</td>
<td class="tr f_gray"><?php echo dcalendar('post[totime]', $totime, '-', 1);?>&nbsp;
<select onchange="Dd('posttotime').value=this.value;">
<option value="">快捷选择</option>
<option value="">长期有效</option>
<option value="<?php echo timetodate($DT_TIME+86400*3, 3);?> 23:59:59">3天</option>
<option value="<?php echo timetodate($DT_TIME+86400*7, 3);?> 23:59:59">一周</option>
<option value="<?php echo timetodate($DT_TIME+86400*15, 3);?> 23:59:59">半月</option>
<option value="<?php echo timetodate($DT_TIME+86400*30, 3);?> 23:59:59">一月</option>
<option value="<?php echo timetodate($DT_TIME+86400*182, 3);?> 23:59:59">半年</option>
<option value="<?php echo timetodate($DT_TIME+86400*365, 3);?> 23:59:59">一年</option>
</select>&nbsp;
不选表示长期有效
<span id="dposttotime" class="f_red"></span></td>
</tr>
<tr<?php if($_userid) { ?> style="display:none;"<?php } ?>
>
<td class="tl"><span class="f_red">*</span> 公司名称</td>
<td class="tr"><input name="post[company]" type="text" id="company" size="50" value="<?php echo $company;?>" /> 个人请填 姓名(个人) 例如：张三(个人)<br/><span id="dcompany" class="f_red"></span> </td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 联系人</td>
<td class="tr"><input name="post[truename]" type="text" id="truename" size="20" value="<?php echo $truename;?>" /> <br/><span id="dtruename" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 性别</td>
<td class="tr">
<input type="radio" name="post[sex]" value="1"<?php if($sex == 1) { ?> checked="checked"<?php } ?>
/> 先生
<input type="radio" name="post[sex]" value="2"<?php if($sex == 2) { ?> checked="checked"<?php } ?>
/> 女士
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 联系电话</td>
<td class="tr"><input name="post[telephone]" id="telephone" type="text" size="30" value="<?php echo $telephone;?>" /> <span id="dtelephone" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 电子邮件</td>
<td class="tr"><input name="post[email]" id="email" type="text" size="30" value="<?php echo $email;?>" /> <span id="demail" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">联系手机</td>
<td class="tr"><input name="post[mobile]" id="mobile" type="text" size="30" value="<?php echo $mobile;?>" /> <span id="dmobile" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">联系地址</td>
<td class="tr"><input name="post[address]" id="address" type="text" size="60"  value="<?php echo $address;?>"/></td>
</tr>
<?php if($DT['im_qq']) { ?>
<tr>
<td class="tl">QQ</td>
<td class="tr"><input name="post[qq]" id="qq" type="text" size="30" value="<?php echo $qq;?>"/></td>
</tr>
<?php } ?>
<?php if($DT['im_wx']) { ?>
<tr>
<td class="tl">微信</td>
<td class="tr"><input name="post[wx]" id="wx" type="text" size="30" value="<?php echo $wx;?>"/></td>
</tr>
<?php } ?>
<?php if($DT['im_ali']) { ?>
<tr>
<td class="tl">阿里旺旺</td>
<td class="tr"><input name="post[ali]" id="ali" type="text" size="30" value="<?php echo $ali;?>"/></td>
</tr>
<?php } ?>
<?php if($DT['im_skype']) { ?>
<tr>
<td class="tl">Skype</td>
<td class="tr"><input name="post[skype]" id="skype" type="text" size="30" value="<?php echo $skype;?>"/></td>
</tr>
<?php } ?>
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
<?php echo load('guest.js');?>
<?php if($action=='add') { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('<?php echo $action;?>');</script>
<?php } else { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php } else if($action == 'resume_search') { ?>
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<div class="tt">
关键词：<input type="text" size="30" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
行业/职位：<?php echo $category_select;?>&nbsp;
地区：<?php echo $area_select;?>&nbsp;
</div>
<div class="tt">
更新日期：<?php echo dcalendar('fromdate', $fromdate, '');?> 至 <?php echo dcalendar('todate', $todate, '');?>&nbsp;
期望薪资：<input type="text" size="6" name="minsalary" value="<?php echo $minsalary;?>"/> ~ <input type="text" size="6" name="maxsalary" value="<?php echo $maxsalary;?>"/>&nbsp;
<input type="checkbox" name="level" id="level" value="1"<?php if($level) { ?> checked<?php } ?>
/> 推荐&nbsp;
<input type="checkbox" name="thumb" id="thumb" value="1"<?php if($thumb) { ?> checked<?php } ?>
/> 有照片&nbsp;
</div>
<div class="tt">
<select name="type">
<?php if(is_array($TYPE)) { foreach($TYPE as $k => $v) { ?>
<option value="<?php echo $k;?>"<?php if($type==$k) { ?> selected<?php } ?>
><?php echo $v;?></option>
<?php } } ?>
</select>&nbsp;
<select name="gender">
<?php if(is_array($GENDER)) { foreach($GENDER as $k => $v) { ?>
<option value="<?php echo $k;?>"<?php if($gender==$k) { ?> selected<?php } ?>
><?php echo $v;?></option>
<?php } } ?>
</select>&nbsp;
<select name="marriage">
<?php if(is_array($MARRIAGE)) { foreach($MARRIAGE as $k => $v) { ?>
<option value="<?php echo $k;?>"<?php if($marriage==$k) { ?> selected<?php } ?>
><?php echo $v;?></option>
<?php } } ?>
</select>&nbsp;
<select name="education">
<?php if(is_array($EDUCATION)) { foreach($EDUCATION as $k => $v) { ?>
<option value="<?php echo $k;?>"<?php if($education==$k) { ?> selected<?php } ?>
><?php echo $v;?></option>
<?php } } ?>
</select>&nbsp;
<select name="experience">
<option value="0"<?php if($experience==0) { ?> selected<?php } ?>
>工作经验</option>
<script type="text/javascript">
for(i=1;i<21;i++) {
document.write('<option value="'+i+'"'+(i==<?php echo $experience;?> ? ' selected' : '')+'>'+i+'年以上</option>');
}
</script>
</select>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=<?php echo $action;?>');"/>
</div>
</form>
<?php if($lists) { ?>
<div class="ls">
<form method="post">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="80">照片</th>
<th>姓名</th>
<th>性别</th>
<th>居住地</th>
<th>期望行业</th>
<th>期望职位</th>
<th>学历</th>
<th>毕业学校</th>
<th>年龄</th>
<th>婚姻</th>
<th>工作经验</th>
<th width="130">更新时间</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><a href="<?php echo $v['linkurl'];?>" target="_blank"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nohead.gif<?php } ?>
" width="60" alt=""/></a></td>
<td><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['truename'];?></a></td>
<td><?php if($v['gender']==1) { ?>男<?php } else { ?>女<?php } ?>
</td>
<td><?php echo area_pos($v['areaid'], '');?></td>
<td><?php echo $CATEGORY[$v['parentid']]['catname'];?></td>
<td><?php echo $CATEGORY[$v['catid']]['catname'];?></td>
<td><?php echo $EDUCATION[$v['education']];?></td>
<td><?php echo $v['school'];?></td>
<td><?php echo $v['age'];?></td>
<td><?php if($v['marriage']==2) { ?>已婚<?php } else { ?>未婚<?php } ?>
</td>
<td><?php if($v['experience']) { ?><?php echo $v['experience'];?>年<?php } else { ?>无<?php } ?>
</td>
<td><?php echo $v['editdate'];?></td>
</tr>
<?php } } ?>
</table>
</div>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } else { ?>
<div style="padding:20px 10px;color:red;">抱歉，未搜索到符合条件的简历，请调整搜索条件再试</div>
<?php } ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('resume_search');</script>
<?php } else if($action == 'resume') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="text" size="50" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=<?php echo $action;?>');"/>
</form>
</div>
<div class="ls">
<form method="post">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>应聘岗位</th>
<th>姓名</th>
<th>性别</th>
<th>学历</th>
<th>年龄</th>
<th>工作经验</th>
<th>应聘时间</th>
<th>状态</th>
<th>面试邀请</th>
<th width="40">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td align="left">&nbsp;&nbsp;<a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a></td>
<td><a href="?mid=<?php echo $mid;?>&action=resume_show&itemid=<?php echo $v['applyid'];?>&resumeid=<?php echo $v['resumeid'];?>&jobid=<?php echo $v['jobid'];?>" target="_blank" class="t" title="点击查看简历"><?php echo $v['truename'];?></a></td>
<td><?php if($v['gender']==1) { ?>男<?php } else { ?>女<?php } ?>
</td>
<td><?php echo $EDUCATION[$v['education']];?></td>
<td><?php echo $v['age'];?></td>
<td><?php if($v['experience']) { ?><?php echo $v['experience'];?>年<?php } else { ?>无<?php } ?>
</td>
<td><?php echo timetodate($v['applytime'], 5);?></td>
<td><a href="?mid=<?php echo $mid;?>&action=resume_show&itemid=<?php echo $v['applyid'];?>&resumeid=<?php echo $v['resumeid'];?>&jobid=<?php echo $v['jobid'];?>" target="_blank" title="点击查看简历"><?php if($v['status'] == 1) { ?><span class="f_red">未查看</span><?php } else { ?>已查看<?php } ?>
</a></td>
<td><a href="?mid=<?php echo $mid;?>&action=resume_invite&itemid=<?php echo $v['applyid'];?>&resumeid=<?php echo $v['resumeid'];?>&jobid=<?php echo $v['jobid'];?>" target="_blank" title="点击邀请面试"><?php if($v['status'] == 3) { ?>已邀请<?php } else { ?><span class="f_red">未邀请</span><?php } ?>
</a></td>
<td><a href="?mid=<?php echo $mid;?>&action=resume_delete&itemid=<?php echo $v['applyid'];?>&resumeid=<?php echo $v['resumeid'];?>&jobid=<?php echo $v['jobid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('resume');</script>
<?php } else if($action == 'talent') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo category_select('catid', '行业/职位', $catid, $moduleid);?>&nbsp;
<input type="text" size="50" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=<?php echo $action;?>');"/>
</form>
</div>
<div class="ls">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>姓名</th>
<th>性别</th>
<th>学历</th>
<th>毕业学校</th>
<th>行业</th>
<th>职位</th>
<th>居住地</th>
<th>添加时间</th>
<th width="40">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td align="left">&nbsp;&nbsp;<a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['truename'];?></a></td>
<td><?php if($v['gender']==1) { ?>男<?php } else { ?>女<?php } ?>
</td>
<td><?php echo $EDUCATION[$v['education']];?></td>
<td><?php echo $v['school'];?></td>
<td><?php echo $CATEGORY[$v['parentid']]['catname'];?></td>
<td><?php echo $CATEGORY[$v['catid']]['catname'];?></td>
<td><?php echo area_pos($v['areaid'], '');?></td>
<td><?php echo timetodate($v['jointime'], 5);?></td>
<td><a href="?mid=<?php echo $mid;?>&action=talent_delete&itemid=<?php echo $v['talentid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('talent');</script>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="status" value="<?php echo $status;?>"/>
<?php echo category_select('catid', '行业/职位', $catid, $moduleid);?>&nbsp;
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
<th>标 题</th>
<th>职 位</th>
<th>人 数</th>
<th><?php if($timetype=='add') { ?>添加<?php } else { ?>更新<?php } ?>
时间</th>
<?php if($MOD['hits']) { ?><th>浏览</th><?php } ?>
<th>简历</th>
<th width="80">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>"/></td>
<td align="left" title="<?php echo $v['alt'];?>">&nbsp;&nbsp;&nbsp;<?php if($v['status']==3) { ?><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php } else { ?><a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>" class="t"><?php } ?>
<?php echo $v['title'];?></a><?php if($v['status']==1 && $v['note']) { ?> <a href="javascript:" onclick="alert('<?php echo $v['note'];?>');"><img src="image/why.gif" title="未通过原因"/></a><?php } ?>
</td>
<td><a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $CATEGORY[$v['catid']]['linkurl'];?>" target="_blank"><?php echo $CATEGORY[$v['catid']]['catname'];?></a></td>
<td><?php echo $v['total'];?>&nbsp;</td>
<?php if($timetype=='add') { ?>
<td class="f_gray" title="更新时间 <?php echo timetodate($v['edittime'], 5);?>"><?php echo timetodate($v['addtime'], 5);?></td>
<?php } else { ?>
<td class="f_gray" title="添加时间 <?php echo timetodate($v['addtime'], 5);?>"><?php echo timetodate($v['edittime'], 5);?></td>
<?php } ?>
<?php if($MOD['hits']) { ?><td class="f_gray"><?php echo $v['hits'];?></td><?php } ?>
<td><a href="?mid=<?php echo $mid;?>&action=resume&itemid=<?php echo $v['itemid'];?>"><span class="<?php if($v['apply']) { ?>f_red<?php } else { ?>f_gray<?php } ?>
"><?php echo $v['apply'];?></span></a></td>
<td>
<a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/edit.png" title="修改" alt=""/></a>&nbsp;
<?php if($MG['copy']) { ?>&nbsp;<a href="?mid=<?php echo $mid;?>&action=add&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/new.png" title="复制信息" alt=""/></a><?php } ?>
<?php if($MG['delete']) { ?>&nbsp;<a href="?mid=<?php echo $mid;?>&action=delete&itemid=<?php echo $v['itemid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a><?php } ?>
</td>
</tr>
<?php } } ?>
</table>
</div>
<?php if($MG['delete'] || $timetype!='add') { ?>
<div class="btns">
<?php if($MG['delete']) { ?>
<span class="f_r"><input type="submit" value=" 删除选中 " class="btn" onclick="if(confirm('确定要删除选中<?php echo $MOD['name'];?>吗？')){this.form.action='?mid=<?php echo $mid;?>&status=<?php echo $status;?>&action=delete'}else{return false;}"/></span>
<?php } ?>
<?php if($timetype!='add') { ?>
<input type="submit" value=" 刷新选中 " class="btn" onclick="this.form.action='?mid=<?php echo $mid;?>&status=<?php echo $status;?>&action=refresh';"/>
<?php if($MOD['credit_refresh']) { ?>
刷新一条信息一次需消费 <strong class="f_red"><?php echo $MOD['credit_refresh'];?></strong> <?php echo $DT['credit_name'];?>，当<?php echo $DT['credit_name'];?>不足时将不可刷新
<?php } ?>
<?php } ?>
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
<script type="text/javascript">
function check() {
var l;
var f;
f = 'title';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写职位名称', f);
return false;
}
f = 'catid_1';
if(Dd(f).value == 0) {
Dmsg('请选择所属类别', 'catid', 1);
return false;
}
f = 'areaid_1';
if(Dd(f).value == 0) {
Dmsg('请选择工作地区', 'areaid', 1);
return false;
}
f = 'content';
l = Dd(f).value.length;
if(l < 15 || l > 50000) {
Dmsg('详细内容应为15-50000字，当前已输入'+l+'字', f);
return false;
}
f = 'truename';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写联系人', f);
return false;
}
f = 'telephone';
l = Dd(f).value.length;
if(l < 7) {
Dmsg('请填写联系电话', f);
return false;
}
f = 'email';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写电子邮件', f);
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
var destoon_oauth = '<?php echo $EXT['oauth'];?>';
</script>
<?php } ?>
<?php if($action=='add' && strlen($EXT['oauth']) > 1) { ?><?php echo load('weibo.js');?><?php } ?>
<?php include template('footer', 'member');?>
<?php } ?>