<?php  
    if(isset($_POST['submit'])){
        $ghi_chu=$_POST['ghi_chu'];
        $thanh_tien=$_POST['thanh_tien'];

        if (isset($ghi_chu) && isset($thanh_tien)) {
            $sql="INSERT INTO chitietdonhang(ghi_chu,thanh_tien) VALUES('$ghi_chu','$thanh_tien')";
            $query= mysqli_query($conn , $sql);
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
        <h1 class="page-header">Thêm đơn hàng mới</h1>
    </div>
</div><!--/.row-->


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Thêm đơn hàng mới</div>
            <div class="panel-body">

                <form method="post" enctype="multipart/form-data" role="form">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ghi chú</label>
                            <input type="text" class="form-control"  name="ghi_chu" required="">
                        </div>
                        <div class="form-group">
                            <label>Thành tiền</label>
                            <input type="text" class="form-control" name="thanh_tien" required="">
                        </div>

                        

                    </div>

                    <button type="submit" class="btn btn-primary" name="submit">Thêm mới</button>
                    <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                </form>
            </div>
        </div>
    </div><!-- /.col-->
</div><!-- /.row -->
