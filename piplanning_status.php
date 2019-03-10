<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "STATUS";

  include("./nav.php");
  global $db;
  date_default_timezone_set('America/Chicago');

  // Get all program increment ids from db
  $queryPIIs = "SELECT * FROM `cadence`";
  $GLOBALS['allPIIDs'] = mysqli_query($db, $queryPIIs);

  // Get current piid
  $queryCurPIID = "SELECT * FROM `cadence` WHERE start_date <= NOW() <= end_date";
  $GLOBALS['curPIID'] = mysqli_query($db, $queryCurPIID);

  // Get all agile release trains from the db
  $queryARTs = "SELECT * FROM `trains_and_teams`";
  $GLOBALS['allARTs'] = mysqli_query($db, $queryARTs);



  // Get teams from db if a selection was made
  if (isset($_POST['agileRT'])) {
    // https://stackoverflow.com/questions/21329631/how-to-write-sql-statements-in-php
    $queryTeamNames = "SELECT * FROM `trains_and_teams` WHERE (`parent_name` = '" . $_POST['agileRT'] . "')";
  } else { // Default to AT team type
    $queryTeamNames = "SELECT * FROM `trains_and_teams` WHERE parent_name = 'ART-400'";
  }
  $GLOBALS['selectedTeams'] = mysqli_query($db, $queryTeamNames);

  ?>

<div class="right-content">
    <div class="container">

      <h2>Program Increment (PI) Summary Table</h2>
      <form id="inputForm" method="POST" action="piplanning_status.php">

        <input type="text" id="baseURL" name="baseURL" class="userInput" value="<?php echo (isset($_POST['baseURL'])) ? $_POST['baseURL'] : "https://metro" ?>" hidden><br>
        Program Increment ID:
        <select type="text" id="programIID" name="programIID" class="userInput" onchange="this.form.submit();">
          <?php echo generate_pii_options($allPIIDs); ?>
        </select><br>
        Agile Release Train (ART):
        <select type="text" id="agileRT" name="agileRT" class="userInput" onchange="this.form.submit();">
          <?php echo generate_art_options($allARTs) ?>
        </select><br>
        Names of the Teams:
        <input type="text" id="teamNames" name="teamNames" class="userInput" value="<?php echo set_team_names($selectedTeams) ?>" readonly="readonly"><br>
        <button id="btnGenJS" type="button">Generate JS</button><input type="submit" id="btnGenPHP"  value="Generate PHP">
      </form>

      <!-- placeholder -->
      <table id="dataTable">
        <?php
          if(are_values_set()){ // Checks if values are set and generates the table based on them
            $baseURL = $_POST['baseURL'];
            $programIID = $_POST['programIID'];
            $agileRT = $_POST['agileRT'];
            // $teamNames = $_POST['teamNames'];
            echo generate_table($baseURL, $programIID, $agileRT, set_team_names($selectedTeams));
          } else {

          }
        ?>
      </table>

    <script type="text/javascript">

        $(document).ready(function () {
            $('#info').DataTable({
                paging: false,
                searching: false,
                infoCallback: false
            });
        });
    </script>

<?php include("./footer.php"); ?>
