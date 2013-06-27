<?php
	// $cachetimeout=900;
//	require "/var/www/quickcache/quickcache/quickcache.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <?php include 'head.php' ?>
    <div id="splash"></div>
    <div id="page">
        <div id="content">
            <h1>OldTime Recipes Support!</h1>
            <blockquote>
                <p><strong>&#8220;OldTime Recipes</strong> is a free recipe website. <em>Enjoy :)</em>&#8221;</p>
            </blockquote>
            <?php
            // var_dump($_POST);die;
            $rname = filter_var($_POST['rname'], FILTER_SANITIZE_STRING);
            $category = filter_var($_POST['category'], FILTER_SANITIZE_STRING);
            $ingredients = filter_var($_POST['ingredients'], FILTER_SANITIZE_STRING);
            $directions = filter_var($_POST['directions'], FILTER_SANITIZE_STRING);
            $notes = filter_var($_POST['notes'], FILTER_SANITIZE_STRING);
            $nutrition_info = filter_var($_POST['nutrition_info'], FILTER_SANITIZE_STRING);
            $source = filter_var($_POST['source'], FILTER_SANITIZE_STRING);
            $todayis = date("Y-m-d H:i:s");

            $sql = "INSERT INTO recipes (name, type, ingredients, directions, notes, nutrition_info, recipe_source, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            $res = $db->prepare($sql)->execute(array($rname, $category, $ingredients, $directions, $notes, $nutrition_info, $source, $todayis));
            ?>

            <br /><br />
            <a href="./add_recipe.php"> Old Time Recipes - Add Recipe </a>
            <p>
                Date: <?php echo $todayis ?>
                <br />
                Recipe Name: <?php echo $rname ?>
                <br />
                Category: <?php echo $category ?>
                <br />
                Ingredients:<br />
                <?php $ingredients_out = str_replace("\r", "<br/>", $ingredients);
                echo $ingredients_out; ?>
                <br />
                Directions:<br />
                <?php $directions_out = str_replace("\r", "<br/>", $directions);
                echo $directions_out; ?>
                <br />
                Notes:<br />
                <?php $notes_out = str_replace("\r", "<br/>", $notes);
                echo $notes_out; ?>
                <br />
                Nutritional Information:<br />
                <?php $nutrition_info_out = str_replace("\r", "<br/>", $nutrition_info);
                echo $nutrition_info_out; ?>
                <br />
                Source:<br />
                <?php $source_out = str_replace("\r", "<br/>", $source);
                echo $source_out; ?>
            </p>
        </div>
        <?php
        include 'sidebar.php';
        ?>
    </div>
    <?php include 'footer.php' ?>
    </body>
</html>