<?php
$title = 'transaksi';
require 'functions.php';
require 'layout_header.php';
$query = "SELECT transaksi.*,member.nama_member , detail_transaksi.total_harga FROM transaksi INNER JOIN member ON member.id_member = transaksi.member_id INNER JOIN detail_transaksi ON detail_transaksi.transaksi_id = transaksi.id_transaksi ";
$data = ambildata($conn,$query);
?> 
<div class="container-fluid">
    <div class="row bg-title">
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
            <h4 class="page-title"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Data <?= $title ?></h4> </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <div class="white-box">
                <div class="row">
                    <div class="col-md-6">
                   
                         <a href="transaksi_konfirmasi.php" class="btn btn-primary box-title" style="background-color: red"><i class="fa fa-check fa-fw"></i> Konfirmasi Pembayaran</a>
                    </div>
                    <div class="col-md-6 text-right">
                        <button id="btn-refresh" class="btn btn-primary box-title text-right" title="Refresh Data"><i class="fa fa-refresh" id="ic-refresh"></i></button>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped" id="table">
                        <thead>
                            <tr>
                                <th class="text-center" style="background-color: red">No</th>
                                <th class="text-left" style="background-color: red">Invoice</th>
                                <th class="text-left" style="background-color: red">Member</th>
                                <th class="text-left" style="background-color: red">Status</th>
                                <th class="text-left" style="background-color: red">Pemabayaran</th>
                                <th class="text-left" style="background-color: red">Total Harga</th>
                                <th width="15%" class="text-left" style="background-color: red">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($data as $transaksi): ?>
                                <tr>
                                    <td class="text-center"></td>
                                    <td><?= $transaksi['kode_invoice'] ?></td>
                                    <td><?= $transaksi['nama_member'] ?></td>
                                    <td><?= $transaksi['status'] ?></td>
                                    <td><?= $transaksi['status_bayar'] ?></td>
                                    <td><?= $transaksi['total_harga'] ?></td>
                                    <td align="center">
                                          <a href="transaksi_detail.php?id=<?= $transaksi['id_transaksi']; ?>"style="background-color: red" data-toggle="tooltip" data-placement="bottom" title="Detail" class="btn btn-success btn-block"><i class="fa fa-eye fa-fw" aria-hidden="true"></i> Detail</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- table -->
    <!-- ============================================================== -->
    <div class="row">
        
    </div>
</div>
<?php
require'layout_footer.php';
