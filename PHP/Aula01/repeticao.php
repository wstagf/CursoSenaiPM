<?php

for ($i=0; $i <=10; $i++ ) { 
    echo('<h1>'.$i.'</h1>');
}

echo('<br/><br/><br/><br/>');
$a = 0;
while ($a <= 10) {
    echo('<h1>'.$a.'</h1>');
    $a++;
}

$a = 0;
do {
    echo('<h2>DO '.$a.'</h2>');
    $a++;
} while ($a <= 10);


?>