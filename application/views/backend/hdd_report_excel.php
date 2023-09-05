<!DOCTYPE html>
<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=hdd_report_excel.xls");
?>
<html>

<head>

    <!-- Title -->
    <title>HDD Report</title>

</head>

<body>

    <table border="1">
        <thead>
            <tr>
                <th>No</th>
                <th>Assets Number</th>
                <th>Assets Name</th>
                <th>Date Manufacture</th>
                <th>Model</th>
                <th>Brand</th>
                <th>S/N</th>
                <th>MAC</th>
                <th>Room</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $total = 1;
            $no = 0;
            foreach ($hddexcel as $sl) :
                $no++;
                $total++;
            ?>
                <tr>
                    <td align="center"><?php echo $no; ?></td>
                    <td align="center"><?php echo $sl->assets_number; ?></td>
                    <td align="center"><?php echo $sl->assets_name; ?></td>
                    <td align="center"><?php echo $sl->capacity; ?></td>
                    <td align="center"><?php echo $sl->model; ?></td>
                    <td align="center"><?php echo $sl->brand; ?></td>
                    <td align="center"><?php echo $sl->serial_number; ?></td>
                    <td align="center"><?php echo $sl->mac_address; ?></td>
                    <td align="center"><?php echo $sl->room; ?></td>
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
                <td align="center"><br></td>
                <td align="center"><br></td>
            </tr>
        </tbody>
    </table>

</body>

</html>