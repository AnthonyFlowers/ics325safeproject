<?php
  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "TREND";
  include("./nav.php");
  global $db;

  $GLOBALS['curPIID'] = $_SESSION['curPIID'];
  $GLOBALS['parent_name'] = $_SESSION['parent_name'];

  ?>
<body>
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
            $total = 0;
            // Add data for each team
            while($art = $art_result->fetch_assoc()){
              $total += $art['total'];
              echo "{ y: ". $art['total'] .", label:\"". $art['team_name'] ."\"},\n";
            }
            echo "{ y: ". $total .", label:\"TOTAL\"},\n";
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
           <?php
            // $teams = "";
            $teams = get_teams_by_parent_name($GLOBALS['parent_name']);
            $total = 0;
            while($art = $teams->fetch_assoc()){
              $total += $art['total'];
              echo "{ y: ". $art['total'] .", label:\"". $art['team_name'] ."\"},\n";
            }
            echo "{ y: ". $total .", label:\"TOTAL\"},\n";
           ?>
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

 <div id="chartContainer" style="height: 300px; width: 100%;"></div>

 <div id="chartContainer2" style="height: 300px; width: 100%;"></div>

</body>

<?php include("./footer.php"); ?>
