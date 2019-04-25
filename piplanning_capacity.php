<?php
  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "CALCULATE";
  include("./nav.php");
  global $db;
  date_default_timezone_set('America/Chicago');
  $sql = "SELECT PI_id, iteration_id, sequence, start_date
          FROM `cadence`
          WHERE end_date >= '" . date("Y-m-d") . "'
          ORDER BY start_date;";
  // echo $sql;
  $result = $db->query($sql);
  if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $program_increment = $row["PI_id"];
    $iteration = $row["iteration_id"];
    $sequence = $row["sequence"];
    $result->close();
  } else {
    //echo "In-between Iterations";
    $result->close();
    $sql = "SELECT *
        FROM
        (	SELECT MIN(start_date) as start_date, MAX(end_date) as end_date
          FROM cadence
          WHERE start_date <= '" . date("Y-m-d") . "'
          OR end_date >= '" . date("Y-m-d") . "'
          GROUP BY PI_id
        ) as PI
        WHERE PI.start_date <= '" . date("Y-m-d") . "'
        AND PI.end_date >= '" . date("Y-m-d") . "';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();
      $start_date = $row["start_date"];
      $end_date = $row["end_date"];
    } else {
      //echo "In-between Program Increments";
    }
    $result->close();
  }
  if (isset($_POST['current-sequence'])) {
    $sequence = $_POST['current-sequence'];
  }
  if (isset($_POST['current-team-selected'])) {
      $selected_team = $_POST['current-team-selected'];
  }
  if (isset($_POST['showNext'])) {
    $sequence++;
    $sql = "SELECT PI_id, iteration_id, sequence
            FROM `cadence`
            WHERE sequence='".$sequence."';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();
      $program_increment = $row["PI_id"];
      $iteration = $row["iteration_id"];
      $sequence = $row["sequence"];
      $result->close();
    } else {
      $sql = "SELECT program_increment, iteration, sequence
              FROM `cadence`
              WHERE sequence='1';";
      $result = $db->query($sql);
      if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $program_increment = $row["PI_id"];
        $iteration = $row["iteration_id"];
        $sequence = $row["sequence"];
        $result->close();
      }
    }
    $sql = "SELECT * FROM `capacity`
            WHERE team_id='".$selected_team."'
            AND program_increment='".$program_increment."';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
    } else {
      $default_data = true;
      $default_total = 0;
      $sql = "SELECT * FROM `membership`
              where team_id='".$selected_team."';";
      $result = $db->query($sql);
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          if ($row["role"] == "Scrum Master (SM)") {
            $velType = "SCRUM_MASTER_ALLOCATION";
          } else if ($row["role"] == "Product Owner (PO)") {
            $velType = "PRODUCT_OWNER_ALLOCATION";
          } else  {
            $velType = "AGILE_TEAM_MEMBER_ALLOCATION";
          }
          $sql2 = "SELECT * FROM `preferences`
                   WHERE name='".$velType."';";
          $result2 = $db->query($sql2);
          if ($result2->num_rows > 0) {
              $row2 = $result2->fetch_assoc();
              $default_total += $row2["value"];
          }
        }
      }
    }
  }
  if (isset($_POST['select-team'])) {
    $selected_team = $_POST['select-team'];
    $sql = "SELECT * FROM `capacity`
            WHERE team_id='".$selected_team."'
            AND program_increment='".$program_increment."';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
    } else {
      $default_data = true;
      $default_total = 0;
      $sql = "SELECT * FROM `membership`
              WHERE team_name='".$selected_team."';";
      $result = $db->query($sql);
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          if ($row["role"] == "SM") {
            $velType = "SCRUM_MASTER_ALLOCATION";
          } else if ($row["role"] == "PO") {
            $velType = "PRODUCT_OWNER_ALLOCATION";
          } else  {
            $velType = "AGILE_TEAM_MEMBER_ALLOCATION";
          }
          $sql2 = "SELECT * FROM `preferences`
                   WHERE name='".$velType."';";
          $result2 = $db->query($sql2);
          if ($result2->num_rows > 0) {
              $row2 = $result2->fetch_assoc();
              $default_total += $row2["value"] * 8 / 100;
          }
        }
      }
    }
  }
  // Set default selected_team
  if (!isset($_POST['select-team']) && !isset($_POST['current-team-selected'])) {
    $sql = "SELECT t.team_id
            FROM `capacity` c JOIN `trains_and_teams` t
            WHERE c.team_id = t.parent_name
            AND c.program_increment='".$program_increment."'
            AND t.type = 'AT'
            LIMIT 1;";

    $result = $db->query($sql);
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();
      $selected_team = $row["team_id"];
    }
  }
  ?>

