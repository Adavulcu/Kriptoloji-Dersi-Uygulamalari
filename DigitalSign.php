<?php
/**
 * 
 */


class DigitalSign 
{
	
	function __construct()
	{
		
	}




	
	public function SignData($data,$keyModel)
	{
		
		openssl_sign($data, $signature, $keyModel->_PriKey, OPENSSL_ALGO_SHA256);

		return $signature;
	}

	public function ValidateData($data,$signature,$public_key_pem)
	{
		$r = openssl_verify($data, $signature, $public_key_pem, "sha256WithRSAEncryption");

				if ($r) {
				 	return " İMZA DOĞRULANMIŞTIR";
				}
				elseif ($r==0) {
					 return " HATA ! : İMZA DOĞRULANAMAMIŞTIR.";

				}
	}
}
?>