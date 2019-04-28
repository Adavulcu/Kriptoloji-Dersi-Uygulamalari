<?php
include 'KarakterModel.php';
class RastgeleKarakter{

	public $_KarakterDizisi= array('a','A','b','B','c','C','d','D','e','E','f','F','g','G','H','h','i','I','j','J','k','K','l','L','m','M'
									,'n','N','o','O','p','P','r','R','q','Q','s','S','t','T','w','W','v','V','x','X','y','Y','z','Z');


	private $_KatakterSayisi;

	function __construct() 
    { 
        $a = func_get_args(); 
        $i = func_num_args(); 
        if (method_exists($this,$f='__construct'.$i)) { 
            call_user_func_array(array($this,$f),$a); 
        } 
    } 

    function __construct1($KarekterSayisi)
    {
    	$this->_KatakterSayisi=$KarekterSayisi;
    }

   public function RastgeleMetinGetir()
    {
    	$yeniKarakterDisizi=$this->_KarakterDizisi;
    	$metin=$this->RastgeleKarakterMetniOlustur($yeniKarakterDisizi,'',$this->_KatakterSayisi);
    	
    	return $metin;
    	
    }

    public function FrekansGetir($metin)
    {
    	$list=array();
    	foreach (count_chars($metin, 1) as $bayt => $kac) {
    	array_push($list,new KarakterModel(chr($bayt),$kac));
  		 #echo "<script>console.log('Dizgede $kac tane ".chr($bayt)." numaralı karakter var.');</script>";
			}
		for ($i=0; $i <count($list) ; $i++) { 
			echo "<script>console.log('".$list[$i]->_Karakter." karakterinden ".$list[$i]->_Adet." adet vardır .');</script>";
		}
		#echo "<script>console.log('".gettype($list).");</script>";
		return $list;	
    }


    public function RastgeleKarakterMetniOlustur($KarakterDisizi,$metin,$karakterSayisi)
    {
    	$arrayLength=count($KarakterDisizi);# Karakter dizisinin boyutu hesaplanır
    	
    	if ($karakterSayisi==0) {#karakter sayisi istenilen metin uzunluğunu temsil eder.
    		return $metin;
    	}

    	if ($arrayLength==0) {//Karakter dizisinde eleman kalmadıysa dizi yenilenir.

    		return $this->RastgeleKarakterMetniOlustur($this->_KarakterDizisi,$metin,$karakterSayisi-1);
    	}
    	$random=rand(0,$arrayLength-1);//rastgele indis oluşturulur.
    	$yeniKarakter=$KarakterDisizi[$random];//rastgele indisten karakter çekilir.
    	$metin.=$yeniKarakter;//çekilen karakter metine aktarılır
    	unset($KarakterDisizi[$random]);//çekilen karakter karakter dizisinden çıkarılır.
    	$yeniKarakterDisizi=array_values($KarakterDisizi); //karakter dizisinin son hali yeni karakter dizisine aktarılır.
    	
    	return $this->RastgeleKarakterMetniOlustur($yeniKarakterDisizi,$metin,$karakterSayisi-1);
    }

    public function StandartSapmaHesapla($liste)
    {
        $elemanSayisi=count($liste);
        $toplamDeper=0;;
        for ($i=0; $i <$elemanSayisi ; $i++) { 
            $toplamDeper+=$liste[$i]->_Adet;
        }
        $ortalama=$toplamDeper/$elemanSayisi;
        echo "<script>console.log('Oratalama : ".$ortalama."');</script>";
       
        $toplamFark=0;
        for ($i=0; $i <$elemanSayisi ; $i++) { 
           $toplamFark+=pow($liste[$i]->_Adet-$ortalama,2);
        }
         $standartSapma=sqrt(1/($elemanSayisi-1)*$toplamFark);
         echo "<script>console.log('Standart Sapma : ".$standartSapma."');</script>";
         return $standartSapma;
    }
}
?>