<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <!-- Bootstrap -->
    <link href="/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/css/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="/css/styles.css" rel="stylesheet" media="screen">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body id="login">
<div class="container">
    <form class="form-signin" method="post"  action="/admin/login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" name="userName" class="input-block-level" placeholder="userName">
        <input type="password" name="passWord" class="input-block-level" placeholder="passWord">
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
    </form>
</div> <!-- /container -->
<script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>