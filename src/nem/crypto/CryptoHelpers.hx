package nem.crypto;
import haxe.io.UInt8Array;
import haxe.extern.EitherType;

extern class CryptoHelpers {

	function toMobileKey( password:String, privateKey:String ):{ encrypted:String, salt:String };
	function derivePassSha( password:String, number:Int ):{ priv:String };
	function passwordToPrivatekey( common:Dynamic, walletAccount:Dynamic, algo:String ):EitherType<Dynamic, Bool>;
	function checkAddress( priv:String, network:Int, _expectedAddress:String ):Bool;
	function randomKey():UInt8Array;
	function decrypt( data:Dynamic ):String;
	function encrypt( data:String, key:UInt8Array ):{ cyphertext:String, iv:UInt8Array, key:UInt8Array };
	function encodePrivKey( privateKey:String, password:String ):{ cyphertext:String, iv:UInt8Array };
	function _encode( senderPriv:String, recipientPub:String, msg:String, iv:UInt8Array, salt:UInt8Array ):String;
	function encode( senderPriv:String, recipientPub:String , msg:String ):String;
	function decode( recipientPrivate:String, senderPublic:String, _payload:String ):String;
}