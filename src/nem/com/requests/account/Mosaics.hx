package nem.com.requests.account;
import js.Promise;
import nis.Mosaic;
import nis.MosaicDefinition;


extern class Mosaics {

	function owned( endpoint:Endpoint, address:String ):Promise<Array<Mosaic>>;
	function definitions( endpoint:Endpoint, address:String, ?parent:String ):Promise<Array<MosaicDefinition>>;
	function allDefinitions( endpoint:Endpoint, address:String ):Promise<Array<MosaicDefinition>>;
	
}