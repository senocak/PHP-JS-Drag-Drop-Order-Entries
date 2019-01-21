<?php
include('db.php'); // Veritabanı bağlantısı 
$result = mysql_query( 'SELECT * FROM icerik WHERE icerikDurum = "0" ORDER BY icerikSira');

$toplamKayit = mysql_num_rows($result);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>İçerik Listesi</title>
<script src="js/jquery-1.11.2.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
</head>
<body>

<table width="100%" border="1" cellspacing="0" cellpadding="0">
	<tr>
		<th width="13">#</th>
		<th>İçerik Adı</th>		
	</tr>
	<tbody id="sortable">
		<?php if ( $toplamKayit ){ $sayac = 0;?>
			<?php while( $value = mysql_fetch_assoc($result) ){ $sayac++;?>
				<tr id="item-<?php echo $value['icerikID']?>">
					<td class="sortable"><?php echo $sayac;?></td>
					<td><h3><?php echo $value['icerikAdi'];?></h3></td>
				</tr>																
			<?php }?>
		<?php } else {?>
			<tr><td colspan="6">Listelenecek içerik bulunmamaktadır.</td></tr>
		<?php }?>
	</tbody>
</table>


<style type="text/css">
	.sortable { cursor: move; }
</style>
<script type="text/javascript">
$(function() {
	$( "#sortable" ).sortable({
		revert: true,
		handle: ".sortable",
		stop: function (event, ui) {
			var data = $(this).sortable('serialize');

			$.ajax({
				type: "POST",
				dataType: "json",
				data: data,
				url: "ajax.php?p=urunSirala",
				success: function(msg){
					alert( msg.islemMsj );
				}
			});	                      				
		}
	});
	$( "#sortable" ).disableSelection();	                      		
});	                      	
</script>	

</body>
</html>