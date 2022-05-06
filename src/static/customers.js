function Init()
{
}

function setNoOfCustomers(noOfCustomersPerMonth) {
    noOfCustomersDiv = document.getElementById("noOfCustomers");
    noOfCustomersDiv.textContent += noOfCustomersPerMonth[noOfCustomersPerMonth.length-1];
}

function showCustomersChart (noOfNewCustomersPerMonth, noOfCustomersPerMonth, months)
{
    const ctx2 = document.getElementById('customerDevelopment').getContext('2d');

    const chartData = {
            labels: months,
            datasets: [{
                type: 'bar',
                label: '# of new customers',
                data: noOfNewCustomersPerMonth,
                backgroundColor: [
                    'rgba(120, 206, 192, 0.3)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)'
                ],
                yAxisID: 'noOfNewCustomersPerMonth',
                borderWidth: 0
            }, {
                type: 'line',
                label: 'total # of customers',
                data: noOfCustomersPerMonth,
                backgroundColor: [
                    'rgba(120, 206, 192, 0.3)'
                ],
                borderColor: [
                    'rgba(73, 190, 170, 1)'
                ],
                borderWidth: 3,
                yAxisID: 'noOfCustomersPerMonth'
            },
            ]
        };

    const myChart2 = new Chart(ctx2, {
        type: 'line',
        data: chartData,
        options: {
            scales: {
                noOfNewCustomersPerMonth: {
                    beginAtZero: true,
                    position: 'left',
                    title: {
                        display: true,
                        text: '# of new customers'
                    }
                },
                noOfCustomersPerMonth: {
                    beginAtZero: true,
                    position: 'right',
                    grid: {
                        drawOnChartArea: false
                    },
                    title: {
                        display: true,
                        text: 'total # of customers'
                    }
                }
            }
        }
    });
}

function populateTopFiveCustomersList(topFiveCustomers)
{
    table = document.getElementById("topFiveCustomers")
    trHeader = document.createElement("tr")
    thId = document.createElement("th")
    thId.textContent = "ID"
    thFirstName = document.createElement("th")
    thFirstName.textContent = "First Name"
    thLastName = document.createElement("th")
    thLastName.textContent = "Last Name"
    thNoOfOrders = document.createElement("th")
    thNoOfOrders.textContent = "# of Orders"

    trHeader.appendChild(thId)
    trHeader.appendChild(thFirstName)
    trHeader.appendChild(thLastName)
    trHeader.appendChild(thNoOfOrders)

    console.log(topFiveCustomers)

    table.appendChild(trHeader)
    for (let i = 0; i < topFiveCustomers.length; i++)
    {
        trCurr = document.createElement("tr")
        thCurrId = document.createElement("th")
        thCurrId.textContent = topFiveCustomers[i].id
        thCurrFirstName = document.createElement("th")
        thCurrFirstName.textContent = topFiveCustomers[i].firstname
        thCurrLastName = document.createElement("th")
        thCurrLastName.textContent = topFiveCustomers[i].lastname
        thCurrNoOfOrders = document.createElement("th")
        thCurrNoOfOrders.textContent = topFiveCustomers[i].nooforders

        trCurr.appendChild(thCurrId)
        trCurr.appendChild(thCurrFirstName)
        trCurr.appendChild(thCurrLastName)
        trCurr.appendChild(thCurrNoOfOrders)
        table.appendChild(trCurr)
    }

}

function drawRegionsMap(numOfCustomersPerCountry) {

    rawData = Array.from(numOfCustomersPerCountry);
    let adaptedData = [];
    rawData.forEach(element =>
        adaptedData.push([element['country'], element['count']]));
    header = [['Country', '# of customers']];

    let myData = Array.from(header.concat(adaptedData));
    console.log(myData);

    var data = google.visualization.arrayToDataTable(myData);

    var options = {
        colorAxis: {colors: ['#c0eced', '#4374e0']} // orange to blue
    };

    var chart = new google.visualization.GeoChart(document.getElementById('worldMap'));

    chart.draw(data, options);
}