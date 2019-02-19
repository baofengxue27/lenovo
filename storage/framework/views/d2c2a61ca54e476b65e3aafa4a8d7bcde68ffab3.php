<form action="" onsubmit="return false;" id="formEdit">
	<div class="form-group">
		<label for="">用户名</label>
		<input type="text" name="name" disabled value="<?php echo e($data->name); ?>" class="form-control" placeholder="请输入原密码" id="">
		<input type="hidden" name="id" value="<?php echo e($data->id); ?>">
	</div>
	<div class="form-group">
		<label for="">密码</label>
		<input type="password" name="pass" value="<?php echo e($data->pass); ?>" class="form-control" placeholder="请输入新密码" id="">
		<div id="passInfo1">

		</div>
	</div>
	<div class="form-group">
		<label for="">确认密码</label>
		<input type="password" name="repass" value="<?php echo e($data->pass); ?>" class="form-control" placeholder="请再次输入密码" id="">
	</div>
	<div class="form-group">
		<label for="">状态</label>
		<br>

		<?php if($data->status): ?>
			<input type="radio" name="status"  value="0" id="">正常
			<input type="radio" name="status" checked value="1" id="">禁用
		<?php else: ?>
			
			<input type="radio" name="status" checked value="0" id="">正常
			<input type="radio" name="status" value="1" id="">禁用
		<?php endif; ?>
		
	</div>
	<div class="form-group pull-right">
		<input type="submit" value="提交" onclick="save()" class="btn btn-success">
		<input type="reset" id="reset1" value="重置" class="btn btn-danger">
	</div>

	<div style="clear:both"></div>
</form>