<?php
	class YorumModel{
		public $_YorumID;
		public $_Yorum;
		public $_KarakterSayisi;
		public $_StandartSapma;

		function __construct($id,$yorum,$ks,$s)
		{
			$this->_YorumID=$id;
			$this->_Yorum=$yorum;
			$this->_KarakterSayisi=$ks;
			$this->_StandartSapma=$s;
		}
	}
?>