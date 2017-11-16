package;
import browserify.Require;
import haxe.Json;
import js.Promise;
import js.jquery.JQuery;
import nem.Nem;

import nem.com.websockets.Connector;

class Websockets {
	
	static var nem:Nem;
	static var endpoint:Dynamic;
	static var date:Date;
	static var connector:Connector;
	static var address;
	
	static function main() {
		
		var nem_sdk = Require.require( 'nem-sdk' );
		nem = Reflect.getProperty( nem_sdk, 'default' );
		
		// Create an NIS endpoint object
		endpoint = nem.model.objects.create( 'endpoint' )( nem.model.nodes.defaultTestnet, nem.model.nodes.defaultPort );
		
		// Address to subscribe
		address = "TBCI2A67UQZAKCR6NS4JWAEICEIGEIM72G3MVW5S";
		
		// Create a connector object
		connector = nem.com.websockets.connector.create( endpoint, address );
		
		// Set start date of the monitor
		date = Date.now();
		
		// Add event to the stream div
		new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Starting monitor...</p>' );
		
		// Try to establish a connection
		connect( connector );
	}
	
	static function connect( connector:Connector ):Promise<Void> {
		return connector.connect().then( function( b:Bool ) {
			
			// Set time
			date = Date.now();
			
			// If we are here, we are connected
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Connected to: ' + connector.endpoint.host +'</p>' );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to errors</p>' );
			
			// Subscribe to errors channel
			nem.com.websockets.subscribe.errors( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received error</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			} );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to new blocks</p>' );
			
			// Subscribe to new blocks channel
			nem.com.websockets.subscribe.chain.blocks( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received a new block</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			});
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to recent transactions</p>' );
			
			// Subscribe to recent transactions channel
			nem.com.websockets.subscribe.account.transactions.recent( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received recent transactions</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			} );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to account data of '+ connector.address +'</p>' );
			
			// Subscribe to account data channel
			nem.com.websockets.subscribe.account.data( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received account data</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			} );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to unconfirmed transactions of '+ connector.address +'</p>' );
			
			// Subscribe to unconfirmed transactions channel
			nem.com.websockets.subscribe.account.transactions.unconfirmed( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received unconfirmed transaction</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			} );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Subscribing to confirmed transactions of '+ connector.address +'</p>' );
			
			// Subscribe to confirmed transactions channel
			nem.com.websockets.subscribe.account.transactions.confirmed( connector, function( res:Dynamic ) {
				// Set time
				date = Date.now();
				// Show event
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Received confirmed transaction</p>' );
				// Show data
				new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( res ) + '</pre>' );
			});
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Requesting account data of ' + connector.address +'</p>' );
			
			// Request account data
			nem.com.websockets.requests.account.data( connector );
			
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Requesting recent transactions of ' + connector.address +'</p>' );
			
			// Request recent transactions
			nem.com.websockets.requests.account.transactions.recent( connector );
			
		}, function( err:Dynamic ) {
			// Set time
			date = Date.now();
			// Show event
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> An error occured</p>' );
			// Show data
			new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ': <pre>' + Json.stringify( err ) + '</pre>' );
			// Try to reconnect
			reconnect();
		});
	}
	
	static function reconnect() {
		
		// Replace endpoint object
		endpoint = nem.model.objects.create( "endpoint" )( nem.model.nodes.testnet[1].uri, nem.model.nodes.websocketPort );
		
		// Replace connector
		connector = nem.com.websockets.connector.create( endpoint, address );
		
		// Set time
		date = Date.now();
		
		// Show event
		new JQuery( '#stream' ).append( '<p><b>' + date.toString() + ':</b> Trying to connect to: ' + endpoint.host + '</p>' );
		
		// Try to establish a connection
		connect( connector );
		
	}

}