<?php

class MySQL extends PDO {

    protected $host;
    protected $dbName;
    protected $dbUser;
    protected $dbPass;

    public function __construct($config) {
        if($_SERVER['SERVER_ADDR'] == '127.0.0.1') {
            $this->host = $config['database']['default']['host'];
            $this->dbName = $config['database']['default']['name'];
            $this->dbUser = $config['database']['default']['user'];
            $this->dbPass = $config['database']['default']['pass'];
        } else {
            $this->host = $config['database']['remote']['host'];
            $this->dbName = $config['database']['remote']['name'];
            $this->dbUser = $config['database']['remote']['user'];
            $this->dbPass = $config['database']['remote']['pass'];
        }


        parent::__construct("mysql:host={$this->host};dbname={$this->dbName}",$this->dbUser, $this->dbPass);
        $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
}
