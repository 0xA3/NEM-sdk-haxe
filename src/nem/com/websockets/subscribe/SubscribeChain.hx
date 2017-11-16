package nem.com.websockets.subscribe;
import nem.com.websockets.Connector;


extern class SubscribeChain {
	
	// chain.js - subscribeNewHeight
	function height( connector:Connector, callback:Dynamic ):Dynamic;
	
	// chain.js - subscribeNewBlocks
	function blocks( connector:Connector, callback:Dynamic ):Dynamic;
}