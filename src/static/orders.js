function allOrdersList(allOrders, orderProducts) {
    table = document.getElementById("allOrders");
    trHeader = document.createElement("tr");

    thId = document.createElement("th");
    thId.textContent = "Order-ID";

    thCustomer = document.createElement("th");
    thCustomer.textContent = "Customer";

    thPrice = document.createElement("th");
    thPrice.textContent = "Price";

    trHeader.appendChild(thId);
    trHeader.appendChild(thCustomer);
    trHeader.appendChild(thPrice);

    table.appendChild(trHeader);

    for (let i = 0; i < allOrders.length; i++) {
        trCurr = document.createElement("tr");

        trCurr.addEventListener("click", function handleClick(event)
        {
            let textVar = "";
            let htmlVar = "";

            for (let j = 0; j < orderProducts.length; j++) {
                if (allOrders[i].id == orderProducts[j].orderid) {
                    textVar = orderProducts[j].title + ": " + orderProducts[j].quantity + " pieces" + " - " + orderProducts[j].price*orderProducts[j].quantity + "$";
                    htmlVar = htmlVar + "<p>" + textVar + "</p>";
                }
            }
            Swal.fire(
                {   title: "Order-Items for Order " + allOrders[i].id,
                    html: htmlVar,
                    confirmButtonColor: "#49BEAA"
                }
            )
        });
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