
<h2>Program Increment (PI) Summary Table</h2>
<form id="inputForm" method="POST" action="piplanning_status.php">

  <input type="text" id="baseURL" name="baseURL" class="userInput" value="<?php echo (isset($_POST['baseURL'])) ? $_POST['baseURL'] : "https://metro" ?>" hidden><br>
  Program Increment ID:
  <select type="text" id="programIID" name="programIID" class="userInput" onchange="this.form.submit();">
    <?php echo generate_pii_options($allPIIDs, date("yd")); ?>
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
      $teamNames = $_POST['teamNames'];
      echo generate_table($baseURL, $programIID, $agileRT, $teamNames);
    }
  ?>
</table>
