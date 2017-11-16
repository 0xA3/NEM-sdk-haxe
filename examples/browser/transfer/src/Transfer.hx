package;
import browserify.Require;
import js.Browser;
import js.jquery.Event;
import js.jquery.JQuery;
import nem.Nem;
import nis.transaction.TransferTransaction;

class Transfer {
	
	static var nem:Nem;
	static var transferTransaction:TransferTransaction;
	static var common:Dynamic;
	static var endpoint:Dynamic;
	
	static function main() {
		new JQuery( Browser.document ).ready( ready );
	}
	
	static function ready():Void {
		
		var nem_sdk = Require.require( 'nem-sdk' );
		nem = Reflect.getProperty( nem_sdk, 'default' );
		
		// Create an NIS endpoint object
		endpoint = nem.model.objects.create( 'endpoint' )( nem.model.nodes.defaultTestnet, nem.model.nodes.defaultPort );
		
		// Get an empty un-prepared transfer transaction object
		transferTransaction = nem.model.objects.get( 'transferTransaction' );
		
		// Get an empty common object to hold pass and key
		common = nem.model.objects.get( 'common' );
		
		// Set default amount in view. It is text input so we can handle dot and comma as decimal mark easily (need cleaning but provided by the library)
		new JQuery( '#amount' ).val( '0' );
		
		// On amount change we update fee in view
		new JQuery( '#amount' ).on( 'change keyup paste', updateFee );
		
		// On message change we update fee in view
		new JQuery( '#message' ).on( 'change keyup paste', updateFee );
		
		// Call send function when click on send button
		new JQuery( '#send' ).click( send );
		
		// Initialization of fees in view
		updateFee();
	}
	
	/**
	 * Function to update our fee in the view
	 */
	static function updateFee():Void {
		
		// Check for amount errors
		if ( new JQuery( '#amount' ).val() == null || !nem.utils.helpers.isTextAmountValid( new JQuery( '#amount' ).val())) return Browser.alert( 'Invalid amount !');
		
		// Set the cleaned amount into transfer transaction object
		transferTransaction.amount = nem.utils.helpers.cleanTextAmount( new JQuery( '#amount' ).val());
		
		// Set the message into transfer transaction object
		transferTransaction.message = new JQuery( '#message' ).val();
		
		// Prepare the updated transfer transaction object
		var transactionEntity = nem.model.transactions.prepare( "transferTransaction" )( common, transferTransaction, nem.model.network.data.testnet.id );
		
		// Format fee returned in prepared object
		var feeString = nem.utils.format.nemValue( transactionEntity.fee )[0] + "." + nem.utils.format.nemValue( transactionEntity.fee )[1];
		
		//Set fee in view
		new JQuery( "#fee" ).html( feeString );
	}
	
	static function send( e:Event ):Void {
		
		// Check form for errors
		if ( !new JQuery( "#privateKey" ).val() || !new JQuery( "#recipient" ).val()) return Browser.alert( 'Missing parameter!' );
		if ( null == new JQuery( "#amount" ).val() || !nem.utils.helpers.isTextAmountValid( new JQuery( "#amount" ).val())) return Browser.alert( 'Invalid amount!' );
		if ( !nem.model.address.isValid( nem.model.address.clean( new JQuery( "#recipient" ).val()))) return Browser.alert( 'Invalid recipient address!' );
		
		// Set the key in common object
		common.privateKey = new JQuery( "#privateKey" ).val();
		
		// Check key for errors
		if ( common.privateKey.length != 64 && common.privateKey.length != 66 ) return Browser.alert( 'Invalid key, length must be 64 or 66 characters !' );
		if ( !nem.utils.helpers.isHexadecimal( common.privateKey )) return Browser.alert( 'Private key must be exadecimal only!' );
		
		// Set the cleaned amount into transfer transaction object
		transferTransaction.amount = nem.utils.helpers.cleanTextAmount( new JQuery( "#amount" ).val());
		
		// Recipient address must be clean (no hypens: "-")
		transferTransaction.recipient = nem.model.address.clean( new JQuery( "#recipient" ).val());
		
		// Set message
		transferTransaction.message = new JQuery( "#message" ).val();
		
		// Prepare the updated transfer transaction object
		var transactionEntity = nem.model.transactions.prepare( "transferTransaction" )( common, transferTransaction, nem.model.network.data.testnet.id );
		
		// Serialize transfer transaction and announce
		nem.model.transactions.send( common, transactionEntity, endpoint ).then( function( res:Dynamic ) {
			
			// If code >= 2, it's an error
			if ( res.code >= 2 ) {
				Browser.alert( res.message );
			} else {
				Browser.alert( res.message );
			}
		}, function( err:Dynamic ) {
			Browser.alert( err );
		});
	}
}