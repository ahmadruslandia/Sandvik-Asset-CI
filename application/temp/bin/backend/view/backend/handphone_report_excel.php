<!DOCTYPE html>
<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=handphone_report_excel.xls");
?>
<html>

<head>

	<!-- Title -->
	<title>Handphone Report</title>

</head>

<body>

	<table border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>Street Address</th>
				<th>User Name</th>
				<th>Model</th>
				<th>Departement</th>
				<th>User ID</th>
				<th>Email</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$total = 1;
			$no = 0;
			foreach ($handphoneexcel as $sl) :
				$no++;
				$total++;
			?>
				<tr>
					<td align="center"><?php echo $no; ?></td>
					<td align="center"><?php echo $sl->street_address; ?></td>
					<td align="center"><?php echo $sl->user_name; ?></td>
					<td align="center"><?php echo $sl->model; ?></td>
					<td align="center"><?php echo $sl->departement; ?></td>
					<td align="center"><?php echo $sl->user_id; ?></td>
					<td align="center"><?php echo $sl->email; ?></td>
					<td align="center"><?php echo $sl->nama_jenis; ?></td>
				</tr>
			<?php endforeach; ?>
			<tr>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
			</tr>
			<tr>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
				<td align="center"><br></td>
			</tr>
		</tbody>
	</table>

</body>


</html>