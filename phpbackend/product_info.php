<?php
require_once 'product_functions.php';
$fun = new ProductFunction();

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $data = json_decode(file_get_contents("php://input"));
    if(isset($data -> operation)) {
        $operation = $data -> operation;
		switch($operation)
		{
			case 'getVenderInfo':
			echo $fun->getVendorInfo();
			break;
			case 'getHouseInfo':
			echo $fun->getHouseInfo();
			break;
			case 'getLocateInfo':
			echo $fun->getLocateInfo();
			break;
			case 'getRoomInfo':
			echo $fun->getRoomInfo();
			break;
			default:
			break;
		}
		
    }
}
