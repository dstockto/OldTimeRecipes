<?php
define('__OTR', true);
include_once('MySQL.php');
?>
<head>
    <?php
    $pTitle = 'Home';
    $path = $_SERVER['PHP_SELF'];
    $file = basename($path, ".php");
    if ($file != 'index') {
        $pTitle = ucfirst($file);
    }
    require_once dirname(__FILE__) . '/config.php';
    $db = new MySQL($config);
    ?>
    <title>OldTime Recipes - <?php echo $pTitle; ?></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="msvalidate.01" content="59CE81AC271210AD6F9EB44E245ACF0A"/>
    <link href="/css/default.css" rel="stylesheet" type="text/css"/>
    <script src='/js/jquery.js' type='text/javascript'></script>
    <script type="text/javascript">
        // <!--

        function getSubcontent(toggleLinkId) {
            return $('#subcontent' + getRecipeId(toggleLinkId));
        }

        function getRecipeId(id) {
            return id.substring('toggle_link'.length);
        }

        $(document).ready(function () {
            loadToggleLinks();
        });

        function loadToggleLinks() {
            $('.toggle_link').one('click', function () {
                getSubcontent(this.id).show();
                $(this).bind('click', function () {
                    getSubcontent(this.id).toggle('slow');
                    return false;
                });
                getSubcontent(this.id).load('recipeajax.php?id=' + getRecipeId(this.rel) + '&code=' + getRecipeId(this.id), null, function () {
                    $(this).hide();
                    $(this).show('slow');
                });
                return false;
            });
        }

        // -->
    </script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-23789744-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>
</head>
<body>
<div id="header">
    <div id="logo">
        <div id="logoh1"><a href="./">OldTime Recipes</a></div>
        <div id="logoh2">We are <strong>*the*</strong> site for free recipes!</div>
    </div>
    <div id="menu">
        <ul>
            <li><a href="./">Home</a></li>
            <li><a href="./about.php">About Us</a></li>
            <li><a href="./recipe.php?type_id=All">Recipes</a></li>
            <li><a href="./support.php">Support</a></li>
        </ul>
    </div>
</div>
