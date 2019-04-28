Proje Php dilinde yaz�lm�� ve veri taban� olarak Mysql kullan�m��t�r.

	Projenin �al��t�r�lmas� i�in ad�mlar:
        1.  Bilgisayarda Wampserver'in 3.7.1 verisiyonu ve ya bu versiyonla uyumlu bir versiyonu kurulu olmal�d�r.
	2.  Wampserver https://sourceforge.net/projects/wampserver/ linki �zerinden indirebilirsiniz.
	3.  Kurulum tamamland�ktan sonra localhost�n 8080 portunda �al���p �al��mad��a bak�n�z. e�er �al��m�yorsa gerekli ayarlar� yap�n�n�z.
	4.  Wampserver �al��t�r�ld�ktan sonra g�rev �ubu�unda sa� tarafta olan simgeyi t�klay�n�z ve c�kan se�eneklerden 
	    phpmyadmin olan� se�iniz. Ba�ka yoldan ise http://localhost:8080/phpmyadmin adresinden veri tab�na ba�lanabilirsiniz.
	5.  E�er veri taban� sayfas�nda giri� ekran� var ise kullan�c� ad�n� "Root" ve �ifre b�l�m� no� b�rakarak veri taban�na ba�lanabilirsiniz.
	6.  �dev dosyas�n�n i�inde ".sql" uzant�l� bir dosya bulunmaktad�r. Veri taban� sayfas�nda sol tarafta "yeni" se�ene�ine
	    t�klayarak ".sql" uzant�l� dosyan�n ad� ile bir veri taban� olu�turun.
	7.  Sonra "i�e aktar" se�ene�i t�klay�n(olu�turdu�unuz veri taban�n�n t�klad�ktan sonra bu i�lemi yap�n).
	8.  ��kan sayfada "dosya se� " se�ene�ini t�klayarak ".sql" uzant�l� dosyay� se�iniz. Alt tarafta "Bi�im" se�ene�inin
	    "SQL" olmas�na dikkat edin. En olarak "git" se�ene�ini t�klay�n�z.
	9.  Bir hata ile kar��la�mad�ysan�z veri taban�n�za �dev veri taban� entegre edilmi� demektir. E�er hata varsa 6. i�leme geri d�n�n�z.
	10. �dev klas�r� localhostun �al��t��� dosya i�erisinde olmal�d�r. B�y�k ihtimalle "C:\wamp64\www" bu adresin i�inde
	    localhost dosyalar� bulunmal�d�r.
	11. Projeyi veri taban�na ba�lamak i�in "DbOperations.php" adl� dosyan�n i�erisinde  "public function Connect() " diye ge�en bir metot mevcuttur.
	    Bu metotdaki kodlar sayesinde veri taban� ba�lant�s� sa�lan�r. "$this->_connection =mysqli_connect('localhost','root','','dbdavinci');"
	    Bu kod ba�lant� kodudur ve ald��� parametrelerin anlam� �udur :
		-> Birinci parametre veri taban�n nerede �al��t���n� g�sterir. MySqli localhostta �al��t�rd���m�z i�in bu parametreye dokunmay�n.
		-> �kinci parametre veri taban�na giri� yaparken yetkili kullan�c� ad�n� g�steririr. Farkl� bir yetkili kullan�c� ile giri� yapt�ysan�z
		   gerekli de�i�ikli�i yap�n�z.
		-> ���nc� parametre veri taban�na giri� yaparken yetkili kullan�c� �ifresini g�steririr. Farkl� bir yetkili kullan�c� ile giri� yapt�ysan�z
		   gerekli de�i�ikli�i yap�n�z.
		-> D�rd�nc� parametre olu�turdu�umuz veri taban�n ismini g�sterir. E�er farkl� bir isim verdiysenin gerekli de�i�ikli�i yap�n�z.
	12. �dev dosyas� i�erisinde bulun .jpg uzant�l� resim dosyas�n�n yerini de�i�tirmeyiniz. Veri taban�nda o dosyan�n yolu tutulmaktad�r.
	13. �devi �al��t�rmak i�in son olarak web sayfas�na �u adresi giriniz "http://localhost:8080/14253024/index.php" .
	
	
	Projenin 2. ad�m� :
	
		Projede algoritma olarak AES algoritmas� kullan�lm��t�r. Kaynak olarak https://aesencryption.net/ bu siteden yaralan�lm��t�r.
	Algoritma modeli olarak CBC se�ilmi�tir. AES algoritmas�n�n �al��mas� i�in extra bir i�leme gerek yoktur.
		
		Veri tabab�n�n yap�s� :
		
		-> Hen�z �ifrelenmemi� metinler tbl_sifresizmetin tablossunda yer almaktadat�r.
		->�ifrelenmi� ve ��z�mlenmi� metinler ise tbl_sifrelimetin tablosunda yer almaktad�r.
		->Algoritma i�in gerekli Anahtarlar ise tbl_key tablosunda yer almaktad�r.
		->Veri taban� i�lemleri "DbOperations.php" adl� dosyan�n i�erisinde yap�lmaktad�r.
		
		
		
		Senaryo 1 :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 1 i�in gerekli metin a�a��daki metotla cekilmektedir.
						
						$result=$db->GetSifreliMetin(1);
						#Metoda g�nderile "1" parametresi senaryo 1 i�in gerekli olan orjinal metinin tbl_sifresizmetin tablosundaki ID numaras�d�r.
			
			->�ifreleme ��z�mleme i�lemleri
						
						$blockSize = 256;
						$aes = new AES($result->_SifresizMetin, $result->_Key, $blockSize);
						#Birinci parametre veritaban�ndan cekilen �ifrelenmemi� metindir.
						#�kinci Parametre veritaban�ndan cekilen anahtar de�eridir.
						
						
						
						$encrypted = $aes->encrypt();
						$aes->setData($encrypted);
						$decrypted=$aes->decrypt();
			->Yukardaki kod blogu b�t�n senaryolar i�in ge�erlidir.
		
		Senaryo 2 :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 2 i�in gerekli metin ID si "2" dir.
			
		Senaryo 3 :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 3 i�in gerekli metin ID si "3" dir.
			
		Senaryo 4 :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 4 i�in gerekli metin ID si "4" dir.
			
		Senaryo 5 Sadece "0" lardan olu�an Anahtar i�in :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 5 i�in gerekli metin ID si "5" dir.
			
		Senaryo 5 Sadece "1" lardan olu�an Anahtar i�in :
			
			->�lk �nce orjinal metin veritaban�nda ID sine g�re al�n�p �ifreleme ve sonras�nda ��z�mleme i�lemlerine tabi tutulmu�tur.
			->Senaryo 5 i�in gerekli metin ID si "6" dir.
			
		
		Senaryo 5 De�erlendirme :
				Anahtralar� sadece 1 ve ya 0 lardan olu�mas�na rahmen algoritma ba�ar�l� bir �ekilde �ireleme sonucu ortaya koyup ard�ndan ��z�mleme yap�ld�g�nda
			d�z metnin orjinal haline ula��lm��t�r.
				
		Projenin 3. ad�m� :	
				
				->Algoritman�n yap�s� : 50 karakterden olu�an bir array i�erisinden rastgele indisden bir karakter se�ilir ve se�ilen bu karakter array dan c�kar�l�r.
				Bu i�lem istenilen uzunlukta metin olu�urulana kadar devam eder. Algoritman�n kodu a�a��daki gibidir ;
					
					public function RastgeleKarakterMetniOlustur($KarakterDisizi,$metin,$karakterSayisi)
						{
							$arrayLength=count($KarakterDisizi);# Karakter dizisinin boyutu hesaplan�r
							
							if ($karakterSayisi==0) {#karakter sayisi istenilen metin uzunlu�unu temsil eder.
								return $metin;
							}

							if ($arrayLength==0) {//Karakter dizisinde eleman kalmad�ysa dizi yenilenir.

								return $this->RastgeleKarakterMetniOlustur($this->_KarakterDizisi,$metin,$karakterSayisi-1);
							}
							$random=rand(0,$arrayLength-1);//rastgele indis olu�turulur.
							$yeniKarakter=$KarakterDisizi[$random];//rastgele indisten karakter �ekilir.
							$metin.=$yeniKarakter;//�ekilen karakter metine aktar�l�r
							unset($KarakterDisizi[$random]);//�ekilen karakter karakter dizisinden ��kar�l�r.
							$yeniKarakterDisizi=array_values($KarakterDisizi); //karakter dizisinin son hali yeni karakter dizisine aktar�l�r.
							
							return $this->RastgeleKarakterMetniOlustur($yeniKarakterDisizi,$metin,$karakterSayisi-1);
						}
				->Bu kod blo�u "RastgeleKarakter.php" dosyas�n�n i�erisinde mevcuttur.	
				->Algoritman�n �al��mas� sonucunda karalterleriz frekanslar� hesaplan�p standart sapma hesab� yap�lm��t�r. 
				->Algoritma i�in 4 yorum denemesi yap�lmas� sonucunda hesaplanan standart sapmalar 0.5'in alt�nda kalm��t�r.
				->Sonu�lar a�a��daki gibidir;
					
					->Yorum-1 i�in ;
						->Toplam karakter say�s� : 600
						->Standart sapma 		 : ~0.42
						
					->Yorum-2 i�in ;
						->Toplam karakter say�s� : 450
						->Standart sapma 		 : ~0.37
					
					->Yorum-31 i�in ;
						->Toplam karakter say�s� : 300
						->Standart sapma 		 : ~0.30
						
					->Yorum-4 i�in ;
						->Toplam karakter say�s� : 150
						->Standart sapma 		 : ~0.02
					
					->Sonu� :
						->Denemeler sonucunda orataya ��kan standart sapmalar�n d���k ��kmas� algoritman�n bu seviyede ba�ar�l� oldu�unu g�stermektedir.
		
		Projenin 4. ad�m� :
		
				->Dijital imza algoritmas� olarak Php nin openssl k�t�phanesinden faydalan�lm��t�r.
				->Bu k�t�phanenin kodlar� "DigitalSign.php" dosyas�n�n i�erisindeki metotlarda kullan�lm��t�r.
				->Gizli ve a��k anahtarlar "tbl_digitalkey" tablosunda tutulmaktad�r. "DigitalKeyID" 1'e e�it olan anahtarlar Da Vinci'ye aittir,
				2'ye e�it olan anahtarlar ise Bob Ross'a aittir.
				
				Algoritman�n Kodlanmas� :
					->Metin olarak projenin 3. a�amas�nda kullan�lar rastgele g�lme yorumlar�ndan 150 karakter boyutunda olan�
					se�ilmi�tir.
					->"index.php" dosyas�n�n 726. sat�r�nda bu metin veri taban�ndan elde edilmi�tir.
					->727. sat�rda Da Vinci'ye ait anahtarlar veri taban�ndan elde edilmi�tir.
					->728. sat�rda Bob Ross'a ait anahtarlar veri taban�ndan elde edilmi�tir.
					->729. sat�rda metin Da Vinci'ye ait gizli anahtarla �ifrelenmi�tir.
					->730. sat�rda ise imzay� do�rulama i�lemi yap�lm��t�r.
					
					->Kodlar a�a��daki gibidir;
						<?php 

							$db=new DbOperations();
							$ds=new DigitalSign();
							if ($db->Connect()) 
							{
							$yorumModel=$db->GetYorum(4);
							$keyModelDaVinci=$db->GetKeys(1);//Davncinin keyi
							$keyModelBobRoss=$db->GetKeys(2);//Bob Ross un Keyi
							$signature=$ds->SignData($yorumModel->_Yorum,$keyModelDaVinci);//De�i�iklik yapl�lacak yer
							$result=$ds->ValidateData($yorumModel->_Yorum,$signature,$keyModelDaVinci->_PubKey);		
							}		
							?>
					->De�i�iklik olarak 729. sat�rda metni imzalama kodlar�n� bar�nd�ran "SignData" adl� metoda parametre olarak Bob Ross'a ait
					"$keyModelBobRoss" anahtar bilgilerini tutan parametre g�nderilirse , imzay� dogrulama kodlar�n� bar�nd�ran "ValidateData" 
					metodu �a�r�ld���nda bu metot parametre olarak Da Vinci'ye ait a��k anahtar� ald��� i�in imza do�rulanamayacakt�r.