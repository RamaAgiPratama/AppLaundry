<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<center><h1>Laundry Fedro</h1>
		<h3>Laundry & Dry Clean</h3>
		<h3>Hp : 085603752452</h3></center>
	<?php
	include 'functions.php';
	?>
	<table border="1" style="width: 100%">
		<tr>
			<th>no</th>
				
				<th>paket</th>
				<th>jumlah</th>
				<th>harga</th>
				<th>bayar</th>

		</tr>
		<?php
		$no = 1;
		$sql =mysqli_query($conn,"select * from detail_transaksi  ");
		while($data = mysqli_fetch_array($sql)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				
				<td><?php echo $data['paket_id']; ?></td>
				<td><?php echo $data['qty']; ?></td>
				<td><?php echo $data['total_harga']; ?></td>
				<td><?php echo $data['total_bayar']; ?></td>

			</tr>
			<?php
		}
		?>
	</table>
	<script> 
		window.print();
	</script>

</body>
</html>