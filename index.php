<!DOCTYPE html>
<html lang="en">
<head>
	<?php
	include 'DbOperations.php';
	include 'Aes.php';
	include 'RastgeleKarakter.php';
	include 'DigitalSign.php';
	?>
	<title>Da Vinci'nin Günlüğü</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<script src="https://d3js.org/d3.v5.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.parallax.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/custom.js"></script>

  	<script src="LineChart"></script>
  	
    

  	<link rel="stylesheet" type="text/css" href="index.css">
   	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	
	<link rel="stylesheet" href="css/templatemo-style.css">


</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

<div class="row">
	<div class="preloader">
     <div class="spinner">
          <span class="spinner-rotate"></span>
     </div>
</div>

<div class="navbar navbar-fixed-top custom-navbar" role="navigation">
     <div class="container">

          <!-- navbar header -->
          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="#" class="navbar-brand">Leanardo Da Vinci</a>
          </div>

          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home" class="smoothScroll">Ana Sayfa</a></li>
                    <li><a href="#MetinSifreleme" class="smoothScroll">METİN ŞİFRELEME</a></li>
                    <li><a href="#Yorum" class="smoothScroll">Yorumlar</a></li>
                    <li><a href="#DigitalImza" class="smoothScroll">DA VİNCİ'NİN İMZASI</a></li>
                    
               </ul>
          </div>

     </div>
</div>
</div>



<section id= "home" class="parallax-section">

		<div class="container" >
			<div class="row">	
				<div>
					<div style="height: 100px"></div>
					<p >
	 			
					<?php

						$db=new DbOperations();
						if ($db->Connect()) {
					   		$result=$db->GetImage();
							}
							
							echo "<img id="."DavinciResim"." width=500 style=float:left class="."img-thumbnail"." src=".$result."
							";
					?>
				 	<?php
					    	
					    	
							if ($db->Connect()) {
					   		$result=$db->GetText();
							}
							echo "<p>
							<b>
							&emsp;&ensp;" .$result."
							</b>
							</p>";
					?>
				    	
				  


				</p>
				</div>
				
		</div>
	
	</div>
</section>

<section id ="MetinSifreleme">
	<div class="row">
	
		
		<div class="row" >
			<div class="col-sm-3" >
				<div >
					<h3 class="DivBaslik" style="margin:25px ">SENARYOLAR</h3>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div >
					<h3 class="DivBaslik" style="margin:25px ">NORMAL METİNLER</h3>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div >
				<h3 class="DivBaslik" style="margin:25px ">ŞİFRELİ METİNLER</h3>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div >
				<h3 class="DivBaslik" style="margin:25px ">ÇÖZÜLMÜŞ METİNLER</h3>
				</div>
				
			</div>
		</div>
		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 1</h3>
				</div>
			
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height: 100px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(1);
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";
	
												
						}
					
						
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,1);
						
					}
						
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="height: 100px">
				<?php

						$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(1);
						}
					
						echo "<p>
						&emsp;&ensp;" .$result->_SifreliMetin."						
						</p>";
						
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height: 100px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>
		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 2</h3>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height: 100px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(2);
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";
						
						}
					
							$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,2);
						
					}
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="height: 100px">
				<?php
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(2);
						}
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifreliMetin."
						
						</p>";
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height: 100px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>
		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 3</h3>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height: 100px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(3);
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";

					
						}
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,3);
						
					}

					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="height: 100px">
				<?php
				$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(3);
						}
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifreliMetin."
						
						</p>";
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height: 100px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>
		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 4</h3>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height:400px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(4);
						echo "<p >
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";
						
						}
					
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,4);
						
					}
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="overflow:auto " style="height:400px">
				<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(4);
						}
						echo "<p >
						
						&emsp;&ensp;" .$result->_SifreliMetin."
						
						</p>";
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height:400px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>
		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 5</h3>
					<p align="center">Sadece 0 lardan oluşan Key kullanımıştır</p>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height:400px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(5);
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";

						
						}
					
							$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,5);
						
					}
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="overflow:auto " style="height:400px">
				<?php
				$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(5);
						}
						echo "<p >
						
						&emsp;&ensp;" .$result->_SifreliMetin."
						
						</p>";
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height:400px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>

		<br>
			<div class="row">
			<div class="col-sm-3" >
				<div class="Senaryo">
					<h3 class="SenaryoTipleri" align="center">SENARYO - 5</h3>
					<p align="center">Sadece 1 lerden oluşan Key kullanımıştır</p>
				</div>
				
				
			</div>
			<div class="col-sm-3"  >
				<div class="Metin" style="word-wrap:break-word; " style="height:400px">
					<?php
					$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(6);
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifresizMetin."
						
						</p>";
						
						}
					
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();


					if ($db->Connect()) {
						
						$db->UpdateData($encrypted,$decrypted,6);
						
					}
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="SifreliMetin" style="word-wrap:break-word; " style="overflow:auto " style="height:400px">
				<?php
				$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetSifreliMetin(6);
						}
						echo "<p>
						
						&emsp;&ensp;" .$result->_SifreliMetin."
						
						</p>";
					?>
				</div>
				
			</div>
			<div class="col-sm-3">
				<div class="CozulmusMetin" style="word-wrap:break-word; " style="height:400px">
					<?php

						echo "<p>
						&emsp;&ensp;" .$result->_CozulmusMetin."						
						</p>";
						
					?>
				</div>
			</div>
		</div>
	</div>
