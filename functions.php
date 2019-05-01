<?php

function url_for($script_path) {
  // add the leading '/' if not present
  if($script_path[0] != '/') {
    $script_path = "/" . $script_path;
  }
  return WWW_ROOT . $script_path;
}

function u($string="") {
  return urlencode($string);
}

function raw_u($string="") {
  return rawurlencode($string);
}

function h($string="") {
  return htmlspecialchars($string);
}

function error_404() {
  header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
  exit();
}

function error_500() {
  header($_SERVER["SERVER_PROTOCOL"] . " 500 Internal Server Error");
  exit();
}

function redirect_to($location) {
  header("Location: " . $location);
  exit;
}

function is_post_request() {
  return $_SERVER['REQUEST_METHOD'] == 'POST';
}

function is_get_request() {
  return $_SERVER['REQUEST_METHOD'] == 'GET';
}

function display_errors($errors=array()) {
    $output = '';
    if(!empty($errors)) {
        $output .= "<div class=\"errors\">";
        $output .= "Please fix the following errors:";
        $output .= "<ul>";
        foreach($errors as $error) {
            $output .= "<li>" . h($error) . "</li>";
        }
        $output .= "</ul>";
        $output .= "</div>";
    }
    return $output;
}

//------------------------------------------------------------------------
//	Used to convert a user-created URL into an embeddable URL.
//	Example: The typical URL pasted in from users will look like this: https://www.youtube.com/watch?v=CgSs3OvTnUQ
// 			 But this will not work in an embedded iFrame and so must be converted to: https://www.youtube.com/embed/CgSs3OvTnUQ
//
function mangleurl($url, $urltype = "") {
	if (strcasecmp($urltype, 'url') == 0 and strcasecmp(substr($url, 0, 3), 'http') != 0) {
		$url = 'http://' . $url;
	}
	$urlchunks = parse_url(trim($url));

	if (DEBUG_MODE == 'ONxx') {
		echo 'DEBUG MODE: ' . dirname(__FILE__).'.mangleurl()<br/>';
		echo var_dump($url) . '<br/>';
		echo var_dump($urlchunks) . '<br/>';
		echo '<br/>';
		}

	$baseurl = $url;		// in case we don't need to do anything, send back what we were given

	if (strpos(strtolower($urlchunks['host']), 'youtube') > 0) {
	    $baseurl = $urlchunks['scheme']."://".$urlchunks['host']."/embed/";
		if (strtolower(substr($urlchunks['query'], 0, 2)) == "v=") {
			$youtubeid = substr($urlchunks['query'], 2);
		}
		else {
			$youtubeid = $urlchunks['query'];
		}

		return $baseurl.$youtubeid;
	}

	if (strcasecmp(strtolower($urlchunks['host']), 'drive.google.com') == 0) {
		if (strcasecmp($urltype, 'image') == 0) {
			$baseurl  = $urlchunks['scheme']."://".$urlchunks['host']."/thumbnail?";
			$baseurl .= $urlchunks['query'].'&sz=w400-h400';
		}
		else {
			$baseurl = 'https://docs.google.com/document/d/' . substr($urlchunks['query'], 3) . '/edit';
		}
	}

	return $baseurl;
}


//------------------------------------------------------------------------
//	An item entry from the DB might have multiple URLs sepearated by ';' characters
//	This function takes that string and returns an array of those items
//	it will always return an array that is at least one item in size
//	Example https://www.youtube.com/watch?v=Md0CGAtOPEw;https://www.youtube.com/watch?v=0uPQjgfjl2Q;https://www.youtube.com/watch?v=yA83mhXV3iU;https://www.youtube.com/watch?v=pwFy7eP-IGA

function handlemultipleitems($item) {
	$urlarray = explode(';',$item);

	// if (DEBUG_MODE == 'ON') {
		// echo 'DEBUG MODE: ' . dirname(__FILE__).'.handlemultipleitems()<br/>';
		// echo var_dump($urlarray);
		// echo '<br/>';
		// }

	return $urlarray;
}

