package nem.model;
import nem.model.Nodes;
import nem.model.Objects;


extern class Model {
	
	var address:Address;
	var network:Network;
	var nodes:Nodes;
	var transactionTypes:TransactionTypes;
	var sinks:{ namespace:Dynamic, Mosaic:Dynamic, apostille:Dynamic };
	var wallet:Dynamic;
	var transactions:Transactions;
	var objects:Objects;
	var fees:Fees;
	var apostille:Dynamic;
	
}