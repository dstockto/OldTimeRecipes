<?php include_once('MySQL.php'); ?>
<?php
require_once dirname(__FILE__) . '/config.php';
$db = new MySQL($config);
$id = (int)$_GET['id'];
$recipe_id = (int)filter_var($id, FILTER_SANITIZE_NUMBER_INT);
if ($id != $recipe_id) {
    die('ERROR: Invalid recipe ID!');
}
$sql =<<<EOD
SELECT *
FROM recipes
JOIN source
ON source_id = recipe_source
JOIN type
ON type_id = type
where recipes.id = :recipe_id;
EOD;

$recipe_res = $db->prepare($sql);
$recipe_res->bindParam(':recipe_id', $recipe_id);
$recipe_res->execute();
$row = $recipe_res->fetch(PDO::FETCH_ASSOC);

$rt = $row['name'];
$type = $row['type_desc'];
$ingredients = str_replace('
', '</span><br /><span style="padding-left:10px;">', $row['ingredients']);
$directions = str_replace('
', '</span><br /><span style="padding-left:10px;">', $row['directions']);
$notes = str_replace('
', '</span><br /><span style="padding-left:10px;">', $row['notes']);
$nutrition_info = str_replace('
', '</span><br /><span style="padding-left:10px;">', $row['nutrition_info']);
$source = $row['source_desc'];

?>
<div class="recipe">
    <ul>
        <h2 class="select" style="margin-top:0; padding-bottom:5px;"><?php echo $rt; ?></h2><?php
        echo '<p><strong>Type:</strong> ' . $type . '</p>';
        echo '<p><strong>Ingredients:</strong><br /><span style="padding-left:10px;">' . $ingredients . '</span></p>';
        echo '<p><strong>Directions:</strong><br /><span style="padding-left:10px;">' . $directions . '</span></p>';
        if (!empty ($notes)) {
            echo '<p><strong>Notes:</strong><br /><span style="padding-left:10px;">' . $notes . '</span></p>';
        }
        if (!empty ($nutrition_info)) {
            echo '<p><strong>Nutrition Info:</strong><br /><span style="padding-left:10px;">' . $nutrition_info . '</span></p>';
        }
        echo '<p><strong>Source:</strong> ' . $source . '</p>';
        ?></ul>
</div>