//------------------------------------------------------------------------
//	An item entry from the DB might have multiple URLs sepearated by ';' characters
//	This function counts how many items are in that long string
//	it can return 0 if the string is empty
//	Example https://www.youtube.com/watch?v=Md0CGAtOPEw;https://www.youtube.com/watch?v=0uPQjgfjl2Q;https://www.youtube.com/watch?v=yA83mhXV3iU;https://www.youtube.com/watch?v=pwFy7eP-IGA

function countitems($item) {
	$urlarray = explode(';',$item);
	$ctr = 0;

	 // if (DEBUG_MODE == 'ON') {
		// echo 'DEBUG MODE: ' . dirname(__FILE__).'.countitems()<br/>';
		// echo var_dump($urlarray);
		// echo count($urlarray);
		// echo '<br/>';
		// }

	foreach ($urlarray as $subitem) {
		if (trim($subitem) != '') {
			$ctr += 1;
		}
	}

	return $ctr;
}

  function is_logged_in() {
    // Having a admin_id in the session serves a dual-purpose:
    // - Its presence indicates the admin is logged in.
    // - Its value tells which admin for looking up their record.
    if (!isset($_SESSION['logged_in'])) {return false;}
	if ($_SESSION['logged_in'] != true) {return false;}
	return true;
  }

  function is_super_admin() {
    // Having a admin_id in the session serves a dual-purpose:
    // - Its presence indicates the admin is logged in.
    // - Its value tells which admin for looking up their record.
	if (!isset($_SESSION['logged_in'])) {return false;}
	if (!isset($_SESSION['role'])) {return false;}
    return ($_SESSION['logged_in'] == true and $_SESSION['role'] == 'SUPER-ADMIN');
  }

  function is_admin() {
    // Having a admin_id in the session serves a dual-purpose:
    // - Its presence indicates the admin is logged in.
    // - Its value tells which admin for looking up their record.
	if (!isset($_SESSION['logged_in'])) {return false;}
	if (!isset($_SESSION['role'])) {return false;}
	if (is_super_admin() == true) {return true;}
    return ($_SESSION['logged_in'] == true and $_SESSION['role'] == 'ADMIN');
  }

  function is_user() {
    // Having a admin_id in the session serves a dual-purpose:
    // - Its presence indicates the admin is logged in.
    // - Its value tells which admin for looking up their record.
	if (is_super_admin() == true) {return true;}
	if (is_admin() == true) {return true;}
	if (!isset($_SESSION['logged_in'])) {return true;}
	if (!isset($_SESSION['role'])) {
		$_SESSION['role'] = 'USER';
		return true;
		}
    return ($_SESSION['logged_in'] == true and $_SESSION['role'] == 'USER');
  }


function show_flash_message() {
  if (isset($_SESSION['action_message'])) {
    $message = $_SESSION['action_message'];
    unset($_SESSION['action_message']);
    return $message;
  }
  return NULL;
}

function generate_table($base_url, $program_iid, $agileRT, $team_names){
  $program_iid = str_replace("PI-", "", $program_iid);
  $steps = 6; // Number of steps the program will go through
  $table = ""; // Whole table html string
  $table .= generate_thead($program_iid, $steps); // Add table head to table
  $table .= generate_rows($base_url, $team_names, $program_iid, $program_iid, $steps);
  return $table; // Return html table
}

// Generate table header
function generate_thead($program_iid, $steps){
  $tableHead = "<tr>";
  $tableHead .= "<th>No.</th>"; // Add No. header
  $tableHead .= "<th>Team Name</th>"; // Add Team Name header
  // Add headers for each step
  for ($step = 0; $step < $steps; $step +=1){
    $tableHead .= "<th>";
    $tableHead .= $program_iid . "-" . ($step + 1);
    $tableHead .= "</th>";
  }
  $tableHead .= "<th>" . $program_iid . "-IP</th>";
  $tableHead .= "</tr>";
  return $tableHead; // Return table head
}