</section>


<section id ="Yorum">
	<div class="col-md-12">
		<h2>YORUMLAR</h2>
		<div class="col-md-12" > 

			<h3 style="text-decoration: underline;">YORUM-1</h3>
		<?php 
		#	$karakterSayisi=600;
			$rk=new RastgeleKarakter();
			#$rastgeleMetin=$rk->RastgeleMetinGetir();
		$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetYorum(1);
						
						}
		 ?>
              <textarea readonly name="#" id="" class="form-control" placeholder="Buraya bir yorum yazın" cols="30" rows="10">
              	<?php echo $result->_Yorum; 
              		
              	?>
              </textarea> 
         <h4 style="text-decoration: underline;">YORUM-1 ANALİZİ</h4> 
         <?php 
         	$frekansList=$rk->FrekansGetir($result->_Yorum);
         	#echo "<p>".gettype($frekansList)." </p>";
        
              $jsonResult=json_encode($frekansList); 
              
             echo "<script type=text/javascript> DrawLineChart(".$jsonResult.",".count($frekansList).",'YORUM-1 GRAFİĞİ'); </script>";
         
             echo "<p>Toplam Karakter Sayısı : ".$result->_KarakterSayisi. " <br> 
             			Kullanılan Karakter Çeşit Sayısı : ".count($rk->_KarakterDizisi)."<br>
             		Karakter Frekansına Göre Hesaplanan Standart Sapma Miktarı : ".$result->_StandartSapma."		 </p>";    

        	
          ?>     
  

		</div>
		
        <div class="col-md-12" > 

			<h3 style="text-decoration: underline;">YORUM-2</h3>
		<?php 
			#	$karakterSayisi=600;
			$rk=new RastgeleKarakter();
			#$rastgeleMetin=$rk->RastgeleMetinGetir();
		$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetYorum(2);
						
						}
		 ?>
		
              <textarea readonly name="#" id="" class="form-control" placeholder="Buraya bir yorum yazın" cols="30" rows="10">
              	<?php echo $result->_Yorum; 
              		
              	?>
              </textarea> 
         <h4 style="text-decoration: underline;">YORUM-2 ANALİZİ</h4> 
         <?php 
         	$frekansList=$rk->FrekansGetir($result->_Yorum);
         	#echo "<p>".gettype($frekansList)." </p>";
         
              $jsonResult=json_encode($frekansList); 
              
             echo "<script type=text/javascript> DrawLineChart(".$jsonResult.",".count($frekansList).",'YORUM-2 GRAFİĞİ'); </script>";
         
             echo "<p>Toplam Karakter Sayısı : ".$result->_KarakterSayisi. " <br> 
             			Kullanılan Karakter Çeşit Sayısı : ".count($rk->_KarakterDizisi)."<br>
             		Karakter Frekansına Göre Hesaplanan Standart Sapma Miktarı : ".$result->_StandartSapma."		 </p>";
          ?>     
          
		</div>
		<div class="col-md-12" > 

			<h3 style="text-decoration: underline;">YORUM-3</h3>
		<?php 
				#	$karakterSayisi=600;
			$rk=new RastgeleKarakter();
			#$rastgeleMetin=$rk->RastgeleMetinGetir();
			$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetYorum(3);
						
						}
		 ?>
              <textarea readonly name="#" id="" class="form-control" placeholder="Buraya bir yorum yazın" cols="30" rows="10">
              	<?php echo $result->_Yorum; 
              		
              	?>
              </textarea> 
         <h4 style="text-decoration: underline;">YORUM-3 ANALİZİ</h4> 
         <?php 
         	$frekansList=$rk->FrekansGetir($result->_Yorum);
         	#echo "<p>".gettype($frekansList)." </p>";
         	
              $jsonResult=json_encode($frekansList); 
              
             echo "<script type=text/javascript> DrawLineChart(".$jsonResult.",".count($frekansList).",'YORUM-3 GRAFİĞİ'); </script>";
            
           
             echo "<p>Toplam Karakter Sayısı : ".$result->_KarakterSayisi. " <br> 
             			Kullanılan Karakter Çeşit Sayısı : ".count($rk->_KarakterDizisi)."<br>
             		  Karakter Frekansına Göre Hesaplanan Standart Sapma Miktarı : ".$result->_StandartSapma."		 </p>";
          ?>     
             
		</div>
		<div class="col-md-12" > 

			<h3 style="text-decoration: underline;">YORUM-4</h3>
		<?php 
				#	$karakterSayisi=600;
			$rk=new RastgeleKarakter();
			#$rastgeleMetin=$rk->RastgeleMetinGetir();
			$db=new DbOperations();
						if ($db->Connect()) {
   						$result=$db->GetYorum(4);
						
						}
		 ?>
              <textarea readonly name="#" id="" class="form-control" placeholder="Buraya bir yorum yazın" cols="30" rows="10">
              	<?php echo $result->_Yorum; 
              		
              	?>
              </textarea> 
         <h4 style="text-decoration: underline;">YORUM-4 ANALİZİ</h4> 
         <?php 
         	$frekansList=$rk->FrekansGetir($result->_Yorum);
         	#echo "<p>".gettype($frekansList)." </p>";
         	
              $jsonResult=json_encode($frekansList); 
              
             echo "<script type=text/javascript> DrawLineChart(".$jsonResult.",".count($frekansList).",'YORUM-4 GRAFİĞİ'); </script>";
            
          
             echo "<p>Toplam Karakter Sayısı : ".$result->_KarakterSayisi. " <br> 
             			Kullanılan Karakter Çeşit Sayısı : ".count($rk->_KarakterDizisi)."<br>
             		Karakter Frekansına Göre Hesaplanan Standart Sapma Miktarı : ".$result->_StandartSapma."		 </p>";
          ?>     
             
		</div>
         <h3>KARAKTERLERİN DAĞILIM GRAFİKLERİ</h3> 
            
    </div>
   
