<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "SUMMARY";
  include("./nav.php");
  global $db;

  if(isset($_POST['programIID'])){
    $GLOBALS['curPIID'] = $_POST['programIID'];
  }

  if(isset($_POST['parent_name'])){
    $GLOBALS['parent_name'] = $_POST['parent_name'];
    $_SESSION['parent_name'] = $_POST['parent_name'];
    // echo $globals['parent_name'];
  }

  ?>

<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
<!DOCTYPE HTML>

<head></head>

<body>
  <form action="" method="POST">
    <table id="summaryContent">

      <tr>
        <td><h3 class="rightTextAlign topVertAlign">Program Increment (PI):</h3></td>
        <td>
          <select name="programIID" onchange="this.form.submit()"><?php echo generate_pii_options(); ?></select>
        </td>
      </tr>
      <tr>
        <td><h3>Agile Release Trains</h3></td>
        <td><h3>Agile Teams</h3></td>
      </tr>
      <tr>
        <td>
          <!-- Left Table -->
            <table id="artTable" class="summaryTable topVertAlign">
              <tr>
                <th>Agile Release Train</th><th>Total Capacity for PI (Story Points)</th>
              </tf>
              <?php
                $art_result = get_teams_by_type("ART");
                $total_capacity = 0;
                $first_art = true;
                if ($art_result->num_rows > 0){
                  // Add rows for each team
                  while($art = $art_result->fetch_assoc()){
                    $is_selected = "";
                    if((isset($_POST['parent_name']) && $_POST['parent_name'] == $art['team_id']) || ($first_art && !isset($_POST['parent_name']))){
                      $is_selected = "color: red;";
                      $first_art = false;
                      $GLOBALS['parent_name'] = $art["team_id"];
                    }
                    echo "<tr>" .
                          "<td><input class=\"remove-input-style\" type=\"radio\" id=\"". $art["team_id"] ."\" name=\"parent_name\" value=\"". $art['team_id'] ."\" onchange=\"this.form.submit()\" hidden>".
                          "<label for=\"". $art['team_id'] ."\"  style=\"". $is_selected ."\">". $art["team_name"] ."</label>".
                          "</td>" .
                          "<td>". $art['total'] ."</td>" .
                         "</tr>";
                    $total_capacity += $art['total'];
                  }
                  echo "<tr>" .
                        "<td>Total Capacity:</td>" .
                        "<td>". $total_capacity ."</td>" .
                       "</tr>";
                } else {
                  echo "<tr><td colspan='2' style='text-align: center;'>No trains found</td></tr>";
                }

              ?>
            </table>

        </td>
        <td>
          <!-- Right Table -->
          <table id="atTable" class="summaryTable topVertAlign">
            <tr>
              <th>Agile Train</th><th>Total Capacity for PI (Story Points)</th>
            </tr>
            <?php
              $at_result = get_teams_by_parent_name("ART-602");
              $total_capacity = 0;
              if(isset($_POST['parent_name'])){
                $at_result = get_teams_by_parent_name($_POST['parent_name']);
              } else if (isset($GLOBALS['parent_name'])){
                $at_result = get_teams_by_parent_name($GLOBALS['parent_name']);
              } else {
                $at_result = null;
              }

              if($at_result != null && $at_result->num_rows > 0){
                // Add rows for each team
                while($art = $at_result->fetch_assoc()){
                  echo "<tr>".
                        "<td>". $art['team_name'] ."</td>".
                        "<td>". $art['total'] ."</td>".
                       "</tr>\n";
                  $total_capacity += $art['total'];
                }
                echo "<tr>" .
                        "<td>Total Capacity:</td>" .
                        "<td>". $total_capacity ."</td>" .
                     "</tr>";
              } else {
                echo "<tr><td colspan='2' style='text-align: center;'>No teams found</td></tr>";
              }
            ?>
          </table>
        </td>
      </tr>
    </table>
  </form>
</body>

</html>

<?php include("./footer.php"); ?>
<style>
<?php include("styles/style.css"); ?>
</style>
