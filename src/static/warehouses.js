function printData(allWarehouses, warehouseProducts){
    console.log(allWarehouses);
    console.log(warehouseProducts);
}

function allWarehousesList(allWarehouses, warehouseProducts){
    console.log(allWarehouses);

    table = document.getElementById("allWarehouses");
    trHeader = document.createElement("tr");

    thId = document.createElement("th");
    thId.textContent = "Warehouse-ID";

    thPostal = document.createElement("th");
    thPostal.textContent = "Postal-Code";

    thNoEmp = document.createElement("th");
    thNoEmp.textContent = "Number of Employees";

    trHeader.appendChild(thId);
    trHeader.appendChild(thPostal);
    trHeader.appendChild(thNoEmp);

    table.appendChild(trHeader);

        for (let i = 0; i < allWarehouses.length; i++) {
        trCurr = document.createElement("tr");

        trCurr.addEventListener("click", function handleClick(event)
        {
            let textVar = "";
            let htmlVar = "";

            for (let j = 0; j < warehouseProducts.length; j++) {
                if (allWarehouses[i].id == warehouseProducts[j].warehouseid) {
                    textVar = warehouseProducts[j].title + ": " + warehouseProducts[j].quantity;
                    htmlVar = htmlVar + "<p>" + textVar + "</p>";
                }
            }
            Swal.fire(
                {   title: "Available Items for Warehouse " + allWarehouses[i].id,
                    html: htmlVar,
                    confirmButtonColor: "#49BEAA"
                }
            )
        });
        thId = document.createElement("th");
        thId.textContent = allWarehouses[i].id;

        thPostal = document.createElement("th");
        thPostal.textContent = allWarehouses[i].postcalcode;

        thNoEmp = document.createElement("th");
        thNoEmp.textContent = allWarehouses[i].totalnoofemployees;

        trCurr.appendChild(thId);
        trCurr.appendChild(thPostal);
        trCurr.appendChild(thNoEmp);

        table.appendChild(trCurr);
    }
}