<?php
$connect = mysql_connect('localhost','root','');
mysql_select_db('sortable',$connect) or die("Veritabanı bağlanılamadı");

mysql_query('SET NAMES utf8');// Türkçe karakter sorunu için
?>