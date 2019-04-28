<?php 
	/**
	 * 
	 */
	class DigitalKeyModel 
	{
		
		public $_ID;
		public $_Name;
		public $_PriKey;
		public $_PubKey;
		function __construct($id,$name,$priKey,$pubKey)
		{
			$this->_ID=$id;
			$this->_Name=$name;
			$this->_PriKey=$priKey;
			$this->_PubKey=$pubKey;
		}
	}
 ?>