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
    </blockquote>
            <div id="preamble" style="margin-top: 20px; border-left: transparent; margin-left: 150px">
                <form method="post" name="recipe" action="sendrecipe.php">
                    <p>* - required field.</p>
                    <?php
                        $ipi = getenv("REMOTE_ADDR");
                        $httprefi = getenv ("HTTP_REFERER");
                        $httpagenti = getenv ("HTTP_USER_AGENT");
                    ?>
                    <input type="hidden" name="ip" value="<?php echo $ipi ?>" />
                    <input type="hidden" name="httpref" value="<?php echo $httprefi ?>" />
                    <input type="hidden" name="httpagent" value="<?php echo $httpagenti ?>" />
                    Your Name: *<br />
                    <input type="text" name="visitor" size="35" />
                    <br />
                    Your Email: *<br />
                    <input type="text" name="visitormail" size="35" />
                    <br />
                    <br />
                    Recipe Name: *<br />
                    <input type="text" name="rname" size="35" />
                    <br /><br />
                    Category: *<br />
                    <select name="category" size="1">
                        <?php
                            $sql = "SELECT type_desc FROM type order by type_desc;";
                        $pRecipe = $db->query($sql);
                        while($row = $pRecipe->fetch(PDO::FETCH_ASSOC)) {
                                echo '<option value=" ' . $row['type_desc'] . ' ">' . $row['type_desc'] . ' </option>';
                            }
                        ?>
                    </select>
                    <br /><br />
                    Ingredients: *
                    <br />
                    <textarea style="background-color: white" name="ingredients" rows="4" cols="40"></textarea>
                    <br /><br />
                    Directions: *
                    <br />
                    <textarea style="background-color: white" name="directions" rows="4" cols="40"></textarea>
                    <br /><br />
                    Notes:
                    <br />
                    <textarea style="background-color: white" name="notes" rows="4" cols="40"></textarea>
                    <br /><br />
                    Nutritional Information:
                    <br />
                    <textarea style="background-color: white" name="nutrition_info" rows="4" cols="40"></textarea>
                    <br /><br />
                    Source: *<br />
                    <input type="text" name="source" size="35" />
                    <br /><br />
                    <br />
                    Please verify your human existence by typing in the text
                    <br />from the graphic in the box below it.
                    <br />
                    <?php

                    require_once('./recaptchalib.php');

                    // Get a key from http://recaptcha.net/api/getkey
                    $publickey = "6Lfd0gQAAAAAANSAo290uEZdCnL9PF7UNaCd-Wja";
                    $privatekey = "6Lfd0gQAAAAAAEL5ykjsKaF4MjRe9E2iBYsoAMr8 ";

                    # the response from reCAPTCHA
                    $resp = null;
                    # the error code from reCAPTCHA, if any
                    $error = null;

                    # was there a reCAPTCHA response?
                    if ($_POST['recaptcha_response_field']) {
                        $resp = recaptcha_check_answer ($privatekey,
                            $_SERVER["REMOTE_ADDR"],
                            $_POST["recaptcha_challenge_field"],
                            $_POST["recaptcha_response_field"]);

                        if ($resp->is_valid) {
                            #  include "./sendrecipe.php";
                            call_user_func('submit_page');
                        } else {
                            # set the error code so that we can display it
                            $error = $resp->error;
                        }
                    }
                    echo recaptcha_get_html($publickey, $error);
                    ?>
                    <br />
                    <input type="submit" value="Send Mail" />
                    <br />
                    Free Code at: <a href="http://www.ibdhost.com/contact/">ibdhost.com/contact/</a>
                </form>
            </div>
  </div>
  <script type="text/javascript">
    function submit_page() {
        recipe.submit();
    }
  </script>
  <?php
    $db = &new MySQL();
    include 'sidebar.php';
  ?>
</div>
<?php include 'footer.php' ?>
</body>
</html>
