<?php
$rand = random_bytes(32);
echo 'base64:' . base64_encode($rand) . "\n\n";