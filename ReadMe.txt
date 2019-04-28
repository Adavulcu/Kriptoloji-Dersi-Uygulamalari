Proje Php dilinde yazýlmýþ ve veri tabaný olarak Mysql kullanýmýþtýr.

	Projenin çalýþtýrýlmasý için adýmlar:
        1.  Bilgisayarda Wampserver'in 3.7.1 verisiyonu ve ya bu versiyonla uyumlu bir versiyonu kurulu olmalýdýr.
	2.  Wampserver https://sourceforge.net/projects/wampserver/ linki üzerinden indirebilirsiniz.
	3.  Kurulum tamamlandýktan sonra localhostýn 8080 portunda çalýþýp çalýþmadýða bakýnýz. eðer çalýþmýyorsa gerekli ayarlarý yapýnýnýz.
	4.  Wampserver çalýþtýrýldýktan sonra görev çubuðunda sað tarafta olan simgeyi týklayýnýz ve cýkan seçeneklerden 
	    phpmyadmin olaný seçiniz. Baþka yoldan ise http://localhost:8080/phpmyadmin adresinden veri tabýna baðlanabilirsiniz.
	5.  Eðer veri tabaný sayfasýnda giriþ ekraný var ise kullanýcý adýný "Root" ve þifre bölümü noþ býrakarak veri tabanýna baðlanabilirsiniz.
	6.  Ödev dosyasýnýn içinde ".sql" uzantýlý bir dosya bulunmaktadýr. Veri tabaný sayfasýnda sol tarafta "yeni" seçeneðine
	    týklayarak ".sql" uzantýlý dosyanýn adý ile bir veri tabaný oluþturun.
	7.  Sonra "içe aktar" seçeneði týklayýn(oluþturduðunuz veri tabanýnýn týkladýktan sonra bu iþlemi yapýn).
	8.  Çýkan sayfada "dosya seç " seçeneðini týklayarak ".sql" uzantýlý dosyayý seçiniz. Alt tarafta "Biçim" seçeneðinin
	    "SQL" olmasýna dikkat edin. En olarak "git" seçeneðini týklayýnýz.
	9.  Bir hata ile karþýlaþmadýysanýz veri tabanýnýza ödev veri tabaný entegre edilmiþ demektir. Eðer hata varsa 6. iþleme geri dönünüz.
	10. Ödev klasörü localhostun çalýþtýðý dosya içerisinde olmalýdýr. Büyük ihtimalle "C:\wamp64\www" bu adresin içinde
	    localhost dosyalarý bulunmalýdýr.
	11. Projeyi veri tabanýna baðlamak için "DbOperations.php" adlý dosyanýn içerisinde  "public function Connect() " diye geçen bir metot mevcuttur.
	    Bu metotdaki kodlar sayesinde veri tabaný baðlantýsý saðlanýr. "$this->_connection =mysqli_connect('localhost','root','','dbdavinci');"
	    Bu kod baðlantý kodudur ve aldýðý parametrelerin anlamý þudur :
		-> Birinci parametre veri tabanýn nerede çalýþtýðýný gösterir. MySqli localhostta çalýþtýrdýðýmýz için bu parametreye dokunmayýn.
		-> Ýkinci parametre veri tabanýna giriþ yaparken yetkili kullanýcý adýný gösteririr. Farklý bir yetkili kullanýcý ile giriþ yaptýysanýz
		   gerekli deðiþikliði yapýnýz.
		-> Üçüncü parametre veri tabanýna giriþ yaparken yetkili kullanýcý þifresini gösteririr. Farklý bir yetkili kullanýcý ile giriþ yaptýysanýz
		   gerekli deðiþikliði yapýnýz.
		-> Dördüncü parametre oluþturduðumuz veri tabanýn ismini gösterir. Eðer farklý bir isim verdiysenin gerekli deðiþikliði yapýnýz.
	12. Ödev dosyasý içerisinde bulun .jpg uzantýlý resim dosyasýnýn yerini deðiþtirmeyiniz. Veri tabanýnda o dosyanýn yolu tutulmaktadýr.
	13. Ödevi çalýþtýrmak için son olarak web sayfasýna þu adresi giriniz "http://localhost:8080/14253024/index.php" .
	
	
	Projenin 2. adýmý :
	
		Projede algoritma olarak AES algoritmasý kullanýlmýþtýr. Kaynak olarak https://aesencryption.net/ bu siteden yaralanýlmýþtýr.
	Algoritma modeli olarak CBC seçilmiþtir. AES algoritmasýnýn çalýþmasý için extra bir iþleme gerek yoktur.
		
		Veri tababýnýn yapýsý :
		
		-> Henüz þifrelenmemiþ metinler tbl_sifresizmetin tablossunda yer almaktadatýr.
		->Þifrelenmiþ ve çözümlenmiþ metinler ise tbl_sifrelimetin tablosunda yer almaktadýr.
		->Algoritma için gerekli Anahtarlar ise tbl_key tablosunda yer almaktadýr.
		->Veri tabaný iþlemleri "DbOperations.php" adlý dosyanýn içerisinde yapýlmaktadýr.
		
		
		
		Senaryo 1 :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 1 için gerekli metin aþaðýdaki metotla cekilmektedir.
						
						$result=$db->GetSifreliMetin(1);
						#Metoda gönderile "1" parametresi senaryo 1 için gerekli olan orjinal metinin tbl_sifresizmetin tablosundaki ID numarasýdýr.
			
			->Þifreleme çözümleme iþlemleri
						
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						#Birinci parametre veritabanýndan cekilen þifrelenmemiþ metindir.
						#Ýkinci Parametre veritabanýndan cekilen anahtar deðeridir.
						
						
						
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();
			->Yukardaki kod blogu bütün senaryolar için geçerlidir.
		
		Senaryo 2 :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 2 için gerekli metin ID si "2" dir.
			
		Senaryo 3 :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 3 için gerekli metin ID si "3" dir.
			
		Senaryo 4 :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 4 için gerekli metin ID si "4" dir.
			
		Senaryo 5 Sadece "0" lardan oluþan Anahtar için :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 5 için gerekli metin ID si "5" dir.
			
		Senaryo 5 Sadece "1" lardan oluþan Anahtar için :
			
			->Ýlk önce orjinal metin veritabanýnda ID sine göre alýnýp þifreleme ve sonrasýnda çözümleme iþlemlerine tabi tutulmuþtur.
			->Senaryo 5 için gerekli metin ID si "6" dir.
			
		
		Senaryo 5 Deðerlendirme :
				Anahtralarý sadece 1 ve ya 0 lardan oluþmasýna rahmen algoritma baþarýlý bir þekilde þireleme sonucu ortaya koyup ardýndan çözümleme yapýldýgýnda
			düz metnin orjinal haline ulaþýlmýþtýr.
				
		Projenin 3. adýmý :	
				
				->Algoritmanýn yapýsý : 50 karakterden oluþan bir array içerisinden rastgele indisden bir karakter seçilir ve seçilen bu karakter array dan cýkarýlýr.
				Bu iþlem istenilen uzunlukta metin oluþurulana kadar devam eder. Algoritmanýn kodu aþaðýdaki gibidir ;
					
					public function RastgeleKarakterMetniOlustur($KarakterDisizi,$metin,$karakterSayisi)
						{
							$arrayLength=count($KarakterDisizi);# Karakter dizisinin boyutu hesaplanýr
							
							if ($karakterSayisi==0) {#karakter sayisi istenilen metin uzunluðunu temsil eder.
								return $metin;
							}

							if ($arrayLength==0) {//Karakter dizisinde eleman kalmadýysa dizi yenilenir.

								return $this->RastgeleKarakterMetniOlustur($this->_KarakterDizisi,$metin,$karakterSayisi-1);
							}
							$random=rand(0,$arrayLength-1);//rastgele indis oluþturulur.
							$yeniKarakter=$KarakterDisizi[$random];//rastgele indisten karakter çekilir.
							$metin.=$yeniKarakter;//çekilen karakter metine aktarýlýr
							unset($KarakterDisizi[$random]);//çekilen karakter karakter dizisinden çýkarýlýr.
							$yeniKarakterDisizi=array_values($KarakterDisizi); //karakter dizisinin son hali yeni karakter dizisine aktarýlýr.
							
							return $this->RastgeleKarakterMetniOlustur($yeniKarakterDisizi,$metin,$karakterSayisi-1);
						}
				->Bu kod bloðu "RastgeleKarakter.php" dosyasýnýn içerisinde mevcuttur.	
				->Algoritmanýn çalýþmasý sonucunda karalterleriz frekanslarý hesaplanýp standart sapma hesabý yapýlmýþtýr. 
				->Algoritma için 4 yorum denemesi yapýlmasý sonucunda hesaplanan standart sapmalar 0.5'in altýnda kalmýþtýr.
				->Sonuçlar aþaðýdaki gibidir;
					
					->Yorum-1 için ;
						->Toplam karakter sayýsý : 600
						->Standart sapma 		 : ~0.42
						
					->Yorum-2 için ;
						->Toplam karakter sayýsý : 450
						->Standart sapma 		 : ~0.37
					
					->Yorum-31 için ;
						->Toplam karakter sayýsý : 300
						->Standart sapma 		 : ~0.30
						
					->Yorum-4 için ;
						->Toplam karakter sayýsý : 150
						->Standart sapma 		 : ~0.02
					
					->Sonuç :
						->Denemeler sonucunda orataya çýkan standart sapmalarýn düþük çýkmasý algoritmanýn bu seviyede baþarýlý olduðunu göstermektedir.
		
		Projenin 4. adýmý :
		
				->Dijital imza algoritmasý olarak Php nin openssl kütüphanesinden faydalanýlmýþtýr.
				->Bu kütüphanenin kodlarý "DigitalSign.php" dosyasýnýn içerisindeki metotlarda kullanýlmýþtýr.
				->Gizli ve açýk anahtarlar "tbl_digitalkey" tablosunda tutulmaktadýr. "DigitalKeyID" 1'e eþit olan anahtarlar Da Vinci'ye aittir,
				2'ye eþit olan anahtarlar ise Bob Ross'a aittir.
				
				Algoritmanýn Kodlanmasý :
					->Metin olarak projenin 3. aþamasýnda kullanýlar rastgele gülme yorumlarýndan 150 karakter boyutunda olaný
					seçilmiþtir.
					->"index.php" dosyasýnýn 726. satýrýnda bu metin veri tabanýndan elde edilmiþtir.
					->727. satýrda Da Vinci'ye ait anahtarlar veri tabanýndan elde edilmiþtir.
					->728. satýrda Bob Ross'a ait anahtarlar veri tabanýndan elde edilmiþtir.
					->729. satýrda metin Da Vinci'ye ait gizli anahtarla þifrelenmiþtir.
					->730. satýrda ise imzayý doðrulama iþlemi yapýlmýþtýr.
					
					->Kodlar aþaðýdaki gibidir;
						<?php 

							$db=new DbOperations();
							$ds=new DigitalSign();
							if ($db->Connect()) 
							{
							$yorumModel=$db->GetYorum(4);
							$keyModelDaVinci=$db->GetKeys(1);//Davncinin keyi
							$keyModelBobRoss=$db->GetKeys(2);//Bob Ross un Keyi
							$signature=$ds->SignData($yorumModel->_Yorum,$keyModelDaVinci);//Deðiþiklik yaplýlacak yer
							$result=$ds->ValidateData($yorumModel->_Yorum,$signature,$keyModelDaVinci->_PubKey);		
							}		
							?>
					->Deðiþiklik olarak 729. satýrda metni imzalama kodlarýný barýndýran "SignData" adlý metoda parametre olarak Bob Ross'a ait
					"$keyModelBobRoss" anahtar bilgilerini tutan parametre gönderilirse , imzayý dogrulama kodlarýný barýndýran "ValidateData" 
					metodu çaðrýldýðýnda bu metot parametre olarak Da Vinci'ye ait açýk anahtarý aldýðý için imza doðrulanamayacaktýr.