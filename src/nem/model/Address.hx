package nem.model;


extern class Address {

	var alphabet:String;
	
	function b32encode( s:String ):String;
	function b32decode( s:String ):Array<UInt>;
	function toAddress( publicKey:String, networkId:Float ):String;
	function isFromNetwork( _address:String, networkId:Float ):Bool;
	function isValid( _address:String ):Bool;
	function clean( _address:String ):String;
}