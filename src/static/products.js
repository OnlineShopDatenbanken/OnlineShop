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

function showAvgProductRating(avgProductRatings)
{
    let sum = 0;
    for (let i = 0; i < avgProductRatings.length; i++)
    {
        sum += avgProductRatings[i].avg;
    }
    result = (sum / avgProductRatings.length).toFixed(2);

    avgProductRatingDiv = document.getElementById("avgProductRating");
    avgProductRatingDiv.textContent += result;
}

function populateAvgProductRatingsList(avgProductRatings)
{
    table = document.getElementById("avgProductRatings")
    trHeader = document.createElement("tr")
    thTitle = document.createElement("th")
    thTitle.textContent = "Product Name"
    thTitle.classList.add("avgTableTitle");
    thAvg = document.createElement("th")
    thAvg.textContent = "Average Rating"
    thAvg.classList.add("avgTableValue");

    trHeader.appendChild(thTitle)
    trHeader.appendChild(thAvg)

    table.appendChild(trHeader)
    for (let i = 0; i < avgProductRatings.length; i++)
    {
        trCurr = document.createElement("tr")
        thCurrTitle = document.createElement("th")
        thCurrTitle.textContent = avgProductRatings[i].title
        thCurrTitle.classList.add("avgTableTitle");
        thCurrAvg = document.createElement("th")
        thCurrAvg.textContent = avgProductRatings[i].avg
        thCurrAvg.classList.add("avgTableValue");

        trCurr.appendChild(thCurrTitle)
        trCurr.appendChild(thCurrAvg)
        table.appendChild(trCurr)
    }

}