<?php
require 'conn.php';

$result = array();

$sql = $conn->query("SELECT subject_name FROM subject_names ");
$subjects  = array();
while($row = $sql->fetch_assoc()){
	array_push($subjects, $row);
}
$result['subjects'] = $subjects;
echo json_encode($result);
?>