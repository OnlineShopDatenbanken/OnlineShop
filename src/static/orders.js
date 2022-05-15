
function Init() {
}

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

    // for (let i = 0; i < allOrders.length; i++) {
    //     tr = document.createElement("tr");
    //     tr.setAttribute("id", allOrders[i].id);
    // }

    //console.log(allOrders);
    // console.log(orderProducts);

    for (let i = 0; i < allOrders.length; i++) {
        trCurr = document.createElement("tr");
        trCurr.addEventListener("click", function handleClick(event)
        {
            // alert(orderProducts[i].title + " " + orderProducts[i].quantity + " " + orderProducts[i].price);
            // Swal.fire(orderProducts[i].title + " " + orderProducts[i].quantity + " " + orderProducts[i].price)
            Swal.fire(
                {   title: "Order Items for Order " + allOrders[i].id,
                    html: '<table id="orderItemsTable" class="table">' +
                        '<tr>' +
                        '<th>Title</th>' +
                        '<th>Quantity</th>' +
                        '<th>Price</th>' +
                        '</tr>' +
                        '</table>',

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