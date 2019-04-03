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

<head></head>

<body>

  <table id="summaryContent">
    <tr>
      <td><h3 class="rightTextAlign topVertAlign">Program Increment (PI):</h3></td>
      <td>
        <select name="piID" onchange="this.form.submit()"><?php echo generate_pii_options(); ?></select>
      </td>
    </tr>
    <tr>
      <td><h3>Agile Release Trains</h3></td>
      <td><h3>Agile Teams</h3></td>
    </tr>
    <tr>
      <td>
        <form action="" method="POST">
          <table id="artTable" class="summaryTable topVertAlign">
            <tr>
              <th>Agile Release Train</th><th>Total Capacity for PI (Story Points)</th>
            </tf>
            <?php
              $art_result = get_teams_by_type("ART");

              $is_checked = false;
              // Add rows for each team
              while($art = $art_result->fetch_assoc()){
                // if(isset($GLOBALS['']))
                $is_selected = "";
                if(isset($_POST['parent_name']) && $_POST['parent_name'] == $art['team_id']){
                  $is_selected = "color: red;";
                }
                echo "<tr>" .
                      "<td><input class=\"remove-input-style\" type=\"radio\" id=\"". $art["team_id"] ."\" name=\"parent_name\" value=\"". $art['team_id'] ."\" onchange=\"this.form.submit()\" hidden>".
                      "<label for=\"". $art['team_id'] ."\"  style=\"". $is_selected ."\">". $art["team_name"] ."</label>".
                      "</td>" .
                      "<td>". $art['total'] ."</td>" .
                     "</tr>";
              }
            ?>
          </table>
        </form>
      </td>
      <td>
        <table id="atTable" class="summaryTable topVertAlign">
          <tr>
            <th>Agile Train</th><th>Total Capacity for PI (Story Points)</th>
          </tr>
          <?php
            $at_result = get_teams_by_parent_name("ART-602");
            if(isset($_POST['parent_name'])){
              $at_result = get_teams_by_parent_name($_POST['parent_name']);
            }

            if($at_result->num_rows > 0){
              // Add rows for each team
              while($art = $at_result->fetch_assoc()){
                echo "<tr>".
                      "<td>". $art['team_name'] ."</td>".
                      "<td>". $art['total'] ."</td>".
                     "</tr>\n";
              }
            } else {
              echo "<tr><td colspan='2' style='text-align: center;'>No teams found</td></tr>";
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
           <?php
            $teams = get_teams_by_parent_name("ART-602");
            if (isset($_POST['parent_name'])){
              $teams = get_teams_by_parent_name($_POST['parent_name']);
            }
            while($art = $teams->fetch_assoc()){
              echo "{ y: ". $art['total'] .", label:\"". $art['team_name'] ."\"},\n";
            }
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



  <div id="chartContainer" style="height: 300px; width: 50%;"></div>

  <div id="chartContainer2" style="height: 300px; width: 50%;"></div>



</body>

</html>




<?php include("./footer.php"); ?>
