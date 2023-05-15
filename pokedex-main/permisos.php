<?php
session_start();

$habilitado = isset($_SESSION["usuario"]) && $_SESSION["usuario"] == "admin";


