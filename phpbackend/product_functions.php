<?php
require_once 'product_db.php';

class ProductFunction{

private $db;

public function __construct()
{
    $this -> db = new ProductionDBOperations();
}
    public function getVendorInfo()
    {
        $db = $this -> db;
        $result =  $db -> getVendorInfo();
        if(!$result) {

            $response["result"] = "failure";
            $response["message"] = "VendorInfo Do not exist";
            $response["VendorList"] = "no userdata";
            return json_encode($response);

        } else {

            $response["result"] = "success";
            $response["message"] = "Get VendorInfo Successful";
            $response["VendorList"] = $result;
            return json_encode($response);
        }
    }

    public function getHouseInfo()
    {
        $db = $this -> db;
        $result =  $db -> getHouseInfo();
        if(!$result) {

            $response["result"] = "failure";
            $response["message"] = "VendorInfo Do not exist";
            $response["HouseList"] = "no userdata";
            return json_encode($response);

        } else {

            $response["result"] = "success";
            $response["message"] = "Get VendorInfo Successful";
            $response["HouseList"] = $result;
            return json_encode($response);
        }
    }
	
	 public function getLocateInfo()
    {
        $db = $this -> db;
        $result =  $db -> getLocateInfo();
        if(!$result) {

            $response["result"] = "failure";
            $response["message"] = "roomLocate Do not exist";
            $response["LocateList"] = "no roomLocate";
            return json_encode($response);

        } else {

            $response["result"] = "success";
            $response["message"] = "Get roomLocate Successful";
            $response["LocateList"] = $result;
            return json_encode($response);
        }
    }
	
	 public function getRoomInfo()
    {
        $db = $this -> db;
        $result =  $db -> getRoomInfo();
        if(!$result) {

            $response["result"] = "failure";
            $response["message"] = "roomDetails Do not exist";
            $response["RoomDetailsList"] = "no roomDetails";
            return json_encode($response);

        } else {

            $response["result"] = "success";
            $response["message"] = "Get roomDetails Successful";
            $response["RoomDetailsList"] = $result;
            return json_encode($response);
        }
    }
}