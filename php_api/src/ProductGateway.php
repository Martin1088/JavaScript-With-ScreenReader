<?php
class ProductGateway {
    private PDO $conn;
    public function __construct(Database $database) {
        $this->conn = $database->getConnection();
    }
    // get All Items in a List
    public function getAll() :array {
        $sql = "SELECT  * FROM artikel";
        $stmt = $this->conn->query($sql);
        $data = [];
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = $row;
        }
        return $data;

    }
}
?>