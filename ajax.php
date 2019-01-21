<?php
include('db.php'); // Veritabanı bağlantısı

if ( isset($_GET['p']) ){
	if ( $_GET['p'] == 'urunSirala' ){
		if ( is_array($_POST['item']) ){		
			foreach ( $_POST['item'] as $key => $value ){
				$query = 'UPDATE icerik SET icerikSira = "'.$key.'" WHERE icerikID = "'.$value.'"';
				mysql_query($query);				
			}
			$returnMsg = array( 'islemSonuc' => true , 'islemMsj' => 'İçeriklerin sırala işlemi güncellendi' );
		} else {
			$returnMsg = array( 'islemSonuc' => false , 'islemMsj' => 'İçerik sıralama işleminde hata oluştu' );
		}
	}
}

if ( isset($returnMsg) ){
	echo json_encode($returnMsg);
}
?>