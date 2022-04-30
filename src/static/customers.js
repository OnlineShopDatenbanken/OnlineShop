function Init()
{
}

function showCustomersChart (noOfNewCustomersPerMonth, noOfCustomersPerMonth, months)
{
    const ctx2 = document.getElementById('customerDevelopment').getContext('2d');

    chartData = {
            labels: months,
            datasets: [{
                type: 'bar',
                label: '# of new customers',
                data: noOfNewCustomersPerMonth,
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)'
                ],
                yAxisID: 'noOfNewCustomersPerMonth',
                borderWidth: 1
            }, {
                type: 'line',
                label: 'total # of customers',
                data: noOfCustomersPerMonth,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)'
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