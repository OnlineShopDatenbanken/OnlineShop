function Init() {
}

function allOrdersList(allOrders) {
    table = document.getElementById("allOrdersTable");
    trHeader = document.createElement("tr");

    thId = document.createElement("th");
    thId.textContent = "ID";

    thCustomer = document.createElement("th");
    thCustomer.textContent = "Customer";

    thPrice = document.createElement("th");
    thPrice.textContent = "Price";

    console.log(allOrders);
}