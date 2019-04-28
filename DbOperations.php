<?php
include 'SenaryoModel.php';
include 'YorumModel.php';
include 'DigitalKeyModel.php';
class DbOperations{

private $_connection;
 public	function Connect(){

 	try {
     $this->_connection = new PDO("mysql:host=localhost;dbname=dbdavinci", "root", "");
	} catch ( PDOException $e ){
     print $e->getMessage();
     return 0;
	}
	 $this->_connection->query("SET CHARACTER SET utf8");
	return 1;
}


public function GetText()
{
	$data="";
	$query="SELECT * FROM tblmetin where MetinID=1";
	$result=$this->_connection->query($query)->fetch(PDO::FETCH_ASSOC);
	if ($result) {
		$data=$result['Metin'];
	}
	#$this->_connection=null;
	return $data;
}

public function GetImage()
{
	$data="";
	$query="SELECT * FROM tbl_image";
	$result=$this->_connection->query($query)->fetch(PDO::FETCH_ASSOC);
	if ($result) {
		$data=$result['Image'];
	}
	#$this->_connection=null;
	return $data;
}
public function GetSifreliMetin($Id)
{
	$model;
	$query="SELECT s2.sifresizMetin as SifresizMetin ,
			s1.SifreliMetin as SifreliMetin ,
			s1.KeyID as KeyID ,
			s2.SifresizMetinID  as SifresizMetinID , 
			s1.SifreliMetinID  as SifreliMetinID ,  
			s1.CozulmusMetin as CozulmusMetin , 
			k.Key as Anahtar 
			from tbl_sifrelimetin s1 
			left JOIN tbl_sifresizmetin s2 on s1.SifresizMetinID=s2.SifresizMetinID 
			left join tbl_key k on s1.KeyID=k.KeyID
	 		where s1.SifreliMetinID=".$Id."";
	$result=$this->_connection->query($query)->fetch(PDO::FETCH_ASSOC);
	if ($result) {
		
			$SifreliMetinID=$result['SifreliMetinID'];
			$SifresizMetinID=$result['SifresizMetinID'];
			$SifreliMetin=$result['SifreliMetin'];
			$SifresizMetin=$result['SifresizMetin'];
			$KeyID=$result['KeyID'];
			$Key=$result['Anahtar'];
			$CozulmusMetin =$result['CozulmusMetin'];
			$model=new SenaryoModel($SifreliMetinID,$SifresizMetinID,$KeyID,$SifreliMetin,$SifresizMetin,$Key,$CozulmusMetin);

		
	}
		#$this->_connection=null;
	return $model;
}




public function UpdateData($encryptedVal,$decryptedVal,$Id)
{
	
	try{
	$query=" UPDATE tbl_sifrelimetin SET SifreliMetin = :sfMetin , CozulmusMetin =:sfzMetin  WHERE SifreliMetinID = :id" ;	
	
	$pre=$this->_connection->prepare($query);
	$update=$pre->execute(array(
		"sfMetin"=>$encryptedVal,
		"sfzMetin"=>$decryptedVal,
		"id"=>$Id));

	if ($update) {
		echo "<script>console.log('Update :BAŞARILI');</script>";
	}
	else
	{
		echo "<script>console.log('Update :BAŞARISIZ');</script>";
	}
	}catch(PDOException $e)
	{
		$e->getMessage();
		echo "<script>console.log('Update :BAŞARISIZ' : '".$e."');</script>";
	}
	
}

public function InsertYorum($metin,$KarakterSayisi,$StandartSapma)
	{
		try{
			$query=" INSERT INTO tbl_yorumlar set Yorum=:m,KarakterSayisi=:k ,StandartSapma=:s" ;	
			$pre=$this->_connection->prepare($query);
			$insert=$pre->execute(array(
			"m"=>$metin,
			"k"=>$KarakterSayisi,
			"s"=>$StandartSapma	
			));
			if ($insert) {
		echo "<script>console.log('INSERT :BAŞARILI');</script>";
	}
	else
	{
		echo "<script>console.log('INSERT :BAŞARISIZ');</script>";
	}
	}catch(PDOException $e)
	{
		$e->getMessage();
		echo "<script>console.log('INSERT :BAŞARISIZ' : '".$e."');</script>";
	}
	}

public function GetYorum($Id)
{	  
	$model;
		try{
			$query=" SELECT * FROM tbl_yorumlar where YorumID=".$Id."" ;	
		
		$result=$this->_connection->query($query)->fetch(PDO::FETCH_ASSOC);
		if ($result) {
		
			$YorumID=$result['YorumID'];
			$Yorum=$result['Yorum'];
			$KarakterSayisi=$result['KarakterSayisi'];
			
			$StandartSapma=$result['StandartSapma'];
			
			$model=new YorumModel($YorumID,$Yorum,$KarakterSayisi,$StandartSapma);

		
		}
	
	else
	{
		echo "<script>console.log('SELECT :BAŞARISIZ');</script>";
	}
	}catch(PDOException $e)
	{
		$e->getMessage();
		echo "<script>console.log('SELECT :BAŞARISIZ' : '".$e."');</script>";
	}
	return $model;
	}
public function InsertKeys($id,$name,$priKey,$pubKey)
		{
		try{
			$query=" INSERT INTO tbl_digitalkey set DigitalSignKeyID=:id , Name=:n, PriKey=:Pri ,PubKey=:Pub" ;	
			$pre=$this->_connection->prepare($query);
			$insert=$pre->execute(array(
			"id"=>$id,
			"n"=>$name,
			"Pri"=>$priKey,
			"Pub"=>$pubKey	
			));
			if ($insert) {
		echo "<script>console.log('INSERT :BAŞARILI');</script>";
		}
		else
		{
			echo "<script>console.log('INSERT :BAŞARISIZ');</script>";
		}
		}catch(PDOException $e)
		{
			$e->getMessage();
			echo "<script>console.log('INSERT :BAŞARISIZ' : '".$e."');</script>";
		}
		}

public function GetKeys($id)	
		{
			$model;
			try{
			$query=" SELECT * FROM tbl_digitalkey where DigitalSignKeyID=".$id."" ;	
		
				$result=$this->_connection->query($query)->fetch(PDO::FETCH_ASSOC);
			if ($result) {
			
				$id=$result['DigitalSignKeyID'];
				$name=$result['Name'];
				$prikeyid=$result['PriKey'];				
				$pubkeuid=$result['PubKey'];
				
				$model=new DigitalKeyModel($id,$name,$prikeyid,$pubkeuid);

			
			}
	
			else
			{
				echo "<script>console.log('SELECT :BAŞARISIZ');</script>";
			}
			}catch(PDOException $e)
			{
				$e->getMessage();
				echo "<script>console.log('SELECT :BAŞARISIZ' : '".$e."');</script>";
			}
			return $model;
		}
}




?>