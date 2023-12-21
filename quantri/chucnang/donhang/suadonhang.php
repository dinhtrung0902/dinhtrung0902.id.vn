<?php  
	$id_donhang=$_GET['id_donhang'];
	$sql = "SELECT * FROM chitietdonhang WHERE id_donhang=$id_donhang";
    $query = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($query);

    if (isset($_POST['submit'])) {
		$ghi_chu=$_POST['ghi_chu'];
		$thanh_tien=$_POST['thanh_tien'];
        
		if (isset($ghi_chu)&&isset($thanh_tien)) {
			$sql="UPDATE chitietdonhang SET ghi_chu='$ghi_chu',thanh_tien='$thanh_tien' WHERE id_donhang=$id_donhang";
            $query = mysqli_query($conn,$sql);
            header('location: quantri.php?page_layout=danhsachdonhang');
		}
	}
?>
<div class="row">
    <ol class="breadcrumb">
        <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active"></li>
    </ol>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Sửa đơn hàng</h1>
    </div>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Sửa đơn hàng</div>
            <div class="panel-body">
                <div class="col-md-12">
                    <form role="form" enctype="multipart/form-data" method="post">
                        <table data-toggle="table">
                            <thead>
                                <tr>                                
		                            <th data-sortable="true">Ghi chú</th>
                                    <th data-sortable="true">Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-checkbox="true">
                                        <input class="form-control" type="text" name="ghi_chu" value="<?php if(isset($_POST['ghi_chu'])){echo $_POST['ghi_chu'];}else{echo $row['ghi_chu'];}?>" required="">
                                    </td>
                                    <td data-checkbox="true">
                                        <input class="form-control" type="text" name="thanh_tien" value="<?php if(isset($_POST['thanh_tien'])){echo $_POST['thanh_tien'];}else{echo $row['thanh_tien'];}?>" required="">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <button type="submit" class="btn btn-primary" name="submit">Sửa</button>
                        <button type="reset" class="btn btn-default">Làm mới</button>
                </div>
                </form>
            </div>
        </div>
    </div><!-- /.col-->
</div><!-- /.row -->