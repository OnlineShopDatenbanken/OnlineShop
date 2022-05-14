function Init() {
}

function allOrdersList(allOrders) {
    table = document.getElementById("allOrders");
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

    // for (let i = 0; i < allOrders.length; i++) {
    //     tr = document.createElement("tr");
    //     tr.setAttribute("id", allOrders[i].id);
    // }

    console.log(allOrders);

    for (let i = 0; i < allOrders.length; i++) {
        trCurr = document.createElement("tr");
        thId = document.createElement("th");
        thId.textContent = allOrders[i].id;

        thCustomer = document.createElement("th");
        thCustomer.textContent = allOrders[i].firstname + " " + allOrders[i].lastname;

        thPrice = document.createElement("th");
        thPrice.textContent = allOrders[i].totalprice + "$";

        trCurr.appendChild(thId);
        trCurr.appendChild(thCustomer);
        trCurr.appendChild(thPrice);

        table.appendChild(trCurr);
    }

}