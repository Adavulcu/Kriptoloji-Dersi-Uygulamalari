<?php 

	/**
	 * 
	 */
	class SenaryoModel
	{
		public $_SifreliMetinID;
		public $_SifresizMetinID;
		public $_KeyID;
		public $_SifresizMetin;
		public $_SifreliMetin;
		public $_Key;
		public $_CozulmusMetin;

		function __construct() 
    { 
        $a = func_get_args(); 
        $i = func_num_args(); 
        if (method_exists($this,$f='__construct'.$i)) { 
            call_user_func_array(array($this,$f),$a); 
        } 
    } 

		function __construct2($sifresizMetinID,$sifresizMetin)
		{
			$this->_SifresizMetinID=$sifresizMetinID;			
			$this->_SifresizMetin=$sifresizMetin;
		
		}

		function __construct7($sifreliMetinID,$sifresizMetinID,$keyID,$sifreliMetin,$sifresizMetin,$key,$cozulmusMetin)
		{
			$this->_SifresizMetinID=$sifresizMetinID;
			$this->_SifreliMetinID=$sifreliMetinID;
			$this->_KeyID=$keyID;
			$this->_SifreliMetin=$sifreliMetin;
			$this->_SifresizMetin=$sifresizMetin;
			$this->_Key=$key;
			$this->_CozulmusMetin=$cozulmusMetin;
		}

	

	}

 ?>