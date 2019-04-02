<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>



<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "SUMMARY";


  include("./nav.php");
  global $db;

  ?>

<!DOCTYPE HTML>



<head>

 </head>

<body>

  <table id="summaryContent">
    <tr>
      <td><h3 class="rightTextAlign topVertAlign">Program Increment (PI):</h3></td>
      <td><select><?php echo generate_pii_options(); ?></select></td>
    </tr>
    <tr>
      <td><h3>Agile Release Trains</h3></td>
      <td><h3>Agile Teams</h3></td>
    </tr>
    <tr>
      <td>
        <!--  -->
        <table id="artTable" class="summaryTable topVertAlign">
          <tr>
            <th>Agile Release Train</th><th>Total Capacity for PI (Story Points)</th>
          </tf>
          <?php
            $art_result = get_teams_by_type("ART");

            // Add rows for each team
            while($art = $art_result->fetch_assoc()){
              echo "<tr>" .
                    "<td>" . $art['team_name'] . "</td>" .
                    "<td>". $art['total'] . "</td>" .
                   "</tr>";
            }
          ?>
        </table>
      </td>
      <td>
        <table id="atTable" class="summaryTable topVertAlign">
          <tr>
            <th>Agile Train</th><th>Total Capacity for PI (Story Points)</th>
          </tf>
          <?php
            $art_result = get_teams_by_type("AT");

            // Add rows for each team
            while($art = $art_result->fetch_assoc()){
              echo "<tr>" .
                    "<td>" . $art['team_name'] . "</td>" .
                    "<td>". $art['total'] . "</td>" .
                   "</tr>";
            }
          ?>
        </table>
      </td>
    </tr>
  </table>

  <script type="text/javascript">
  window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "Agile Release Trains",
        fontSize: 20
      },
      data: [
       {
         type: "column",
         indexLabelPlacement: "inside",
         indexLabelOrientation: "horizontal",
         dataPoints: [
           <?php
            $art_result = get_teams_by_type("ART");
            // Add data for each team
            while($art = $art_result->fetch_assoc()){
              echo "{ y: ". $art['total'] .", label:\"". $art['team_name'] ."\"},\n";
            }
           ?>


         ]
       }
      ]
    });

	 var chart2 = new CanvasJS.Chart("chartContainer2",
    {
      title:{
        text: "Agile Teams",
        fontSize: 20
      },

      data: [
       {
         type: "column",

         indexLabelPlacement: "outside",
         indexLabelOrientation: "horizontal",
         dataPoints: [
           { x: 1, y: 596, label: "ART_0_Team1" },
           { x: 2, y: 442, label: "ART_0_Team2" },
           { x: 3, y: 393, label: "ART_0_Team3" },
           { x: 4, y: 377, label: "ART_0_Team4" },
		   { x: 5, y: 377, label: "ART_0_Team5" }
         ]
       }
      ]
    });

    chart.render();
	chart2.render();

  }
  </script>
 <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>



 <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>



  <div id="chartContainer" style="height: 300px; width: 50%;"></div>

  <div id="chartContainer2" style="height: 300px; width: 50%;"></div>



</body>

</html>




<?php include("./footer.php"); ?>
