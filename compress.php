<?php
require "dist/classes/image.class.php";
$comp = new imageComp();
$comp->setImage('0uWbJuWM3Gw.jpg');//Image to use
echo $comp->compress();
echo $comp->getSize();