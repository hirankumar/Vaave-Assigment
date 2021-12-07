<?php
 require 'conn.php';
$subjectname =$_GET['subname'];
$result = array();
$sql = $conn->query("SELECT * FROM question_and_answers WHERE subject_names = '".$subjectname."'");
$questions  = array();
while($row = $sql->fetch_assoc()){
	array_push($questions, $row);
}
$result['questions'] = $questions;
print_r($questions,true);
echo json_encode($result);
?>