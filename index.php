<?php /*
	error_reporting(E_ALL);
	ini_set('display_errors', 'On'); */
	// $cachetimeout=900;
//	include_once "/usr/share/php/quickcache/quickcache/quickcache.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php include 'head.php' ?>
<div id="splash"></div>
<div id="page">
  <div id="content">
    <h1>Welcome to OldTime Recipes!</h1><span style="float: right; font-size: 70%;"><a href="./submit.php" target="_blank">Submit a recipe!</a></span>
    <blockquote>
      <p>&#8220;<strong>OldTime Recipes</strong> is a free recipe website. <em>Enjoy :)</em>&#8221;</p>
    </blockquote>
    <p>Please choose the type of recipe you wish to see from the list below...</p>
    <ol>
    <?php
        $sql = "SELECT * FROM type;";
        $type_res = $db->query($sql);
        $type_count = $type_res->rowCount();
        
        while ($row = $type_res->fetch(PDO::FETCH_ASSOC)) {
            $type_id = $row['type_id'];
            $type_name = $row['type_desc'];
            $link = '<a href="#" class="toggle_link" id="toggle_link'. $type_id. '">' . $type_name . '&#8230;' . '</a>';
			$sql = "SELECT count(id) as count FROM recipes where type = '" . $type_id . "';";
            $recipe_res = $db->query($sql);
            $recipe_count = $recipe_res->fetch(PDO::FETCH_ASSOC);
			$recipe_count = $recipe_count['count'] . ($recipe_count['count'] === 1) ? ' recipe' : ' recipes';

    ?>
      <li><a href="./recipe.php?type_id=<?php echo $type_id; ?>"><?php echo $type_name; ?></a><span style="position: absolute; left: 50%;" ><?php echo ' (' . $recipe_count . ' available)'; ?></span></li>
    <?php
        }
    ?>
    </ol>
  </div>
  <?php
    include 'sidebar.php';
  ?>
</div>
<?php include 'footer.php' ?>
</body>
</html>
<?php
	mysql_free_result($type_res);
//	mysql_free_result($recipe_res);
?>
