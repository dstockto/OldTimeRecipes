<div id="sidebar">
    <h2>Newest Recipes</h2>
    <ul>
    <?php
        $sql = "SELECT id, name, date FROM recipes ORDER BY date DESC LIMIT 0,5;";
        $recipe_res = $db->query($sql);
        $recipe_count = $recipe_res->rowCount();

        while ($row = $recipe_res->fetch(PDO::FETCH_ASSOC)) {
            date_default_timezone_set('America/Detroit');
            $datetime = new DateTime($row['date']);
            $recipe_id = $row['id'] . '_s';
            $recipe_name = $row['name'];
            $link = '<a href="#" class="toggle_link" id="toggle_link'. $recipe_id . '" rel="toggle_link'. $row['id'] . '">' . $recipe_name . '&#8230;' . '</a>';
    ?>
    <li>
        <h3><?php echo $datetime->format('l, F j, Y') . '<br />(' . $datetime->format('g:i:s A') . ')'; ?></h3>
        <?php
            echo $link;
            echo '<div id="subcontent' . $recipe_id . '" class="subcontent" style="display:none;">' .
                 'Loading...</div>';
        ?>
    </li>
    <?php
        }
    ?>
    </ul>
</div>