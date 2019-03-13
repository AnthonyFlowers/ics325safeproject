<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "STATUS";

  include("./nav.php");
  global $db;
  date_default_timezone_set('America/Chicago');

  // Get all program increment ids from db
  $sqlPIIs = "SELECT * FROM `cadence`";
  $GLOBALS['allPIIDs'] = mysqli_query($db, $sqlPIIs);

  // Get current piid
  $sqlCurPIID = "SELECT * FROM `cadence` WHERE start_date <= NOW() AND NOW() <= end_date";
  $GLOBALS['curPIID'] = mysqli_query($db, $sqlCurPIID)->fetch_assoc()['PI_id'];

  // Get all agile release trains from the db
  $queryARTs = "SELECT * FROM `trains_and_teams`";
  $GLOBALS['allARTs'] = mysqli_query($db, $queryARTs);

  // Get teams from db if a selection was made
  if (isset($_POST['agileRT'])) { // Get teams from menu selection
    $sqlQuery = "SELECT * FROM `trains_and_teams` WHERE `parent_name`=(?)";
    $queryTeamNames = $db->prepare($sqlQuery); // Prepare statement
    $queryTeamNames->bind_param("s", $_POST['agileRT']);
    $queryTeamNames->execute(); // Execute statement
    $queryTeamResults = $queryTeamNames->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($queryTeamResults);
  } elseif(isset($_COOKIE['AGILE_RELEASE_TRAIN'])){ // Get teams from cookie
    $sqlQuery = "SELECT * FROM `trains_and_teams` WHERE `parent_name`=(?)";
    $queryTeamNames = $db->prepare($sqlQuery); // Prepare statement
    $queryTeamNames->bind_param("s", $_COOKIE['AGILE_RELEASE_TRAIN']);
    $queryTeamNames->execute(); // Execute statement
    $queryTeamResults = $queryTeamNames->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($queryTeamResults);
  } elseif(isset($GLOBALS['agileRTg']) && is_art_preference_set()){ // Get teams based on preferences table
    $sqlQuery = "SELECT * FROM `trains_and_teams` WHERE `parent_name`=(?)";
    $queryTeamNames = $db->prepare($sqlQuery); // Prepare statement
    $queryTeamNames->bind_param("s", $GLOBALS['agileRTg']);
    $queryTeamNames->execute(); // Execute statement
    $queryTeamResults = $queryTeamNames->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($queryTeamResults);
  } else { // Default to ART-400 *Fix to select first alphabetical parent_name*
    $sqlQuery = "SELECT * FROM `trains_and_teams` WHERE parent_name='ART-400'";
    $GLOBALS['selectedTeams'] = set_team_names(mysqli_query($db, $sqlQuery));
  }
  global $selectedTeams;

  ?>

<div class="right-content">
    <div class="container">
      <h2>Program Increment (PI) Summary Table</h2>
      <form id="inputForm" method="POST" action="piplanning_status.php">

        Program Increment ID:
        <select type="text" id="programIID" name="programIID" class="userInput" onchange="this.form.submit();">
          <?php echo generate_pii_options($allPIIDs); ?>
        </select><br>
        Agile Release Train (ART):
        <select type="text" id="agileRT" name="agileRT" class="userInput" onchange="this.form.submit();">
          <?php echo generate_art_options($allARTs); ?>
        </select><br>
        Names of the Teams:
        <input type="text" id="teamNames" name="teamNames" class="userInput" style="width: 50%;" value="<?php echo $selectedTeams ?>" readonly="readonly"><br>
        <button id="btnGenJS" type="button">Generate JS</button><input type="submit" id="btnGenPHP"  value="Generate PHP">
      </form>

      <!-- placeholder -->
      <table id="dataTable">
        <?php
          // Checks if baseURL is in the post to reduce database queries
          $baseURL = get_base_url();
          $programIID = isset($_POST['programIID']) ? $_POST['programIID'] : $GLOBALS['curPIID']; // Rework for cookie and preferences
          $agileRT = '';
          if (isset($_POST['agileRT'])){
            $agileRT = $_POST['agileRT'];
          } elseif(isset($GLOBAL['agileRTg'])){
            global $agileRTg;
            $agileRT = $agileRTg;
          }
          // $teamNames = $_POST['teamNames'];
          echo generate_table($baseURL, $programIID, $agileRT, $selectedTeams);
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
