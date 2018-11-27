<?php


require_once 'Functions.php';

$fun = new Functions();

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
  $data = json_decode(file_get_contents("php://input"));
  if(isset($data -> data_id)){
    $data_id = $data -> data_id;
    echo  $fun -> getUserInfo($data_id);
  }
  else
  {
    $response["result"] = "success";
    $response["message"] = "Get UserInfo Successful";
    $response["userinfo"] = "BodyInfo";
    json_encode($response);
  }
}