// Generate table rows with data
function generate_rows($base_url, $team_names, $program_iid, $iteration_id, $steps){
  $tableRows = ""; // Each data row will be stored here

  $team_nameList = explode(",", $team_names);
  $rowNum = 1;
  foreach ($team_nameList as $team_name){
    $team_name = trim($team_name);
    $tableRows .= generate_trow($base_url, $rowNum, $team_name, $iteration_id, $steps);
    $rowNum++;
  }
  return $tableRows; // Return all rows for table
}

function generate_trow($base_url, $number, $team_name, $iteration_id, $steps){
  $row = "<tr>"; // Store table row html element
  $row .= "<td>" . $number . "</td>"; // Add number to this row
  $row .= "<td>" . $team_name . "</td>"; // Add team name to this row
  // Add each program increment to this row
  for ($step = 0; $step < $steps; $step += 1){
    $row .= "<td>" . generate_data_link($base_url, $iteration_id, $team_name, $step + 1);
    $row .= "</td>";
  }
  // Add IP iteration to this row
  $row .= "<td>" . generate_data_link($base_url, $iteration_id, $team_name, "IP");
  $row .= "</td>";
  $row .= "</td>";
  return $row; // Returns single row for table
}

// Create each link for the generated table data
// Format of each link: <a href="(url)" title="(url)" target="_blank">(IID)-(step)_(teamName)</a>
function generate_data_link($base_url, $iteration_id, $team_name, $step){
  // Replace spaces with underscores and trim whitespace around team name
  $team_name = str_replace(" ", "_", trim($team_name));
  $url = $base_url . "?id=" . $iteration_id . "-" . $step . "_" . $team_name;
  $link = "<a href=\"" . $url . "\" title=\"" . $url;
  $link .= "\" target=\"_blank\">" . $iteration_id . "-" . $step . "</a>";
  return $link;
}

// Echos each PIID option as an html option element
// Format of each option: <option value="1902">PI-1902</option>
function generate_pii_options(){
  global $db;

  // Get current piid
  if (!isset($GLOBALS['curPIID'])){
    $sql_cur_piid = "SELECT * FROM `cadence` WHERE start_date <= NOW() AND NOW() <= end_date";
    $GLOBALS['curPIID'] = mysqli_query($db, $sql_cur_piid)->fetch_assoc()['PI_id'];
  }

  // Get all program increment ids from db
  $sql_piis = "SELECT * FROM `cadence`";
  $result_piids = mysqli_query($db, $sql_piis);
  $options = ""; // Store html elements
  $current_piid_found = false;
  $is_first_piid = true;
  while($piid = $result_piids->fetch_assoc()){
    // Check if the PIID has been added already
    if ($piid["PI_id"] != "" && !strpos($options, $piid["PI_id"])){
      $options .= "<option value=" . str_replace("PI-", "", $piid["PI_id"]);
      // Check if this program id was previously selected
      if (isset($_POST['programIID']) && $_POST['programIID'] == str_replace("PI-", "", $piid["PI_id"])) {
        $options .= " selected";
        if ($is_first_piid){
           $GLOBALS['curPIID'] = $piid["PI_id"];
           $is_first_piid = false;
       }

      } elseif(isset($GLOBALS['curPIID']) && $GLOBALS['curPIID'] == $piid['PI_id']){
        $options .= " selected";
      }
      $options .= ' class="pIIDs">';
      $options .= $piid["PI_id"];
      $options .= "</option>";

    }
  }
  return $options;
}