<div class="right-content">
    <div class="container">

      <h3 style=" color: #01B0F1; font-weight: bold;">Capacity Calculations for the Agile Team</h3>
      <table width="95%">
        <tr>
          <td width="25%" style="vertical-align: top; font-weight: bold; color: #01B0F1; line-height: 130%; font-size: 18px;">
            <form method="post" action="#">
            Team: &emsp; <br/>
            Program Increment (PI): &emsp; <br/>

          </td>
          <td  style="vertical-align: top; font-weight: bold; line-height: 130%;  font-size: 18px;" width="25%">
            <!-- Team Select Dropdown -->
            <select name="select-team" onchange="this.form.submit()" style="border: 0; text-align: left;">
              <?php
                $sql = "SELECT team_id, parent_name, team_name FROM `trains_and_teams`
                        WHERE type='AT';";
                $result = $db->query($sql);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                      if ( trim($selected_team) == trim($row["team_id"]) ) {
                        echo '<option value="'.$row["team_id"].'" selected>'.$row["team_name"].'</option>';
                      } else {
                        echo '<option value="'.$row["team_id"].'">'.$row["team_name"].'</option>';
                      }
                    }
                }
              ?>
            </select>
            <!-- Program Increment Dropdown -->
            <select type="text" id="programIID" name="programIID" onchange="this.form.submit()" style="border: 0; text-align: left;" class="userInput">
              <?php echo generate_pii_options(); ?>
            </select><br>
            </form><br/>
          </td>
          <td width="50%"  style="font-weight: bold;">
            <?php
              $sql = "SELECT * FROM `capacity` c JOIN `trains_and_teams` t
                      WHERE c.team_id = t.parent_name
                      AND program_increment='".$program_increment."'
                      AND t.team_id='".$selected_team."'";
              $result = $db->query($sql);
              if ($result->num_rows > 0) {
                  $row = $result->fetch_assoc();
                  if (isset($teamcapacity)  && !isset($_POST['restore'])  && !isset($_POST['submit0'])){
                    $icapacity = array_sum($teamcapacity);
                    $totalcapacity = $row["total"] + ($icapacity - $row["iteration_".substr($iteration, -1)]);
                  } else {
                    $icapacity = $row["iteration_".substr($iteration, -1)];
                    $totalcapacity = $row["total"];
                  }
              } else {
                if (isset($teamcapacity)  && !isset($_POST['restore'])  && !isset($_POST['submit0'])){
                  $icapacity = array_sum($teamcapacity);
                  $totalcapacity = ($default_total*6) + ($icapacity - $default_total);
                } else {
                  $icapacity = $default_total;
                  $totalcapacity = $default_total*6;
                }
              }
            ?>
             <div style="float: left; margin-right: 10px;  text-align: center; font-size: 12px;">
               <div id="capacity-calc-bignum" name="totalcap"> <?php echo $totalcapacity  ?></div>
               Total Capacity for the Program Increment
             </div>
          </td>
        </tr>
      </table>

      <?php

        for ($it = 1; $it <= 6; $it++) {
          // Check if a program increment id was selected
          // Use current/next increment otherwise
          if (isset($_POST['programIID'])){
            $iteration = str_replace('PI-', '', $_POST['programIID']). "-" . $it;
          } else {
            $iteration = str_replace('PI-', '', $program_increment). "-" . $it;
          }
          // Get duration
          $sql5 = "SELECT * FROM `cadence`
                   WHERE PI_id='" . $program_increment . "';";
          $result5 = $db->query($sql5);
          if ($result5->num_rows > 0) {
              $row5 = $result5->fetch_assoc();
              $duration = $row5["duration"];
          }
          echo "<table width=\"95%\" class=\"capacity-table-iterations\" id=\"capacity-table-" . $iteration . "\">";
          echo "<tr>";
          echo "<td width=\"25%\" style=\"vertical-align: bottom; font-weight: bold;
                                  color: #01B0F1; line-height: 130%;
                                  font-size: 18px;\">";
          echo "Iteration (I): &emsp; <br/>";
          echo "Duration: &emsp; <br/>";
          echo "</td>";
          echo "<td  style=\"vertical-align: bottom; font-weight: bold;
                            line-height: 130%;  font-size: 18px;\" width=\"25%\">";
          echo $iteration . "<br/>";
          echo $duration . "<br/>";
          echo "</td>";
          echo "<td width=\"50%\"  style=\"font-weight: bold;\">";
          echo "<div style=\"float: right; margin-right: 10px; text-align: center; font-size: 12px;\">";
          echo "<div id=\"capacity-calc-bignum\" name=\"icap\">" . $icapacity . "</div>";
          echo "Total Capacity for this Iteration";
          echo "</div>";
          echo "</td>";
          echo "</tr>";
          echo "<tr>";
          echo "<td colspan=\"3\">";
          echo "<form method=\"post\" action=\"#\" id=\"maincap\">";
          echo "<table cellpadding=\"2px\" cellspacing=\"0\"
          border=\"0\" class=\"capacity-table info\" width=\"100%\" style=\"width: 100%;
          clear: both; font-size: 15px; margin: 8px 0 15px 0\">";
          echo "<thead>";
          echo "<tr id=\"capacity-table-first-row\">";
          echo "<th id=\"capacity-table-td\">Last Name</th>";
          echo "<th id=\"capacity-table-td\">First Name</th>";
          echo "<th id=\"capacity-table-td\">Role</th>";
          echo "<th id=\"capacity-table-td\">% Velocity Available</th>";
          echo "<th id=\"capacity-table-td\">Days Off <br/><p style=\"font-size: 9px;\">(Vacation / Holidays / Sick Days)</p></th>";
          echo "<th id=\"capacity-table-td\">Story Points</th>";
          echo "</thead>";
          echo "<tbody>";
          echo "</tr>";
          if (isset($_POST['submit0'])) { // This is where it would be submitted to the database
            $iterationcapacity = 0;
            for ($x=0; $x < count($_POST['rownum']); $x++){
              $teamcapacity[$_POST['rownum'][$x]] = round(($duration-$_POST['daysoff'][$x])*((100-$overhead_percentage)/100)*($_POST['velocity'][$x]/100));
              $iterationcapacity += $teamcapacity[$_POST['rownum'][$x]];
              $daysoff[$_POST['rownum'][$x]] = $_POST['daysoff'][$x];
              $velocity[$_POST['rownum'][$x]] = $_POST['velocity'][$x];
            }
            $sqliter = "UPDATE `capacity` SET iteration_".substr($iteration, -1)."='".$iterationcapacity."' WHERE program_increment='".$program_increment."' AND team_id='".$selected_team."';";
            $result_iter = $db->query($sqliter);
            $sqlinc = "SELECT (iteration_1 + iteration_2 + iteration_3 + iteration_4 + iteration_5 + iteration_6) as new_total FROM `capacity` WHERE program_increment='".$program_increment."' AND team_id='".$selected_team."';";
            $result_inc = $db->query($sqlinc);
            if ($result_inc->num_rows > 0) {
                $rowinc = $result_inc->fetch_assoc();
                $pi_capacity = $rowinc["new_total"];
              }
            $sqlup = "UPDATE `capacity` SET total='$pi_capacity' WHERE program_increment='".$program_increment."' AND team_id='".$selected_team."';";
            $result_up = $db->query($sqlup);
            // keep velocity and days off value changes
            $iterationcapacity = 0;
            for ($x=0; $x < count($_POST['rownum']); $x++){
              $teamcapacity[$_POST['rownum'][$x]] = round(($duration-$_POST['daysoff'][$x])*((100-$overhead_percentage)/100)*($_POST['velocity'][$x]/100));
              $iterationcapacity += $teamcapacity[$_POST['rownum'][$x]];
              $daysoff[$_POST['rownum'][$x]] = $_POST['daysoff'][$x];
              $velocity[$_POST['rownum'][$x]] = $_POST['velocity'][$x];
            }
          }
          $sql6 = "SELECT * FROM `preferences`
                   WHERE name='OVERHEAD_PERCENTAGE';";
          $result6 = $db->query($sql6);
          if ($result6->num_rows > 0) {
              $row6 = $result6->fetch_assoc();
              $overhead_percentage = $row6["value"];
          }
          $sql = "SELECT * FROM `capacity` c JOIN `trains_and_teams` t
                  WHERE c.team_id = t.parent_name
                  AND program_increment='".$program_increment."'
                  AND t.team_id='".$selected_team."'";
          $result = $db->query($sql);
          if ($result->num_rows > 0) {
              $row = $result->fetch_assoc();
              if (isset($teamcapacity)  && !isset($_POST['restore'])  && !isset($_POST['submit0'])){
                $icapacity = array_sum($teamcapacity);
                $totalcapacity = $row["total"] + ($icapacity - $row["iteration_".substr($iteration, -1)]);
              } else {
                $icapacity = $row["iteration_".substr($iteration, -1)];
                $totalcapacity = $row["total"];
              }
          } else {
            if (isset($teamcapacity)  && !isset($_POST['restore'])  && !isset($_POST['submit0'])){
              $icapacity = array_sum($teamcapacity);
              $totalcapacity = ($default_total*6) + ($icapacity - $default_total);
            } else {
              $icapacity = $default_total;
              $totalcapacity = $default_total*6;
            }
          }
          $sql = "SELECT last_name, first_name, role FROM `membership`
                  JOIN `employees`
                  WHERE employee_name LIKE CONCAT_WS(' ',last_name, first_name)
                  AND team_name='".$selected_team."';";
          $result = $db->query($sql);
          $rownum = 0;
          // echo "<h1>" . $selected_team . "</h1>";
          while ($row = $result->fetch_assoc()) { // Add team members to table
            if (strpos($row["role"], "SM") !== false) {
              $velocityType = "SCRUM_MASTER_ALLOCATION";
            } else if (strpos($row["role"], "PO") !== false) {
              $velocityType = "PRODUCT_OWNER_ALLOCATION";
            } else  {
              $velocityType = "AGILE_TEAM_MEMBER_ALLOCATION";
            }
            $sql2 = "SELECT * FROM `preferences`
                     WHERE name='".$velocityType."';";
            $result2 = $db->query($sql2);
            if ($result2->num_rows > 0) {
                $row2 = $result2->fetch_assoc();
            }
            if (isset($teamcapacity[$rownum]) && !isset($_POST['restore']) && isset($_POST['submit0'])){
              $storypts = $teamcapacity[$rownum];
            } else {
              $storypts = round(($duration-0)*((100-$overhead_percentage)/100)*($row2["value"]/100));
            }
            $valueForJS = $row2["value"];
            if (isset($daysoff[$rownum]) && !isset($_POST['restore'])  && isset($_POST['submit0'])){
              $doff = $daysoff[$rownum];
            } else {
              $doff = 0;
            }
            if (isset($velocity[$rownum]) && !isset($_POST['restore']) && isset($_POST['submit0'])){
              $vel = $velocity[$rownum];
            } else {
              $vel = $row2["value"];
            }
          if ($result->num_rows > 0) {
            echo "
              <tr>
              <td id='capacity-table-td' style='font-weight:500;'>" . $row["last_name"] . "</td>
              <td id='capacity-table-td' style='font-weight:500;'>" . $row["first_name"] . "</td>
              <td id='capacity-table-td' style='font-weight:500;'>" . $row["role"] . "</td>
              <td id='capacity-table-td' style='font-weight:500; text-align: center;'><input id='autoin' class='capacity-text-input' type='text' name='velocity[]' value='" . $vel . "' onchange='autoLoad();' /> %</td>
              <td id='capacity-table-td' style='font-weight:500; text-align: center;'><input id='autoin2' class='capacity-text-input' type='text' name='daysoff[]' value='".$doff."' onchange='autoLoad();' /></td>
              <td id='capacity-table-td' style='font-weight:500; text-align: center;  background: #e9e9e9;'><input id='story' class='capacity-text-input' type='text' name='storypoints[]' value='".$storypts."' readonly='readonly' style='border: 0;  background: #e9e9e9;' />&nbsp;pts</td>
              <input type='hidden' name='rownum[]' value='".$rownum."'/>
              </tr>";
          } else {
            echo "
              <tr>
                <td colspan='6' id='capacity-table-td'  style='text-align: center; font-weight: bold; padding: 20px 0 20px 0'>
                  NO TEAM MEMBERS ASSIGNED TO TEAM \"". $selected_team ."\"
                </td>
              </tr>";
          }
          $rownum++;
        }
          echo "
            </tbody>
            <tfoot>
            </tfoot>
            </table>
            <input type=\"button\" id=\"capacity-button-blue\" name=\"generate\" value=\"Generate\">
            <input type=\"submit\" id=\"capacity-button-blue\" name=\"submit1\" value=\"Submit\">
            <input type=\"button\" id=\"capacity-button-blue\" class=\"capacity-restore-button\" name=\"restore\" onclick =\"this.form.reset();\" value=\"Restore Defaults\">
            <input type=\"button\" id=\"capacity-button-blue\" name=\"showNext\" onclick=\"scrollWin();\" value=\"Show Next Iteration\">
            <input type=\"hidden\" name=\"current-team-selected\" value=\"". $selected_team ."?>\">
            <input type=\"hidden\" name=\"current-sequence\" value=\"". $sequence ."?>\">
            </form>
            </td>
            </tr>
            </table>";
        }
      ?>

      <div id="capacity-footnote">
        Note 1: Closed Iterations will NOT be shown.  The capacity cannot be changed for such iterations.  Show only the active iterations.<br/>
        Note 2: This page can be reached in two ways:
        <ul>
          <li>Capacity > Calculate</li>
          <li>Capacity > Summary > By clicking on one of the numbers</li>
        </ul>
      </div>

  </div>  <!-- End of containing div -->
