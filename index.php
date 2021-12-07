<!DOCTYPE html>
<html lang= "en">
<head>
<meta charset="UTF-8">
<title>vuejs</title>
<style type="text/css">
	.center{
		margin: auto;
		width: 50%;
		border: 3px solid #73AD21;
		padding: 10px;
	}

	.username{
		margin: auto;
		margin-top: 5px;
		width: 50%;
		border: 3px solid #73AD21;
		padding: 10px;
	}
	.password{
		margin: auto;
		margin-top: 5px;
		width: 50%;
		border: 3px solid #73AD21;
		padding: 10px;
	}
	.login{
		margin: auto;
		background: #73AD21;
		margin-top: 15px;
		font-size: 20px;
		margin-left: 45%;
		margin-bottom: 5px;
	}
</style>
</head>
<body>
<div id="app">
<h1 style="text-align: center;">{{ message }}</h1>
<div class="center">
	<label style="font-size: 25px;">{{ username }}</label>
	<input class="username" type="text"  placeholder="Enter username"><br>
	<label style="font-size: 25px;">{{ password }} </label>
	<input class="password" type="password"  placeholder="Enter password"><br>
	<button class="login" @click="goHome()"> {{ button }}</button>
</div>


</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script type = "text/javascript">
new Vue({
el: '#app',
data:{
message:"Login ",
button: "Login",
username: "Username :",
password: "Password :"
},
methods:{
	goHome(){
		window.location.href = "http://localhost/vaave/Home.php";
	}
}

})
</script>
</body>
</html>