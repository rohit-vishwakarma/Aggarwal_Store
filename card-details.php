<?php
include('admin/config.php');
session_start();
$categoryname=strtolower($_GET['CATEGORYNAME']);
$id=$_GET['ID'];
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title><?php echo $categoryname; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" type="text/css" href="mycss/file.css"> 
    <link rel="stylesheet" type="text/css" href="admin/navbarcss.css">
    <script src="myjquery/jqueryfirst.js" type="text/javascript"></script>
    <script src="myjquery/secondproper.js" type="text/javascript"></script>
    <script src="myjquery/thirdbootstrap.js" type="text/javascript"></script>
    <link rel="icon" href="images/logo.jpg">
    
<style>
	  
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
}
.container {
	margin-top: 90px;
}
.productname {
	font-size: 25px;
	font-weight: 450;
}
.card-image {
	max-height: 400px;
}
.text {
	background: -webkit-linear-gradient(right, #0c3, #9900cc, #56c5e4, #9f01ea);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
	text-transform: uppercase;
}
table {
	width: 100%;
}

tr {
	border: 2px solid #0c3;
	text-align: center;
	font-size: 20px;
}
th {
	padding: 15px;
}
td {
	padding: 20px;
	text-align: center;
}
.btn {
	font-size: 20px;
	font-weight: 500;
}
.btn:hover {
	font-size: 25px;
	font-weight: 500;
}
.payment {
	display: inline-block;
}
.price {
	color: #0c3;
	font-size: 33px;
}
.discount {
	text-decoration: line-through;
	font-size: 18px;
}

 @media (max-width: 992px) {
	#card-name {
	    order: 1;
    }
	#card-image {
		order: 2;
	}
	#after-card {
		order: 3;
	}
}
</style>
  </head>
  <body>
 <!-- starting of navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <img class="navbar-brand" src="images/logo.jpg" alt="logo" style="width:7vh; height:7svh">
  <h4 class="navbar-brand" style="margin-top:6px;color:#0c3; font-size: 33px">
  Aggrawal's
  </h4>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
	  <?php 
          if(isset($_SESSION['EMAIL']))  {
      ?>
	  <li class="nav-item mobile">
	    <i class="fa fa-user fa-2x"></i>
	    <p class="text">Welcome <?php echo $_SESSION['NAME']; ?></p>
		<button class="btn btn-info" onclick="window.location.href='setting.php'">Settings</button>
		<button class="btn btn-danger" onclick="window.location.href='logout.php'">Logout</button>
	  </li>
	  <?php } ?>
	   
      <li class="nav-item">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
		 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		   <a class="dropdown-item product-dropdown" href="#">New Links</a>
		   <a class="dropdown-item product-dropdown" href="#">New Links 2</a>
		 </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="feedback.php">Feedback</a>
      </li>
	<?php 
          if(!isset($_SESSION['EMAIL']))  {
    ?>	
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account
        </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="register.php">Register</a>
          <a class="dropdown-item" href="login.php">Login</a>
        </div>
       </li>	
    <?php } ?>

    <?php 
          if(isset($_SESSION['EMAIL']))  {
      ?>
	   <li class="nav-item dropdown computer">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account
        </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <i class="fa d-flex fa-user fa-3x justify-content-center" aria-hidden="true"></i>
			<hr>
	        <p class="text">Welcome <?php echo $_SESSION['NAME']; ?></p>
			<hr>
		    <button class="btn btn-info" onclick="window.location.href='setting.php'">Settings</button>
		    <button class="btn btn-danger" onclick="window.location.href='logout.php'" style="float:right">Logout</button>
          </div>
       </li>	
	<?php } ?>	
      </ul>
  </div>
</nav>
<!--ending of navbar -->

<!-- card starts here -->
 <div class="container">
    <div class="row">
      <?php 
          $sql = "SELECT * FROM $categoryname WHERE ID={$id}";
	      $result = mysqli_query($conn,$sql) or die("categoryname select query not running");
	      if(mysqli_num_rows($result)>0) {
		     $row = mysqli_fetch_assoc($result); 		
     ?>
     <div id="card-name" class="col-lg-12 col-md-12 col-sm-12 col-12">
	    <p class="productname"><?php echo $row['TITLE'];?></p>
	 </div>
	 <div id="after-card" class="col-lg-6 col-md-6 col-sm-6 col-12">
	    <table class="table table-light table-hover">
		  <thead>
		     <tr>
			    <h3 style="color:#0c3">Description</h3>
			 </tr>
		  </thead>
		  <tbody>
		  <?php 
          $sql1 = "SELECT * FROM $categoryname WHERE ID={$id}";
	      $result1 = mysqli_query($conn,$sql1) or die("categoryname second select query not running");
	      if(mysqli_num_rows($result1)>0) {
		    while($row1 = mysqli_fetch_assoc($result1)) { 				
          ?>
		     <tr>
			   <td>Color</td>
			   <td style="color:#0c3">-</td>
			   <td><?php echo $row1['COLOR'];?></td>
			 </tr>
			 <tr>
			   <td>Net. Quantity</td>
			   <td style="color:#0c3">-</td>
			   <td><?php echo $row1['QUANTITY'];?></td>
			 </tr>
			 <tr>
			   <td>Brand</td>
			   <td style="color:#0c3">-</td>
			   <td><?php echo $row1['BRAND'];?></td>
			 </tr>
			 <tr>
			   <td>Delivery Charge</td>
			   <td style="color:#0c3">-</td>
			   <td>&#8377;<?php echo $row1['DELIVERY'];?></td>
			 </tr>
			 <tr>
			   <td>Returnable</td>
			   <td style="color:#0c3">-</td>
			   <td><?php echo $row1['RETURNABLE'];?></td>
			 </tr>
		  </tbody>
		</table>
		  <?php } } ?>
		<br>
		<div align="center">
		<p class="payment price">&#8377;<?php echo $row['PRICE'];?>/-</p>
		<p class="payment discount"><?php echo $row['DISCOUNT'];?></p>
		</div>
	 </div>
	 <div id="card-image" class="col-lg-6 col-md-6 col-sm-6 col-12">
	    <img class="img-fluid card-image" src="admin/images/product/<?php echo $row['IMAGE'];?>">
	 </div>
	 
	  <?php } ?>
	 </div> <!-- row div -->
	<div align="center" style="padding-top: 35px;">
	<a href="#" class="btn btn-success">Buy Now!!</a>
    </div>
 </div> <!-- container div -->
<br>
  
 <?php include('footer.php');?>  

  </body>
</html>
