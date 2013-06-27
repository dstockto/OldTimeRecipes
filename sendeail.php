<p>&nbsp;</p>
<?php

defined ('__OTR') or  die('Direct Access to ' . basename (__FILE__) . ' is not allowed.');

$httpagent = filter_var($_POST['httpagent'], FILTER_SANITIZE_STRING);
$visitor = filter_var($_POST['visitor'], FILTER_SANITIZE_STRING);
$visitormail = filter_var($_POST['visitormail'], FILTER_SANITIZE_EMAIL);
$notes = filter_var($_POST['notes'], FILTER_SANITIZE_STRING);
$attn = filter_var($_POST['attn'], FILTER_SANITIZE_STRING);

if (empty($visitor)) {
    die ("Your name is required, please click the back button and try again. ");
}

if (empty($visitormail)) {
    die ("Your email address is required, please click the back button and try again. ");
}

if (empty($notes)) {
    die ("Please provide a comment!");
}

$todayis = date("l, F j, Y, g:i a") ;
$subject = $attn;
$notes = stripcslashes($notes);
$message = " $todayis [EST] \n
Attention: $attn \n
Message: $notes \n
From: $visitor ($visitormail)\n
Additional Info : IP = $ip \n
Browser Info: $httpagent \n
Referral : $httpref \n
";

$from = "From: $visitormail\r\n";


$sent = mail("webmaster@oldtimerecipes.us", $subject, $message, $from);

if($sent) {
    echo "Mail sent successfully!";
} else {
    echo "There was an error sending your mail, please use an alternative contact...";
    ?>

<h3 style="text-decoration: underline;">eHymns - Contact Information</h3>
<p>
    <TABLE border="1">
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
            <td valign="top">&nbsp;24885 Road 178&nbsp;<br />
            &nbsp;Defiance, Ohio 43512-9331&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Cell Phone&nbsp;</td>
            <td valign="top">&nbsp;(419) 770-1960&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">&nbsp;Email&nbsp;</td>
            <td valign="top">&nbsp;<a href="mail-to:webmaster@oldtimerecipes.us">webmaster@oldtimerecipes.us</a>&nbsp;</td>
        </tr>
    </TABLE>
</p>
<?php
}
?>
<p>
    Date: <?php echo $todayis ?>
    <br />
    Thank You : <?php echo $visitor ?> ( <?php echo $visitormail ?> )
    <br />

    Attention: <?php echo $attn ?>
    <br />
    Message:<br />
    <?php $notesout = str_replace("\r", "<br/>", $notes);
    echo $notesout; ?>
    <br />
    Your IP Address: <?php echo $ip ?>

    <br /><br />
    <a href="./"> Old Time Recipes - Home </a>
</p>