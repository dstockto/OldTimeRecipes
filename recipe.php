<?php /*
	error_reporting(E_ALL);
	ini_set('display_errors', 'On');
	// $cachetimeout=900;
	include_once "/usr/share/php/quickcache/quickcache/quickcache.php"; */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <?php include 'head.php' ?>
        <div id="splash"></div>
        <div id="page">
            <div id="content">
                <h1>Welcome to OldTime Recipes!</h1>
                <blockquote>
                    <p><strong>&#8220;OldTime Recipes</strong> is a free recipe website. <em>Enjoy :)</em>&#8221;</p>
                </blockquote>
                <?php
                $pId = filter_var($_GET['type_id'], FILTER_SANITIZE_NUMBER_INT);
                $pData = null;
                if (empty($pId)) {
                    $sql = 'SELECT type_desc FROM type order by type_desc;';
                    $pData_res = $db->query($sql);
                    $all = true;
                } else {
                    $sql = 'SELECT type_desc FROM type where type_id = :pId;';
                    $pData_res = $db->prepare($sql);
                    $pData_res->bindParam(':pId', $pId);
                    $pData_res->execute();
                    $all = false;
                }
                $row = $pData_res->fetch(PDO::FETCH_ASSOC);
                ?>
                <p>You are viewing <?php echo ($all) ? 'All' : $row['type_desc']; ?> Recipes.</p>
                <ol>
                    <?php
                    if ($all) {
                        $sql = "SELECT id, name, date FROM recipes JOIN source ON source_id = recipe_source" .
                            " JOIN type ON type_id = type" .
                            " order by name;";
                        $recipe_res = $db->query($sql);
                    } else {
                        $sql = "SELECT id, name, date FROM recipes JOIN source ON source_id = recipe_source" .
                            " JOIN type ON type_id = type" .
                            " where type_id = :pId" .
                            " order by type_desc, name;";
                        $recipe_res = $db->prepare($sql);
                        $recipe_res->bindParam(':pId', $pId);
                        $recipe_res->execute();
                    }
                    $recipe_count = $recipe_res->rowCount();

                    while ($row = $recipe_res->fetch(PDO::FETCH_ASSOC)) {
                        date_default_timezone_set('America/Detroit');
                        $datetime = new DateTime($row['date']);
                        $recipe_id = $row['id'] . '_r';
                        $recipe_name = $row['name'];
                        $link = '<a href="#" class="toggle_link" id="toggle_link' . $recipe_id . '" rel="toggle_link' . $row['id'] . '">' . $recipe_name . '&#8230;' . '</a>';

                        ?>
                        <li>
                            <?php
                            echo $link . ' (' . $datetime->format('l, F j, Y g:i:s A') . ')';
                            echo '<div id="subcontent' . $recipe_id . '" class="subcontent" style="display:none;">' .
                                'Loading...</div>';
                            ?>
                        </li>
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
