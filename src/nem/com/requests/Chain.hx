package nem.com.requests;
import js.Promise;
import nis.Block;
import nis.BlockHeight;
import nis.CommunicationTimeStamps;


extern class Chain {

	function height( endpoint:Endpoint ):Promise<BlockHeight>;
	function lastBlock( endpoint:Endpoint ):Promise<Dynamic>;
	function time( endpoint:Endpoint ):Promise<CommunicationTimeStamps>;
	
}