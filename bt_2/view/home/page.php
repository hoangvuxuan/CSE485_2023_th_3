<?php
// Nhận dữ liệu chuỗi JSON được gửi từ JavaScript


$jsonData = file_get_contents('php://input');

$data = json_decode($jsonData);
$name = $data->name;


$conn = new PDO('mysql:host=localhost;dbname=btth03_cse485', "root", "");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$tb = $conn->query("SELECT * FROM $name");
$values = $tb->fetchAll();
$keys = $values[0];



$show = '<table class="table"> <thead> <tr>';
foreach($keys as $k=>$v) {  
    if(is_string($k)) {
        $show .= '<th scope="col">'.$k.'</th>';
    }
}
$show .= '</tr> </thead> <tbody>';

foreach($values as $va) {
    $show .= '<tr>';
    foreach($va as $k => $b) {
        if(is_string($k)) {
            $show .= '<th scope = "row">'.$b.' </th>';
        }
    }
    $show .= '</tr>';

}

$show .= '</tbody> </table>';



echo $show;


?>
