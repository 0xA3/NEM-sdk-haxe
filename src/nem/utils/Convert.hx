package nem.utils;
import js.html.Uint8Array;


extern class Convert {

	function hex2ua_reversed( hexx:String ):Uint8Array;
	function hex2ua( hexx:String ):Uint8Array;
	function ua2hex( ua:Uint8Array ):String;
	function hex2a( hexx:String ):String;
	function utf8ToHexa( str:String ):String;
	function ua2words( ua:Uint8Array, uaLength:Int ):Dynamic;
	function words2ua( destUa:Uint8Array, cryptowords:Dynamic ):Uint8Array;
	function rstr2utf8( input:String ):String;
	function utf82rstr( input:String ):String;

}