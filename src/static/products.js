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
          '#46AFA1',
          '#8E94F2',
          '#EDFF7A',
          '#7A306C',
          '#EF3054'
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