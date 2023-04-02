<?php
include '../db_connect.php';
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM academic_list where id={$_GET['id']}")->fetch_array();
	foreach($qry as $k => $v){
		$$k = $v;
	}
}
?>
<div class="container-fluid">
	<form action="" id="manage-academic">
		<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
		<div id="msg" class="form-group"></div>
		<div class="form-group">
			<label for="year" class="control-label">Year</label>
			<input type="text" class="form-control form-control-sm" name="year" id="year" value="<?php echo isset($year) ? $year : '' ?>" placeholder="(2019-2020)" required>
		</div>
		<div class="form-group">
    <label for="semester" class="control-label">Semester</label>
    <select class="form-control form-control-sm" name="semester" id="semester" required>
        <option value="1" <?php if(isset($semester) && $semester == '1') echo 'selected'; ?>>Semester 1</option>
        <option value="2" <?php if(isset($semester) && $semester == '2') echo 'selected'; ?>>Semester 2</option>
		<option value="Summer" <?php if(isset($semester) && $semester == 'Summer') echo 'selected'; ?>>Summer</option>
    </select>
</div>
           
		<?php if(isset($status)): ?>
		<div class="form-group">
			<label for="" class="control-label">Status</label>
			<select name="status" id="status" class="form-control form-control-sm">
				<option value="0" <?php echo $status == 0 ? "selected" : "" ?>>Pending</option>
				<option value="1" <?php echo $status == 1 ? "selected" : "" ?>>Started</option>
				<option value="2" <?php echo $status == 2 ? "selected" : "" ?>>Closed</option>
			</select>
		</div>
		<a href="index.php?page=faculty_list">To Assign subjects click here!</a>

		<?php endif; ?>
	</form>
</div>
<script>
	$(document).ready(function(){
		$('#manage-academic').submit(function(e){
			e.preventDefault();
			start_load()
			$('#msg').html('')
			$.ajax({
				url:'ajax.php?action=save_academic',
				method:'POST',
				data:$(this).serialize(),
				success:function(resp){
					if(resp == 1){
						alert_toast("Data successfully saved.","success");
						setTimeout(function(){
							location.reload()	
						},1750)
					}else if(resp == 2){
						$('#msg').html('<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> academic Code already exist.</div>')
						end_load()
					}
				}
			})
		})
	})

</script>