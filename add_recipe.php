<?php /*
	error_reporting(E_ALL);
	ini_set('display_errors', 'On');
	// $cachetimeout=900;
	include_once "/usr/share/php/quickcache/quickcache/quickcache.php"; */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
include 'head.php';
if (!in_array($_SERVER['REMOTE_ADDR'], $config['access']['default']['IP'])) {
    die('This script is only accessible from a certain location.');
}
?>
<div id="splash"></div>
<div id="page">
    <div id="content">
        <h1>OldTime Recipes Support!</h1>
        <blockquote>
            <p><strong>&#8220;OldTime Recipes</strong> is a free recipe website. <em>Enjoy :)</em>&#8221;</p>
        </blockquote>
        <form method="post" name="recipe" action="insertrecipe.php">
            Recipe Name:<br/>
            <input type="text" name="rname" size="35"/>
            <br/><br/>
            Category:<br/>
            <select name="category" size="1">
                <?php
                $sql = "SELECT type_id, type_desc FROM type order by type_desc;";
                $pRecipe = $db->query($sql);
                while ($row = $pRecipe->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value=" ' . $row['type_id'] . ' ">' . $row['type_desc'] . ' </option>';
                }
                ?>
            </select>
            <br/><br/>
            Ingredients:
            <br/>
            <textarea style="background-color: white" name="ingredients" rows="4" cols="40"></textarea>
            <br/><br/>
            Directions:
            <br/>
            <textarea style="background-color: white" name="directions" rows="4" cols="40"></textarea>
            <br/><br/>
            Notes:
            <br/>
            <textarea style="background-color: white" name="notes" rows="4" cols="40"></textarea>
            <br/><br/>
            Nutritional Information:
            <br/>
            <textarea style="background-color: white" name="nutrition_info" rows="4" cols="40"></textarea>
            <br/><br/>
            Source:<br/>
            <select name="source">
                <?php
                $sql = "SELECT source_id, source_desc FROM source order by source_desc;";
                $pRecipe = $db->query($sql);
                while ($row = $pRecipe->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value=" ' . $row['source_id'] . ' ">' . $row['source_desc'] . ' </option>';
                }
                ?>
            </select>
            <br/>
            <input type="submit" value="Add Recipe"/>
        </form>
    </div>
    <?php
    include 'sidebar.php';
    ?>
</div>
<?php include 'footer.php' ?>
</body>
</html>
