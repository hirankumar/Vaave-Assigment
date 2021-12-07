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
		<h3> {{ heading }}</h3>
	<table>
		<tbody>
			<tr v-for="sub in subjects">
				<td>
					<input type="radio" v-model="subname"  v-bind:value="sub.subject_name" v-bind:name="sub.subject_name" required>
					<label>{{ sub.subject_name}}</label>
										
				</td>
				
			</tr>
		</tbody>
	</table>
	<span>{{ error }}</span>
	</div>
	<button class="login" @click="assignment( subname)"> {{ button }}</button>



</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script type = "text/javascript">
	
	
new Vue({
el: '#app',
data:{
message:"Subject Names",
button: "Start Test",
subjects : [],
subname : '',
error : '',
heading:'Select the subject :-'

},
mounted:function(){
	axios.get("subject.php")
	.then((response)=>
		(this.subjects = response.data.subjects))
		.catch(function(error)
			{console.log(error)});	
},
methods:{
	assignment(subname){
		if(subname)
		{
		window.location.href = "http://localhost/vaave/assignment.php?subname="+subname;
		}
		else
		{
			this.error = "please select the subject";
		}
	}
}

});
 
</script>
</body>
</html>