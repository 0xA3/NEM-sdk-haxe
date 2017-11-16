package nem.model;
import js.Promise;


extern class Transactions {

	function prepare( objectName:String ):Dynamic;
	function send( common:Dynamic, entity:Dynamic, endpoint:Dynamic ):Promise<Dynamic>;
	function prepareMessage( common:Dynamic, tx:Dynamic ):Dynamic;
}