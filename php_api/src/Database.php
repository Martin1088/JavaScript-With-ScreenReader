<?php
// Datenbank haro02 mit artikeln 
class Database {
    
    public function __construct(private string $host,
                                private string $ports,
                                private string $name,
                                private string $user,
                                private string $password) {}
    public function getConnection() :PDO {
        $dsn = "mysql:host={$this->host};port={$this->ports};dbname={$this->name};charset=utf8";
        return new PDO($dsn, $this->user, $this->password,[
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_STRINGIFY_FETCHES => false
        ]);
    }
}
?>