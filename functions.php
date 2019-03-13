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

function generate_table($baseURL, $programIID, $agileRT, $teamNames){
  $programIID = str_replace("PI-", "", $programIID);
  $steps = 6; // Number of steps the program will go through
  $table = ""; // Whole table html string
  $table .= generate_thead($programIID, $steps); // Add table head to table
  $table .= generate_rows($baseURL, $teamNames, $programIID, $programIID, $steps);
  return $table; // Return html table
}

// Generate table header
function generate_thead($programIID, $steps){
  $tableHead = "<tr>";
  $tableHead .= "<th>No.</th>"; // Add No. header
  $tableHead .= "<th>Team Name</th>"; // Add Team Name header
  // Add headers for each step
  for ($step = 0; $step < $steps; $step +=1){
    $tableHead .= "<th>";
    $tableHead .= $programIID . "-" . ($step + 1);
    $tableHead .= "</th>";
  }
  $tableHead .= "<th>" . $programIID . "-IP</th>";
  $tableHead .= "</tr>";
  return $tableHead; // Return table head
}

// Generate table rows with data
function generate_rows($baseURL, $teamNames, $programIID, $iterationID, $steps){
  $tableRows = ""; // Each data row will be stored here

  $teamNameList = explode(",", $teamNames);
  $rowNum = 1;
  foreach ($teamNameList as $teamName){
    $teamName = trim($teamName);
    $tableRows .= generate_trow($baseURL, $rowNum, $teamName, $iterationID, $steps);
    $rowNum++;
  }
  return $tableRows; // Return all rows for table
}

function generate_trow($baseURL, $number, $teamName, $iterationID, $steps){
  $row = "<tr>"; // Store table row html element
  $row .= "<td>" . $number . "</td>"; // Add number to this row
  $row .= "<td>" . $teamName . "</td>"; // Add team name to this row
  // Add each program increment to this row
  for ($step = 0; $step < $steps; $step += 1){
    $row .= "<td>" . generate_data_link($baseURL, $iterationID, $teamName, $step + 1);
    $row .= "</td>";
  }
  // Add IP iteration to this row
  $row .= "<td>" . generate_data_link($baseURL, $iterationID, $teamName, "IP");
  $row .= "</td>";
  $row .= "</td>";
  return $row; // Returns single row for table
}

// Create each link for the generated table data
// Format of each link: <a href="(url)" title="(url)" target="_blank">(IID)-(step)_(teamName)</a>
function generate_data_link($baseURL, $iterationID, $teamName, $step){
  // Replace spaces with underscores and trim whitespace around team name
  $teamName = str_replace(" ", "_", trim($teamName));
  $url = $baseURL . "?id=" . $iterationID . "-" . $step . "_" . $teamName;
  $link = "<a href=\"" . $url . "\" title=\"" . $url;
  $link .= "\" target=\"_blank\">" . $iterationID . "-" . $step . "</a>";
  return $link;
}

// Echos each PIID option as an html option element
// Format of each option: <option value="1902">PI-1902</option>
function generate_pii_options($allPIIDs){
  $options = ""; // Store html elements
  $currentPIIDFound = false;
  while($pIId = $allPIIDs->fetch_assoc()){
    // Check if the PIID has been added already
    if ($pIId["PI_id"] != "" && !strpos($options, $pIId["PI_id"])){
      $options .= "<option value=" . str_replace("PI-", "", $pIId["PI_id"]);
      // Check if this program id was previously selected
      if (isset($_POST['programIID']) && $_POST['programIID'] == str_replace("PI-", "", $pIId["PI_id"])) {
        // echo $_POST['programIID'];
        $options .= " selected";
      } elseif(isset($GLOBALS['curPIID']) && $GLOBALS['curPIID'] == $pIId['PI_id']){
        $options .= " selected";
      }
      $options .= ' class="pIIDs">';
      $options .= $pIId["PI_id"];
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
      $options .= "<option value=" . $art["parent_name"];
      if (is_selected_art_option($art)){
        $options .= " selected";
      }
      $options .= ">";
      $options .= $art["parent_name"];
      $options .= "</option>";
    }
  }
  return $options;
}

// Checks if the art option should be selected
function is_selected_art_option($art){
  if (isset($_POST['agileRT']) && $_POST['agileRT'] == $art['parent_name']){
    return true;
  } elseif(isset($_COOKIE['AGILE_RELEASE_TRAIN']) & !isset($_POST['agileRT']) && $art['parent_name'] == $_COOKIE['AGILE_RELEASE_TRAIN']){
    return true;
  } elseif(isset($GLOBALS['agileRTg']) && $GLOBALS['agileRTg'] == $art['parent_name']){
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
function set_art_preference($newPref){
  global $db;
  // PHP prepared statement
  $queryUpdatePref = $db->prepare("UPDATE `preferences` SET value=(?) WHERE name='DEFAULT_ART'");
  $queryUpdatePref->bind_param("s", $newPref);
  $queryUpdatePref->execute();
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
  $prefQuery = "SELECT * FROM `preferences` WHERE name='DEFAULT_ART'";
  $prefResults = mysqli_query($db, $prefQuery);
  $artPref = $prefResults->fetch_assoc();
  return $artPref['value'];
}

// Return the base url from the database
function get_base_url(){
  global $db;
  $baseUrlQuery = "SELECT * FROM `preferences` WHERE name='BASE_URL'";
  $baseUrlResults = mysqli_query($db, $baseUrlQuery);
  return $baseUrlResults->fetch_assoc()['value'];
}

?>
