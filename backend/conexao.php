<?php

$banco = new PDO('mysql:host=;dbname=', '', '',
    array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
