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

    trHeader.appendChild(thId);
    trHeader.appendChild(thCustomer);
    trHeader.appendChild(thPrice);

    table.appendChild(trHeader);

    for (let i = 0; i < allOrders.length; i++) {
        tr = document.createElement("tr");
        tr.setAttribute("id", allOrders[i].id);
    }

    console.log(allOrders);

    for (let i = 0; i < allOrders.length; i++) {
        tdId = document.createElement("th");
        tdId.textContent = allOrders[i].id;

        tdCustomer = document.createElement("th");
        tdCustomer.textContent = allOrders[i].firstName + allOrders[i].lastName;

        tdPrice = document.createElement("th");
        tdPrice.textContent = allOrders[i].totalPrice;

        tr.appendChild(tdId);
        tr.appendChild(tdCustomer);
        tr.appendChild(tdPrice);

        table.appendChild(tr);
    }

}