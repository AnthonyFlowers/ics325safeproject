
$(document).ready(function (){
  $("#btnGenJS").click(function(){
    clearTable(); // Clear table before adding a new one
    var dataset = [];
    // dataset stores input values
    var dataset = {};
    dataset.baseURL = $("#baseURL").val();
    dataset.programIID = $("#programIID").val();
    dataset.agileRT = $("#agileRT").val();
    dataset.teamNames = $("#teamNames").val();
    generateTable(dataset);
  });
});

// Generates table and displays it on the page
function generateTable(dataset){
  var steps = 6; // Number of steps the program will go through
  generateTHead(dataset, steps);
  var teamNames =  dataset.teamNames.split(",");
  var rowNum = 1; // To track the row number
  for (var teamName in teamNames){
    var row = generateTRow(dataset.baseURL, rowNum,
      teamNames[teamName].trim(), dataset.programIID, steps);
    $("#dataTable").append(row);
    rowNum += 1;
  }
}

function clearTable(){
  $("#dataTable").html("");
}

// Add table head to generated table
function generateTHead(dataset, steps){
  var tableHead = $("<tr></tr>");
  tableHead.append($("<th></th>").text("No.")); // Add No. header
  tableHead.append($("<th></th>").text("Team Name")); // Add Team Name header
  // Add headers for each step
  for (var step = 0; step < steps; step += 1){
    tableHead.append($("<th></th>").text(dataset.programIID + "-" + (step + 1)));
  }
  tableHead.append($("<th></th>").text(dataset.programIID + "-IP"));
  $("#dataTable").append(tableHead);
}

// Add row to table
function generateTRow(baseURL, number, teamName, iterationID, steps){
  var row = $("<tr></tr>");
  row.append($("<td>" + number + "</td>"));
  row.append($("<td>" + teamName + "</td>"));
  for (var step = 0; step < steps; step += 1){
    row.append($("<td></td>").append(generateLink(baseURL, iterationID, teamName, step + 1)));
  }
  row.append($("<td></td>").append(generateLink(baseURL, iterationID, teamName, "IP")));
  return row;
}

// Method to generate links
// <a href="baseURL?=iterationID-step_teamName"></a>
function generateLink(baseURL, iterationID, teamName, step){
  var url = baseURL + "?id=" + iterationID + "-" + step + "_" + teamName;
  var link = $("<a></a>");
  link.attr("href", url); // Set link href
  link.attr("target", "_blank"); // Open in new tab
  link.attr("title", url); // Open in new tab
  link.html((iterationID + "-" + step)); // Set link text
  return link;
}
