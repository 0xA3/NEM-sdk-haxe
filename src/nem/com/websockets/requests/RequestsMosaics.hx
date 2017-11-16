package nem.com.websockets.requests;
import nem.com.websockets.Connector;


extern class RequestsMosaics {
	
	// account.js - requestMosaics
	function owned( connector:Connector, address:String ):Dynamic;
	
	// account.js - requestMosaicDefinitions
	function definitions( connector:Connector, address:String ):Dynamic;
}