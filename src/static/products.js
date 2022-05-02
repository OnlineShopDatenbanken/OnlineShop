function Init()
{
}

function showRevenueChart(productCategories, revenues)
{
    const ctx2 = document.getElementById('revenuePerCategory').getContext('2d');

    const chartData = {
      labels: productCategories,
      datasets: [{
        label: 'Revenue per category',
        data: revenues,
        backgroundColor: [
          'rgb(255, 99, 132)',
          'rgb(54, 162, 235)',
          'rgb(255, 205, 86)'
        ],
        hoverOffset: 4
      }]
    };

    const myChart2 = new Chart(ctx2, {
        type: 'doughnut',
        data: chartData,
        options: {
            //maintainAspectRatio: false,
            responsive: false
        }
    });
}