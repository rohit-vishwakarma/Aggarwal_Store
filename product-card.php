<?php
include('admin/config.php');
session_start();
$categoryname = $_GET['CATEGORYNAME'];
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title><?php echo $categoryname;?></title>
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
.card {
	border: none;
}
.card-img-top  {
	height: 35vh;
}
.card-img-top:hover  {
	
}
.card-text {
	font-size: 20px;
}
.card-title {
	display: inline-block;
}
.discount {
	font-size: 16px;
	font-width: 200;
}
.price {
	font-size: 25px;
	font-width: 400;
}
.text {
	background: -webkit-linear-gradient(right, #0c3, #9900cc, #56c5e4, #9f01ea);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
	text-transform: uppercase;
}
hr {
	background-color: #0c3;
}

 @media (max-width: 992px) {
	   .heading {
		   text-align: center;
		   padding: 0;
	   }
	   .card-img-top  {
	     height: 30vh;
        }
	   .card {
		   margin-top: 25px;
	   }
	   .card-text {
	       font-size: 16px;
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
        <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
		 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		  <?php 
		    $sql2 = "SELECT * FROM allcategory";
			$result2 = mysqli_query($conn,$sql2) or die("Allcategory select query not running");
			if(mysqli_num_rows($result2)>0) {
				while($row2 = mysqli_fetch_assoc($result2)) {
					$productcategory=$row2['CATEGORYNAME'];
					if($productcategory == $categoryname) {
						$actives = "active";
					}else {
						$actives = " ";
					}
		  ?>
		     
		   <a class="dropdown-item product-dropdown <?php echo $actives;?>" href="product-card.php?CATEGORYNAME=<?php echo $productcategory;?>&ID=<?php echo $row2['ID'];?>"><?php echo $row2['CATEGORYNAME'];?></a>
			<?php } }?>
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
  <div class="container">
  
    <div class="heading">
	   <h1 class="text"><?php echo $categoryname;?></h1>
	</div>
	
	<div class="row">
	  <?php 
    $sql1 = "SELECT * FROM $categoryname";
	$result1 = mysqli_query($conn,$sql1) or die("categoryname select query not running");
	if(mysqli_num_rows($result1)>0) {
		while($row1 = mysqli_fetch_assoc($result1)) {
			
    ?>
	    <div class="col-lg-3 col-md-3 col-6">
	      <div class="card mx-auto">
		    <a href="card-details.php?CATEGORYNAME=<?php echo $categoryname;?>&ID=<?php echo $row1['ID'];?>"><img class="card-img-top" src="admin/images/product/<?php echo $row1['IMAGE'];?>"></a> 
			<div class="card-body bg-light">
			  <p class="card-text"><?php echo $row1['TITLE'];?></p>
			  <p class="card-title discount" style="text-decoration:line-through;"><?php echo $row1['DISCOUNT']."Rs.";?></p>
			  <p class="card-title price text-success"><i><?php echo $row1['PRICE']."Rs.";?></i></p>
			</div>
	      </div>
		</div>
	<?php } }?>
	  </div>  <!-- row div -->
	   
  </div>  <!-- container div -->
  <br>
  <?php include('footer.php');?>
</body>
</html>