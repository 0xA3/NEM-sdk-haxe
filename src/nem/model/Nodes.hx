package nem.model;


extern class Nodes {

	var defaultTestnet:String;
	var defaultMainnet:String;
	var defaultMijin:String;
	var mainnetExplorer:String;
	var testnetExplorer:String;
	var mijinExplorer:String;
	
	var searchOnTestnet:Array<Dynamic>;
	var searchOnMainnet:Array<Dynamic>;
	var searchOnMijin:Array<Dynamic>;
	
	var testnet:Array<Dynamic>;
	var mainnet:Array<Dynamic>;
	var mijin:Array<Dynamic>;
	
	var apostilleAuditServer:String;
	var supernodes:String;
	
	var defaultPort:Int;
	var mijinPort:Int;
	var websocketPort:Int;
	
	var marketInfo:String;
	var btcPrice:String;
	

}