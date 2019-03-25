<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "STATUS";

  include("./nav.php");
  global $db;
  date_default_timezone_set('America/Chicago');
  // Get current piid
  $sql_cur_piid = "SELECT * FROM `cadence` WHERE start_date <= NOW() AND NOW() <= end_date";
  $GLOBALS['curPIID'] = mysqli_query($db, $sql_cur_piid)->fetch_assoc()['PI_id'];

  // Get all agile release trains from the db
  $query_arts = "SELECT * FROM `trains_and_teams`";
  $GLOBALS['allARTs'] = mysqli_query($db, $query_arts);

  $sql_query = "SELECT * FROM `trains_and_teams` WHERE `parent_name`=(?)";
  $query_team_names = $db->prepare($sql_query); // Prepare statement
  // Get teams from db if a selection was made
  if (isset($_POST['agileRT'])) { // Get teams from menu selection
    $query_team_names->bind_param("s", $_POST['agileRT']);
    $query_team_names->execute(); // Execute statement
    $query_team_results = $query_team_names->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($query_team_results);
  } elseif(isset($_COOKIE['AGILE_RELEASE_TRAIN'])){ // Get teams from cookie
    $query_team_names->bind_param("s", $_COOKIE['AGILE_RELEASE_TRAIN']);
    $query_team_names->execute(); // Execute statement
    $query_team_results = $query_team_names->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($query_team_results);
  } elseif(isset($GLOBALS['agileRTg']) && is_art_preference_set()){ // Get teams based on preferences table
    $query_team_names->bind_param("s", $GLOBALS['agileRTg']);
    $query_team_names->execute(); // Execute statement
    $query_team_results = $query_team_names->get_result();
    $GLOBALS['selectedTeams'] = set_team_names($query_team_results);
  } else { // Default to select first alphabetical parent_name
    $first_parent_name = $GLOBALS['defaultParentName'];
    $sql_query2 = "SELECT * FROM `trains_and_teams` WHERE parent_name='" . $first_parent_name . "'";
    $GLOBALS['selectedTeams'] = set_team_names(mysqli_query($db, $sql_query2));
  }
  ?>

<div class="right-content">
    <div class="container">
      <h2>Program Increment (PI) Summary Table</h2>
      <form id="inputForm" method="POST" action="piplanning_status.php">

        Program Increment ID:
        <select type="text" id="programIID" name="programIID" class="userInput" onchange="this.form.submit();">
          <?php echo generate_pii_options(); ?>
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
