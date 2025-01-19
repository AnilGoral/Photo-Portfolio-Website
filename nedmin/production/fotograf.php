<?php 

include 'header.php'; 

//Belirli veriyi seçme işlemi
$fotografsor=$db->prepare("SELECT * FROM fotograf order by fotograf_id DESC");
$fotografsor->execute();


?>


<!-- page content -->
<div class="right_col" role="main">
  <div class="">

    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Fotoğraf Listeleme <small>,

              <?php 

              if (isset($_GET['durum'])) {
                  if ($_GET['durum']=="ok") {?>
                      <b style="color:green;">İşlem Başarılı...</b>
                  <?php } elseif ($_GET['durum']=="no") {?>
                      <b style="color:red;">İşlem Başarısız...</b>
                  <?php }
              } ?>


            </small></h2>

            <div class="clearfix"></div>

            <div align="right">
              <a href="fotograf-ekle.php"><button class="btn btn-success btn-xs"> Yeni Ekle</button></a>

            </div>
          </div>
          <div class="x_content">


            <!-- Div İçerik Başlangıç -->

            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th>S.No</th>
                  <th>Fotoğraf Resimyol</th>
                  <th>Fotoğraf Ad</th>
                  <th>Fotoğraf Detay</th>
                  <th>Fotoğraf id</th>
                  <th>Fotoğraf Zaman</th>
                  <th>Fotoğraf Durum</th>
                  
                </tr>
              </thead>

              <tbody>

                <?php 

                $say=0;

                while($fotografcek=$fotografsor->fetch(PDO::FETCH_ASSOC)) { $say++?>


                <tr>
                 <td width="20"><?php echo $say ?></td>
                 <td><img width="100" src="../../<?php echo $fotografcek['fotograf_resimyol'] ?>"></td>
                 <td><?php echo $fotografcek['fotograf_ad'] ?></td>
                 <td><?php echo $fotografcek['fotograf_detay'] ?></td>
                 <td><?php echo $fotografcek['fotograf_id'] ?></td>
                 <td><?php echo $fotografcek['fotograf_zaman'] ?></td>

                 <td><center><?php 

                  if ($fotografcek['fotograf_durum']==1) {?>

                  <button class="btn btn-success btn-xs">Aktif</button>

                  <!--

                  success -> yeşil
                  warning -> tfotografcu
                  danger -> kırmızı
                  default -> beyaz
                  primary -> mavi buton

                  btn-xs -> ufak buton 

                -->

                <?php } else {?>

                <button class="btn btn-danger btn-xs">Pasif</button>


                <?php } ?>
              </center>


            </td>


            <td><center><a href="fotograf-duzenle.php?fotograf_id=<?php echo $fotografcek['fotograf_id']; ?>"><button class="btn btn-primary btn-xs">Düzenle</button></a></center></td>
            <td><center><a href="../netting/islem.php?fotograf_id=<?php echo $fotografcek['fotograf_id']; ?>&fotografsil=ok"><button class="btn btn-danger btn-xs">Sil</button></a></center></td>
          </tr>



          <?php  }

          ?>


        </tbody>
      </table>

      <!-- Div İçerik Bitişi -->


    </div>
  </div>
</div>
</div>




</div>
</div>
<!-- /page content -->

<?php include 'footer.php'; ?>