</section>
	
<section id="DigitalImza">
	<div  class="col-md-12">
		<h2>DİJİTAL İMZA</h2>
		
		
              <br>
            
             

          <br>
		<?php 

			$db=new DbOperations();
			$ds=new DigitalSign();
			if ($db->Connect()) 
			{
			$yorumModel=$db->GetYorum(4);
			$keyModelDaVinci=$db->GetKeys(1);//Davncinin keyi
			$keyModelBobRoss=$db->GetKeys(2);//Bob Ross un Keyi
			$signature=$ds->SignData($yorumModel->_Yorum,$keyModelDaVinci);
			$result=$ds->ValidateData($yorumModel->_Yorum,$signature,$keyModelDaVinci->_PubKey);		
			}		
			?>
		<textarea readonly name="#" id="" class="form-control" placeholder="Buraya bir yorum yazın" cols="30" rows="5">
             <?php
             echo $yorumModel->_Yorum;
             ?>

              </textarea> 
              <br>
           
            
              	   
             
       

          <br>


			
			<?php
				echo "<br> ".$result."";
		
		 ?>
	</div>
</section>

<footer>
	<div class="container">
		<div class="row">

               <div class="col-md-12 col-sm-12">
                    <div class="wow fadeInUp footer-copyright" data-wow-delay="1.8s">
                  
                    </div>
				<ul class="wow fadeInUp social-icon" data-wow-delay="2s">
                         <li><a  class="fa fa-facebook"></a></li>
                         <li><a  class="fa fa-twitter"></a></li>
                         <li><a  class="fa fa-google-plus"></a></li>
                         <li><a  class="fa fa-dribbble"></a></li>
                         <li><a  class="fa fa-linkedin"></a></li>
                    </ul>
               </div>
			
		</div>
	</div>
</footer>

</body>
</html>