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
	.next{
		background: #73AD21;
		margin-top: 15px;
		font-size: 20px;
		float: left;
	}
</style>

</head>
<body>
<div id="app">
<h1 style="text-align: center;">{{ message }}</h1>

	<div class="center">
	<table>
		<tbody>
			<tr v-if="start">
				<td>
					<h2 >{{ heading }}</h2>
					<ul >
						<li v-for="note in Notes">
							{{ note }}
						</li>
					</ul>
					
				</td>
			</tr>
			<tr v-if="questionname">
				<td>
					<label>{{i }}) {{ questionname}}</label><br>
					<input type="radio" v-model="answer" v-bind:name="option1" v-bind:value="option1">
					<label>{{option1}}</label><br>
					<input type="radio" v-bind:name="option2" v-model="answer" v-bind:value="option2">
					<label>{{option2}}</label><br>
					<input type="radio" v-bind:name="option3" v-model="answer" v-bind:value="option3">
					<label>{{option3}}</label><br>
					<input type="radio" v-bind:name="option4" v-model="answer" v-bind:value="option4">
					<label>{{option4}}</label><br>
					<span>{{ error }}</span>
					<div >
					<br><button class="next" @click="answered(i,answer)" >{{ next }}</button>
					</div>
									
				</td>
				
			</tr>
		</tbody>
	</table>
	<h1 v-if="showmarks"> {{ Test}} </h1>
	<h2 v-if="showmarks"> Your score is: {{ marks}} </h2>
	<h2 v-if="showmarks">Percantage is : {{ percentage }} %</h2>
	<button class="login" @click = "goHome()" v-if="showmarks"> {{ Home}} </button>		
	</div>
	<button class="login" @click="getquestions(subname)" v-if="start" >{{ button }}</button>
	



</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script type = "text/javascript">
	
	
new Vue({
el: '#app',
data:{
	Home:'Home',
	heading:"Note:",
message:"Assigment",
button: "Take Test",
Notes:["Each subject would have 3 levels (Beginner, Intermediate, Professional)","Once the user chooses a subjects to take a quiz, he would get 10 questions, 4 of beginner level, 3 of intermediate level, 3 of professional level in that order","One question is visible each time and each question would have 4 Multiple choice answers and onlyone answer would be right. There would not be any time limit. Next question is visible after the first question is answered."],
start :'true',
questionname : '' ,
option1 : '',
option2 : '',
option3 : '',
option4 : '',
questions: [],
showmarks:'',
i: 0,
show: '',
next: 'Next question',
subname : "<?php echo $_GET['subname']; ?>",
error: '',
answer : '',
dbanswer:'',
marks : 0,
score : 0,
percentage : 0,
Test:'Test is completed:'

},

methods:{
	getquestions(subname){
		axios.get("questions.php?subname="+subname).then((response)=>
		(this.questions = response.data.questions,this.answered(0,'response')))
		.catch(function(error)
			{console.log(error)});

	},
	answered(i,answer)
	{		
			if(answer == this.dbanswer)
			{
				this.marks = this.marks+1;
			}

			if(answer && i <this.questions.length)
			{
			this.dbanswer = this.questions[i].answers;	
			this.questionname = this.questions[i].question;
			this.option1 = this.questions[i].option1;
			this.option2 = this.questions[i].option2;
			this.option3 = this.questions[i].option3;
			this.option4 = this.questions[i].option4;
			this.i=i+1;
			this.answer = '';
			this.error = '';
			this.showmarks = '';
			this.start = '';
			if(this.i == this.questions.length)
			{
				this.next = 'Submit';
			}

		}
		else
		{  
			if(this.i>=this.questions.length && answer)
			{
			this.error='';
			this.questionname = '';
			this.showmarks = 'true';
			this.score = this.marks;
			this.percentage = this.marks/10*100;
			}
			else{
			this.error = "please select your answer";
		}
		}

	},
	goHome()
	{
		window.location.href = "http://localhost/vaave/Home.php?";
	}
}

});
 
</script>
</body>
</html>