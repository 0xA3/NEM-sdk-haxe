package nem.model;
import nis.NetworksInfoData;


extern class Network {

	var data:NetworksInfoData;
	
	function id2Prefix( id:Int ):String;
	function id2Char( id:Int ):String;
	function char2Id( startChar:String ):Int;
	function getVersion( val:Int, network:Int ):Int;
	
}