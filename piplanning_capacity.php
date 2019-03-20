<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "CALCULATE";

  include("./nav.php");
  global $db;

  date_default_timezone_set('America/Chicago');

  $sql = "SELECT PI_id, iteration_id, sequence
          FROM `cadence`
          WHERE start_date <= '" . date("Y-m-d") . "'
          AND end_date >= '". date("Y-m-d") . "';";
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
          GROUP BY program_increment
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
    $sql = "SELECT * FROM `capacity` where team_id='".$selected_team."' AND program_increment='".$program_increment."';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
    } else {
      $default_data = true;
      $default_total = 0;
      $sql = "SELECT * FROM `membership` where team_id='".$selected_team."';";
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
          $sql2 = "SELECT * FROM `preferences` WHERE name='".$velType."';";
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
    $sql = "SELECT * FROM `capacity` where team_id='".$selected_team."' AND program_increment='".$program_increment."';";
    $result = $db->query($sql);
    if ($result->num_rows > 0) {
    } else {
      $default_data = true;
      $default_total = 0;

      $sql = "SELECT * FROM `membership` where team_id='".$selected_team."';";
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
          $sql2 = "SELECT * FROM `preferences` WHERE name='".$velType."';";
          $result2 = $db->query($sql2);
          if ($result2->num_rows > 0) {
              $row2 = $result2->fetch_assoc();
              $default_total += $row2["value"];
          }
        }
      }
    }

  }
  // Set default selected_team
  if (!isset($_POST['select-team']) && !isset($_POST['current-team-selected'])) {
    $sql = "SELECT team_id FROM `capacity` where program_increment='".$program_increment."' LIMIT 1;";
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

      <!-- Table 1 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-1"); ?>
      <!-- Table 2 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-2"); ?>
      <!-- Table 3 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-3"); ?>
      <!-- Table 4 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-4"); ?>
      <!-- Table 5 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-5"); ?>
      <!-- Table 6 -->
      <?php echo generate_capacity_table($selected_team, $program_increment, "-6"); ?>
      <!-- Table 7 -->
      <!-- <?php echo generate_capacity_table($selected_team, $program_increment, "-IP"); ?> -->

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

            $('#info').DataTable({
                paging: false,
                searching: false,
                infoCallback: false
            });

        });

        function autoForm() {
          document.getElementById('maincap').submit();
        }

        function autoLoad() {
          var velocity = $("input[name='velocity[]']")
              .map(function(){return $(this).val();}).get();
          var daysoff = $("input[name='daysoff[]']")
              .map(function(){return $(this).val();}).get();
          var rownum = $("input[name='rownum[]']")
              .map(function(){return $(this).val();}).get();

          // var overhead = "<?php echo $overhead_percentage ?>";
          var duration = "<?php echo $duration ?>";
          var value = "<?php echo $valueForJS ?>";
          var totalcap_old = "<?php echo $totalcapacity ?>";
          var icap_old = "<?php echo $icapacity ?>";
          var icap = 0;

          for (var i in rownum) {
              var storypts = Math.round( ( duration - daysoff[i] ) * ( ( 100-overhead ) / 100 ) * ( velocity[i] / 100 ) );
              $("input[name='storypoints[]']").eq(i).val(storypts);
              icap += storypts;
          }

          document.getElementsByName("icap")[0].innerHTML = icap;
          var capdiff = icap - icap_old;
          var tcap = parseInt(capdiff) + parseInt(totalcap_old);
          document.getElementsByName("totalcap")[0].innerHTML = tcap;
        }


    </script>

<?php include("./footer.php"); ?>
