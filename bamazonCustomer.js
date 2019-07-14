var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require("cli-table");
 // connection to sql database for data
var connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "root",
    database: "bamazonDB"
});
// forms mysql server connection and database
connection.connect(function(err){
    if (err) throw err;
    console.log("Thank you for chosing Bamazon!")
   productSearch()

});

// items for the table 
var showItems = function(){
    let query = "Select * FROM products";
    connection.query(query, function(err, res){
        if (err) throw err;
        let showItemsTable = new Table({
            head: ["Item ID", "Product Name", "Department Name", "Price", "Quantity" ],
            colWidths: [10, 25, 20, 10, 10]
        });
        // for (let i=0; i < res.length; i++){
            showItemsTable.push(
                [res[0].item_id, res[0].product_name, res[0].department_name, res[0].price, res[0].stock_quantity]
            );
        // }
        console.log("****************************************")
        console.log(showItemsTable.toString())
          
        
    });
}

// Determine the items the customer wants to buy
function productSearch(){
    inquirer
    .prompt([{
        name: "ID",
        type: "input",
        message: "What is the ID of  item you would like to buy?",
    },
    {
      name: "Quantity",
      type: "input",
      message: "How many would you like to buy?", 
    }
        
])
.then(function(answer){
    let itemID = answer.ID;
    let itemQuantity = answer.QUANTITY;
    buyItems(itemID, itemQuantity);
})
    
    
};

function buyItems(id, quantity) {
    //console.log("Buy Items Function Started! ")
    connection.query("SELECT * FROM products WHERE item_id = " + id, function (err, res) {
        if (err) throw err;
        //console.log(res)
        if (quantity >= res[0].stock) {
            let totalCost = res[0].price * quantity;
            console.log("Your total cost for " + quantity + " " + res[0].name + " is " + totalCost + ".")
            console.log("Thank you for shopping at Bamazon! Have a wonderful day!")
            console.log("\n")
            console.log("\n")
            connection.query("UPDATE products SET stock = stock - " + quantity + " WHERE id = " + id);
        } else {
            console.log("We do not have enough in stock. Please enter a different amount.")
            console.log("\n")
            console.log("\n")
        }
        showItems();
    });
};

