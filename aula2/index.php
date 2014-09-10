<?php

require_once __DIR__.'/lib/config.php';

   $where = array('id'=>array(1,'>>>',4,array(2,3)));
   $usuarios = $con->Select('usuarios',$where);
?><!DOCTYPE html>
<html lang="pt-BR">
<head>
   <meta charset="UTF-8">
   <title>PHPOO na Prática</title>
</head>
<body>
<pre>
<?=var_dump($usuarios->fetch_all(MYSQLI_ASSOC))?>
</pre>
</body>
</html>