</div>

    <script type="text/javascript">
        $(document).ready(function () {
          $('table.capacity-table').dataTable({
              paging: false,
              searching: false,
              infoCallback: false
          });
          $('table.capacity-table').dataTable({
              paging: false,
              searching: false,
              infoCallback: false
          });
          $('table.capacity-table').dataTable({
              paging: false,
              searching: false,
              infoCallback: false
          });
          $('table.capacity-table').dataTable({
              paging: false,
              searching: false,
              infoCallback: false
          });
          $('table.capacity-table').dataTable({
              paging: false,
              searching: false,
              infoCallback: false
          });
        });
        function autoForm() {
          document.getElementById('maincap').submit();
        }
        $(".capacity-restore-button").click(function(){
          autoLoad();
        });
        $(".capacity-table-iterations").bind("reset", function(){
          autoLoad();
        });

        function autoLoad() {
          var tcap = 0;
          $(".capacity-table-iterations").each(function(){
            var velocity = $(this).find("input[name='velocity[]']")
                .map(function(){return $(this).val();}).get();
            var daysoff = $(this).find("input[name='daysoff[]']")
                .map(function(){return $(this).val();}).get();
            var rownum = $(this).find("input[name='rownum[]']")
                .map(function(){return $(this).val();}).get();
            var overhead = "<?php echo $overhead_percentage ?>";
            var duration = "<?php echo $duration ?>";
            var value = "<?php echo $valueForJS ?>";
            var totalcap_old = "<?php echo $totalcapacity ?>";
            var icap_old = "<?php echo $icapacity ?>";
            var icap = 0;
            for (var i in rownum) {
                var storypts = Math.round( ( duration - daysoff[i] ) * ( ( 100-overhead ) / 100 ) * ( velocity[i] / 100 ) );
                $(this).find("input[name='storypoints[]']").eq(i).val(storypts);
                icap += storypts;
                // tcap += storypts;
            }
            tcap += parseInt(icap);
            $(this).find("div[name='icap']")[0].innerHTML = icap;
            // document.getElementsByName("icap")[0].innerHTML = icap;
            var capdiff = icap - icap_old;
            // var tcap = parseInt(capdiff) + parseInt(totalcap_old);
          });
          document.getElementsByName("totalcap")[0].innerHTML = tcap;
        }
    </script>

<?php include("./footer.php"); ?>
