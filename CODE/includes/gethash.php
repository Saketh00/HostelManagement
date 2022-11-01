<?php
    $original="hmadmin";
    $hashedPwd = password_hash($original, PASSWORD_DEFAULT);
    echo $hashedPwd;
?>