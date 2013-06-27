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
    <h1>OldTime Recipes Support!</h1>
    <blockquote>
      <p><strong>&#8220;OldTime Recipes</strong> is a free recipe website. <em>Enjoy :)</em>&#8221;</p>
      <p>Under construction!!</p>
    </blockquote>
    <p>Please check back later...</p>
    <p>Send me a <a href="./comment.php">comment or question</a>!</p>
  </div>
  <?php
    $db = &new MySQL();
    include 'sidebar.php';
  ?>
</div>
<?php include 'footer.php' ?>
</body>
</html>