// Echo each ART options as an html option element
// Format for each option: <option value="ST-300">ST-300</option>
function generate_art_options($allARTs){
  $options = ""; // Store html elements
  while($art = $allARTs->fetch_assoc()){
    // Check if the ART has been added already
    if (strpos($options, $art["parent_name"]) == false){
      $options .= "<option value=" . $art["team_id"];
      if (is_selected_art_option($art)){
        $options .= " selected";
      }
      $options .= ">";
      $options .= $art["team_id"];
      $options .= "</option>";
    }
  }
  return $options;
}

// Checks if the art option should be selected
function is_selected_art_option($art){
  if (isset($_POST['agileRT']) && $_POST['agileRT'] == $art['team_id']){
    return true;
  } elseif(isset($_COOKIE['AGILE_RELEASE_TRAIN']) & !isset($_POST['agileRT']) && $art['team_id'] == $_COOKIE['AGILE_RELEASE_TRAIN']){
    return true;
  } elseif(isset($GLOBALS['agileRTg']) && $GLOBALS['agileRTg'] == $art['team_id']){
    return true;
  } else {
    return false;
  }
}

// Returns a comma separated list of team names from a db query
function set_team_names($selectedTeams){
  $teams = ""; // Store team names as comma separated list
  while ($team = $selectedTeams->fetch_assoc()) {
    if ($teams != ""){ // Add comma between team names
      $teams .= ", ";
    }
    // Check if team has been added already
    if (strpos($teams, $team['team_name']) == false){
      $teams .= trim($team['team_name']);
    }
  }
  return $teams;
}

// Sets the art preference in the database
function set_art_preference($new_pref){
  global $db;
  // PHP prepared statement
  $query_update_pref = $db->prepare("UPDATE `preferences` SET value=(?) WHERE name='DEFAULT_ART'");
  $query_update_pref->bind_param("s", $new_pref);
  $query_update_pref->execute();
}

// Checks if the art preference is set in the database
function is_art_preference_set(){
  global $db;
  $preference = mysqli_query($db, "SELECT * FROM `preferences` WHERE name='DEFAULT_ART'");
  if($preference->num_rows > 0 & mysqli_fetch_assoc($preference)['value'] != ''){
    return true;
  } else { return false; }
}

// Returns the art preference from the database
function get_art_preference(){
  global $db;
  $pref_query = "SELECT * FROM `preferences` WHERE name='DEFAULT_ART'";
  $pref_results = mysqli_query($db, $pref_query);
  $art_pref = $pref_results->fetch_assoc();
  return $art_pref['value'];
}

// Return the base url from the database
function get_base_url(){
  global $db;
  $base_url_query = "SELECT * FROM `preferences` WHERE name='BASE_URL'";
  $base_url_results = mysqli_query($db, $base_url_query);
  return $base_url_results->fetch_assoc()['value'];
}

function get_teams_by_type($type){
  global $db;
  // Query for getting each at and the associated total capacity
  $sql =
  "SELECT t.team_name, t.team_id, total
  FROM trains_and_teams t JOIN capacity c
  WHERE type = ?
  AND t.team_name = c.team_name
  AND c.program_increment = ?
  ORDER BY team_name";
  $art_result = $db->prepare($sql);
  $art_result->bind_param("ss", $type, $GLOBALS['curPIID']);
  $art_result->execute();
  // $art_result = mysqli_query($db, $sql);
  $_SESSION['curPIID'] = $GLOBALS['curPIID'];
  return $art_result->get_result();
}

function get_teams_by_parent_name($parent_name){
  global $db;
  // Query for getting each at and the associated total capacity by parent name
  $sql =
  "SELECT team_name, total
  FROM team_with_parent
  WHERE parent_name = ?
  ORDER BY team_name";
  $art_result = $db->prepare($sql);
  $art_result->bind_param("s", $parent_name);
  $art_result->execute();
  $_SESSION['parent_name'] = $parent_name;
  return $art_result->get_result();
}



?>
<script>
function scrollWin() {
  window.scrollBy(0, 400);
}

function success() {
  alert("Success!");
}
</script>
