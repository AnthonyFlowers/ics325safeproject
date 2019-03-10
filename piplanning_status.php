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

  // Get all agile release trains from the db
  $queryARTs = "SELECT * FROM trains_and_teams";
  $GLOBALS['allARTs'] = mysqli_query($db, $queryARTs);

  // Get teams from db if a selection was made
  if (isset($_POST['agileRT'])) {
    // https://stackoverflow.com/questions/21329631/how-to-write-sql-statements-in-php
    $queryTeamNames = "SELECT * FROM `trains_and_teams` WHERE (`type` = '" . $_POST['agileRT'] . "')";
    $GLOBALS['selectedTeams'] = mysqli_query($db, $queryTeamNames);
  } else { // Default to AT team type
    $queryTeamNames = "SELECT * FROM `trains_and_teams` WHERE (`type` = 'AT' )";
    $GLOBALS['selectedTeams'] = mysqli_query($db, $queryTeamNames);
  }

  ?>

<div class="right-content">
    <div class="container">
      <?php include('piplanning_generate_table.php') ?>

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
