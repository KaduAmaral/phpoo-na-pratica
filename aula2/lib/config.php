<?php

function search_lib($lib, $file, $ds = '/'){
   if (is_dir($lib)){
      if (file_exists($lib.$ds.$file)) return $lib.$ds.$file;
      $dirs = array_diff(scandir($lib, 1), array('.','..'));
      foreach ($dirs as $dir) {
         if (!is_dir($lib.$ds.$dir)) continue;
         $f = search_lib($lib.$ds.$dir, $file, $ds);
         if ($f !== false) return $f;
      }
   }
   return false;
}

function __autoload($class){
   $libs = __DIR__.'./class';
   $ext  = '.php';
   $file = search_lib($libs, $class.$ext);
   if ($file !== false ) require_once $file;
   else {
      $msg = "Autoload fatal erro: Não foi possível encontrar o arquivo {$class}!";
      error_log($msg);
      exit('<br><br><strong>'.$msg.'</strong>');
   }
}


$con = New ConnectionMSi('127.0.0.1','root','','phpoo');