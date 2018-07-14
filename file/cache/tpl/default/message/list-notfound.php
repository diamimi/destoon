<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m">
<div class="title bd-b"><?php echo $head_title;?></div>
<div class="content t_c"><br/>
<span id="second" class="f_red f_b"></span> 秒后将自动跳转到<a href="<?php echo $MOD['linkurl'];?>" class="b"><?php echo $MOD['name'];?>首页</a>
</div>
</div>
<script type="text/javascript">
var i = 30;
Dd('second').innerHTML = i;
var interval = window.setInterval(
function() {
if(i==0) {
Go('<?php if($DT_PC) { ?><?php echo $MOD['linkurl'];?><?php } else { ?><?php echo $MOD['mobile'];?><?php } ?>
');
clearInterval(interval);
} else {
Dd('second').innerHTML = i;
i--;
}
}, 
1000);
</script>
<?php include template('footer');?>