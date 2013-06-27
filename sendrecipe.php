<p>&nbsp;</p>
<?php

defined ('__OTR') or  die('Direct Access to ' . basename (__FILE__) . ' is not allowed.');

$ip = filter_var($_POST['ip'], FILTER_SANITIZE_STRING);
$httpref = filter_var($_POST['httpref'], FILTER_SANITIZE_STRING);
$httpagent = filter_var($_POST['httpagent'], FILTER_SANITIZE_STRING);
$visitor = filter_var($_POST['visitor'], FILTER_SANITIZE_EMAIL);
$visitormail = filter_var($_POST['visitormail'], FILTER_SANITIZE_STRING);
$rname = filter_var($_POST['rname'], FILTER_SANITIZE_STRING);
$ingredients = filter_var($_POST['ingredients'], FILTER_SANITIZE_STRING);
$directions = filter_var($_POST['directions'], FILTER_SANITIZE_STRING);
$notes = filter_var($_POST['notes'], FILTER_SANITIZE_STRING);
$nutrition_info = filter_var($_POST['nutrition_info'], FILTER_SANITIZE_STRING);
$source = filter_var($_POST['source'], FILTER_SANITIZE_STRING);
$category = filter_var($_POST['category'], FILTER_SANITIZE_STRING);

if (empty($visitor) || empty($rname) || empty($visitormail) || empty($ingredients) || empty($source) || empty($category)) {
    echo "<div style='text-align: center;'><h2>Use Back - fill in all required fields</h2><h3 style='color: red;'>(Designated with a *)</h3>";
    die ("Use back! !</div>");
}

$todayis = date("l, F j, Y, g:i a");

$subject = $category . ' recipe!';

// $ingredients = stripcslashes($ingredients);

$message = "$todayis [EST] \n
Recipe Name:\n$rname \n\n
Category:\n$category \n\n
Ingredients:\n$ingredients \n\n
Directions:\n$directions \n\n
Notes:\n$notes \n\n
Nutritional Information:\n$nutrition_info \n\n
Source:\n$source \n\n
From:\n$visitor ($visitormail)\n
Additional Info:\nIP = $ip \n
Browser Info: $httpagent \n
Referral: $httpref \n
";

$from = "From: $visitormail\r\n";


$sent = mail("webmaster@oldtimerecipes.us", $subject, $message, $from);

if ($sent) {
    echo "Mail sent successfully!";
} else {
    echo "There was an error sending your mail, please use an alternative contact...";
    ?>

    <h3 style="text-decoration: underline; margin-bottom: 16px;">Old Time Recipes - Contact Information</h3>
    <table border="1">
        <tbody>
        <tr>
            <td>&nbsp;<b>Type</b>&nbsp;</td>
            <td>&nbsp;<b>Information</b>&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Name&nbsp;</td>
            <td valign="top">&nbsp;Bud Manz&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Home Address&nbsp;</td>
            <td valign="top">&nbsp;24885 Road 178&nbsp;<br/>
                &nbsp;Defiance, Ohio 43512-9331&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Cell Phone&nbsp;</td>
            <td valign="top">&nbsp;(419) 770-1960&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Email&nbsp;</td>
            <td valign="top">&nbsp;webmaster@oldtimerecipes.us&nbsp;</td>
        </tr>
        </tbody>
    </table>
<?php
}
?>
<p>
    Date: <?php echo $todayis ?>
    <br/>
    Thank You: <?php echo $visitor ?> ( <?php echo $visitormail ?> )
    <br/>
    Recipe Name: <?php echo $rname ?>
    <br/>
    Category: <?php echo $category ?>
    <br/>
    Ingredients:<br/>
    <?php $ingredients_out = str_replace("\r", "<br/>", $ingredients);
    echo $ingredients_out; ?>
    <br/>
    Directions:<br/>
    <?php $directions_out = str_replace("\r", "<br/>", $directions);
    echo $directions_out; ?>
    <br/>
    Notes:<br/>
    <?php $notes_out = str_replace("\r", "<br/>", $notes);
    echo $notes_out; ?>
    <br/>
    Nutritional Information:<br/>
    <?php $nutrition_info_out = str_replace("\r", "<br/>", $nutrition_info);
    echo $nutrition_info_out; ?>
    <br/>
    Source:<br/>
    <?php $source_out = str_replace("\r", "<br/>", $source);
    echo $source_out; ?>
    <br/>
    <?php echo $ip ?>

    <br/><br/>
    <a href="./"> Old Time Recipes - Home </a>
</p>