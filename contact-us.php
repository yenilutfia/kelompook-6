<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['send']))
  {
    $name=$_POST['fullname'];
    $email=$_POST['email'];
    $contactno=$_POST['contactno'];
    $message=$_POST['message'];
    $sql="INSERT INTO  tblcontactusquery(name,EmailId,ContactNumber,Message) VALUES(:name,:email,:contactno,:message)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':name',$name,PDO::PARAM_STR);
    $query->bindParam(':email',$email,PDO::PARAM_STR);
    $query->bindParam(':contactno',$contactno,PDO::PARAM_STR);
    $query->bindParam(':message',$message,PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if($lastInsertId)
    {
        $msg="Pesan Terkirim. Kami Akan Segera Menghubungi Anda";
    }
    else 
    {
        $error="Ada yang tidak beres. Silakan coba lagi";
    }
}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Bicycle Rental | Contact Us</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
 <style>
    .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
</style>
<script>
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }
</script>
</head>
<body>
<!--Page Header-->
<section class="page-header contactus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Kontak Kami</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="index.php">Kembali</a></li>
        <li>Kontak Kami</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Contact-us-->
<section class="contact_us section-padding">
  <div class="container">
    <div  class="row">
      <div class="col-md-6">
        <h3>Isi formulir untuk mengirim pesan langsung kepada kami:</h3>
          <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
        else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
        <div class="contact_form gray-bg">
          <form  method="post">
            <div class="form-group">
              <label class="control-label">Nama Lengkap <span>*</span></label>
              <input type="text" name="fullname" class="form-control white_bg" id="fullname" required>
            </div>
            <div class="form-group">
              <label class="control-label">Alamat Email <span>*</span></label>
              <input type="email" name="email" class="form-control white_bg" id="emailaddress" required>
            </div>
            <div class="form-group">
              <label class="control-label">Nomor handphone <span>*</span></label>
              <input type="text" name="contactno" maxlength="12" class="form-control white_bg" id="phonenumber" oninput="this.value=this.value.replace(/[^0-9]/g,'');" required>
            </div>
            <div class="form-group">
              <label class="control-label">Pesan <span>*</span></label>
              <textarea class="form-control white_bg" name="message" rows="4" required></textarea>
            </div>
            <div class="form-group">
              <button class="btn" type="submit" name="send" type="submit">Kirim Pesan <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6">
        <h3> </h3>
        <div class="contact_detail">
              <?php 
                $pagetype=$_GET['type'];
                $sql = "SELECT Address,EmailId,ContactNo from tblcontactusinfo";
                $query = $dbh -> prepare($sql);
                $query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
                $query->execute();
                $results=$query->fetchAll(PDO::FETCH_OBJ);
                $cnt=1;
                if($query->rowCount() > 0)
                {
                foreach($results as $result)
                { ?>
                  <ul>
                    <li>
                      <div class="icon_wrap"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                      <div class="contact_info_m"><?php   echo htmlentities($result->Address); ?></div>
                    </li>
                    <li>
                      <div class="icon_wrap"><i class="fa fa-phone" aria-hidden="true"></i></div>
                      <div class="contact_info_m"><a href="tel:61-1234-567-90"><?php   echo htmlentities($result->EmailId); ?></a></div>
                    </li>
                    <li>
                      <div class="icon_wrap"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                      <div class="contact_info_m"><a href="mailto:contact@exampleurl.com"><?php   echo htmlentities($result->ContactNo); ?></a></div>
                    </li>
                  </ul>
                <?php }} ?>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /Contact-us--> 
</body>
</html>
