<?php
class ProductionDBOperations
{
    private $host = '127.0.0.1';
    private $user = 'root';
    private $db = 'flutterclient';
    private $pass = '';
    private $conn;

    public function __construct()
    {
        $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db . ";charset=utf8", $this->user, $this->pass);
    }

    public function getVendorInfo(){

        $sql = 'SELECT * from vendor';
        $query = $this -> conn -> prepare($sql);

        $query -> execute();

        if($query)
        {
            $data = array();
            while ($row = $query ->fetchAll(PDO::FETCH_ASSOC))
            {
                $data['vendors'] = $row;
            }
            return $data;
        }
        return false;
    }

    public function getHouseInfo(){

        $sql = 'SELECT * from product_house';
        $query = $this -> conn -> prepare($sql);

        $query -> execute();

        if($query)
        {
            $data = array();
            while ($row = $query ->fetchAll(PDO::FETCH_ASSOC))
            {
                $data['product_house'] = $row;
            }
            return $data;
        }
        return false;
    }
	
	public function getLocateInfo(){

        $sql = 'SELECT * from room_locate';
        $query = $this -> conn -> prepare($sql);

        $query -> execute();

        if($query)
        {
            $data = array();
            while ($row = $query ->fetchAll(PDO::FETCH_ASSOC))
            {
                $data['roomLocate'] = $row;
            }
            return $data;
        }
        return false;
    }
	
	public function getRoomInfo(){

        $sql = 'SELECT * from room_info';
        $query = $this -> conn -> prepare($sql);

        $query -> execute();

        if($query)
        {
            $data = array();
            while ($row = $query ->fetchAll(PDO::FETCH_ASSOC))
            {
                $data['roomDetails'] = $row;
            }
            return $data;
        }
        return false;
    }
}