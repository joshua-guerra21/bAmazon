var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    PORT: 3306,
    user:"root",
    password: "jguerra21",
    database: "Bamazon"
});

connection.connect(function(err) {
    if (err) throw (err);
    console.log("connected as id " + connection.threadId);
    Inventory();
});

var purchases = [];

var Inventory = function() {
    console.log(
`ID | PRODCUT NAME | DEPARTMENT NAME | PRICE | ITEM QUANTITY`)
connection.query("SELECT * FROM products", function(err, res) {
    for (var i =0; i < res.length; i++) {
        console.log(`
${res[i].id} | ${res[i].product_name} | ${res[i].department_name} | $${res[i].price} | ${res[i].stock_quantity}`)
    }
    console.log("________________________");
});
};

var itemPurchases = function() {
    inquirer.prompt([{
        name: "itemID",
        type: "input",
        message: "Type in the number of the ID of the item you wish to buy"
    }, {
        name: "Quantity",
        type: "input",
        message: "How many of these items would you like to buy?"
    }]).then(function(answer) {
        connection.query("SELECT * FROM products WHERE products.id = ?", [answer.itemID], function(err, res) {
            if (res[0].id == answer.itemID && res[0].stock_quantity >= parseInt(answer.Quantity)) {
                var price = res[0].price * parseInt(answer.Quantity);
                console.log("Successful!");
                connection.query("UPDATE products SET ? WHERE ?", [{
                    stock_quantity: res[0].stock_quantity - parseInt(answer.Quantity)
                }, {
                    id: res[0].id
                }], function(err, res) {
                    console.log("Total price: $" + price);
                }
                );
            } else if (res[0].id == answer.itemID && res[0].stock_quantity < parseInt(answer.Quantity)) {
                console.log("Not enough stock for this purhcase");
                Inventory();
            }
        })
    })
}