<!DOCTYPE html><?php include_once $_SERVER["DOCUMENT_ROOT"].'/configs.php'; ?>
<html class=""><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="robots" content="noindex"><link rel="canonical" href="http://codepen.io/petertoth/pen/BtGkp">

<!-- 
tích hợp css và js của các thành phần giao diện cũ
ví dụ: alert báo lỗi đăng nhập  cần css và js cũ 

-->
<title><?php echo $web_title;?></title>
<link href="<?php echo web_icon_url(); ?>" rel="icon">

<link href="/ui/src/css/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet/less">
<!-- Đoạn mã này hay gây lỗi 
<link href="/ui/src/js/admin/bootstrap/less/bootstrap.less" rel="stylesheet/less">

 -->
<link href="/ui/src/css/bootstrap/normalize.css" rel="stylesheet/less" id="less:admin-view-javascript-bootstrap-less-bootstrap">
<link href="/ui/src/css/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet">

<script src="/ui/src/js/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="/ui/src/css/bootstrap/3.1.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/ui/src/css/bootstrap/less-1.7.4.min.js"></script>

<style class="cp-pen-styles">@import url(https://fonts.googleapis.com/css2?family=Source+Sans+Pro:200,300,400,700);
@import url(https://fonts.googleapis.com/css2?family=Poppins:wght@300,400,500,600,700,800,900&display=swap);
@import url(https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css);
@import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css);

*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Poppins' , sans-serif;
}
body{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: #23242a;
}
.box{
  position: relative;
  width: 380px;
  height: 420px;
  background: #1c1c1c;
  border-radius: 8px;
  overflow: hidden;
}
.box::before{
content: '';
position: absolute;
top: -50%;
left: -50%;
width: 380px;
height: 420px;
background: linear-gradient(0deg, transparent, #45f3ff, #45f3ff);
transform-origin: bottom right;
animation: animate 6s linear infinite;
}

.box::after{
content: '';
position: absolute;
top: -50%;
left: -50%;
width: 380px;
height: 420px;
background: linear-gradient(0deg, transparent, #45f3ff, #45f3ff);
transform-origin: bottom right;
animation: animate 6s linear infinite;
animation-delay: -3s;
}
@keyframes animate {
  0%{
    transform: rotate(0deg);
  }
  100%{
    transform: rotate(360deg);
  }
}
.form{
  position: absolute;
  inset: 2px;
  border-radius: 8px;
  background: #28292d;
  z-index: 10;
  padding: 50px 40px;
  display: flex;
  flex-direction: column;
}
.form h2{
  color: #45f3ff;
  font-weight: 500;
  text-align: center;
  letter-spacing: 0.1em;
}
.inputBox{
  position: relative;
  width: 300px;
  margin-top: 35px;
}
.inputBox input{
  position: relative;
  width: 100%;
  padding: 20px 10px 10px;
  background: transparent;
  border: none;
  outline: none;
  color: #23242a;
  font-size: 1em;
  letter-spacing: 0.05em;
  z-index: 10;
}
.inputBox span{
  position: absolute;
  left: 0;
  padding: 20px 0px 10px;
  font-size: 1em;
  color: #8f8f8f;
  pointer-events: none;
  letter-spacing: 0.05em;
  transition: 0.5s;
}
.inputBox input:valid ~ span,
.inputBox input:focus ~ span{
  color: #45f3ff;
  transform: translateX(0px) translateY(-34px);
  font-size: 0.75em;
}
.inputBox i{
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background: #45f3ff;
  border-radius: 4px;
  transition: 0.5s;
  pointer-events: none;
  z-index: 9;
}
.inputBox input:valid ~ i,
.inputBox input:focus ~ i{
  height: 44px;
}
.links{
  display: flex;
  justify-content: space-between;
}
.links a{
  margin: 10px 0;
  font-size: 0.75em;
  color: #8f8f8f;
  text-decoration: none;
}
.links a:hover,
links a:nth-child(2){
  color: #45f3ff;
}
input[type="submit"]{
  font-weight: 600;
  border: none;
  outline: none;
  background: #45f3ff;
  padding: 11px 25px;
  width: 100px;
  margin-top: 30px;
  border-radius: 4px;
  cursor: pointer;
}
input[type="submit"]:active{
  opacity: 0.8;
}
</style></head><body>
<div class="box">
  <div class="form">
      <h2>Sign in</h2>
      <form action="/admin-login.php" method="post" enctype="multipart/form-data">

      <?php if ($_SESSION["ERROR_TEXT"]) { ?>
	    <div class="alert alert-danger"><!-- Dùng biện pháp tinh chỉnh khi bê các thành phần giao diện từ thiết kế cũ sang thiết kế mới -->
	    	<div style="float: left;">
	    		<i class="fa fa-exclamation-circle"></i> <?php echo $_SESSION["ERROR_TEXT"]; ?>
	    	</div>
	        <button type="button" class="close" data-dismiss="alert" style="float: right;display: block;width: 1em;margin: 0">&times;</button>
	        <br style="clear:both"/>
	    </div>
	<?php } $_SESSION["ERROR_TEXT"] = null; ?>

      <div class="inputBox">
        <input type="text" required="required" name="username" value="<?php echo $_SESSION['FAILED_USERNAME'];?>">
        <span>Username</span>
        <i></i>
      </div>
      <div class="inputBox">
        <input type="password" required="required" name="password" value="<?php echo $_SESSION['FAILED_PASSWORD'];?>">
        <span>Password</span>
        <i></i>
      </div>
      <!-- <div class="links">
        <a href="#">Forgot Password</a>
        <a href="#">Sign up</a>
      </div> -->
      <input type="submit" value="Login">

      </form>
  </div>
</div>


<script src="./layout-adminlogin_files/css_live_reload_init.js"></script>
</body></html>