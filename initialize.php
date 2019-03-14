<?php
  ob_start(); // output buffering is turned on
  session_start();


  // Assign file paths to PHP constants
  // __FILE__ returns the current path to this file
  // dirname() returns the path to the parent directory
  define("PRIVATE_PATH", dirname(__FILE__));
  define("PROJECT_PATH", dirname(PRIVATE_PATH));
  define("PUBLIC_PATH", PROJECT_PATH . '/public');
  define("SHARED_PATH", PRIVATE_PATH . '/shared');

  //--------------------------------
  // Changes these two lines tocorrectly reflect the deployment details
  define("DEPLOYMENT_URL", "http://safe");
  define("SERVER_ROOT_PATH", "htp://safe");
  //--------------------------------------------------------------------------------------

  // Assign the root URL to a PHP constant
  $public_end = strpos($_SERVER['SCRIPT_NAME'], '/public') + 7;
  $doc_root = substr($_SERVER['SCRIPT_NAME'], 0, $public_end);
  define("WWW_ROOT", $doc_root);

  require_once('functions.php');
  require_once('database.php');
  require_once('query_functions.php');
  require_once('validation_functions.php');

  $db = db_connect();
  $errors = array();
  $config = array();

  define("DEBUG_MODE", "ON");

  // Initialize cookie values
  if (isset($_POST['agileRT'])){
    $agileRTCookie = $_POST['agileRT'];
    setcookie("AGILE_RELEASE_TRAIN", $agileRTCookie, time() + (86400 * 30));
    set_art_preference($agileRTCookie);
    $GLOBALS['agileRTg'] = $_POST['agileRT'];
  } elseif(isset($_COOKIE['AGILE_RELEASE_TRAIN'])){
    $GLOBALS['agileRTg'] = $_COOKIE['AGILE_RELEASE_TRAIN'];
  } elseif(is_art_preference_set()){
    $GLOBALS['agileRTg'] = get_art_preference();
  } else { // Default to first alphabetical agileRT
    $sqlQuery = "SELECT * FROM `trains_and_teams` ORDER by parent_name ASC";
    $GLOBALS['defaultParentName'] = mysqli_fetch_assoc(mysqli_query($db, $sqlQuery))['parent_name'];
    $GLOBALS['agileRTg'] = $GLOBALS['defaultParentName'];
  }

?>
