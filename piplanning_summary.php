<?php

  $nav_selected = "PIPLANNING";
  $left_buttons = "YES";
  $left_selected = "SUMMARY";


  include("./nav.php");
  global $db;

  ?>

  <img src="images/work_in_progress.jpg" height = "100" width = "100"/>
  <h3> Capacity Summary </h3>
  <br> * What is the capacity of each ART in the current PI (PI?)
  <br> * What is the cpacity of each TEAM in the current PI (PI)?
  <br> * What is capacity in each Iteration (I)?
  <br> * What is the capacity of the entire org (all ARTS) in the current PI and each of 6 Is?
  <br>
  <br> A datatable showing these numbers will be presented here.
  <table id="summaryContent">
    <tr>
      <td><h3 class="rightTextAlign topVertAlign">Program Increment (PI):</h3></td>
      <td><select><option value="test">-WIP-</option></select></td>
    </tr>
    <tr>
      <td><h3>Agile Release Trains</h3></td>
      <td><h3>Agile Teams</h3></td>
    </tr>
    <tr>
      <td>
        <table id="artTable" class="summaryTable topVertAlign">
          <tr>
            <th>Agile Release Train</th><th>Total Capacity for PI (Story Points)</th>
          </tf>
          <?php
            for ($i = 0; $i < 5; $i++) {
              echo "<tr>" .
                    "<td>ART_" . $i . "</td>" .
                    "<td>" . $i * 100 . "</td>" .
                   "</tr>";
            }
          ?>
        </table>
      </td>
      <td>
        <table id="atTable" class="summaryTable topVertAlign">
          <tr>
            <th>Agile Train</th><th>Total Capacity for PI (Story Points)</th>
          </tf>
          <?php
            for ($i = 0; $i < 8; $i++) {
              echo "<tr>" .
                    "<td>ART_1_Team_" . $i . "</td>" .
                    "<td>" . $i * 100 . "</td>" .
                   "</tr>";
            }
          ?>
        </table>
      </td>
    </tr>
  </table>


<?php include("./footer.php"); ?>
