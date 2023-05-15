<?php
require_once("permisos.php");
include_once("header.php");
include_once("consultaDatosPokemonAnterior.php");
include_once ("datos_conexion.php");
$resultados = "SELECT * FROM Type";
$query = mysqli_query($conexion,$resultados);
$datos = mysqli_fetch_all($query, MYSQLI_ASSOC);

echo '
 <div class="container">
 
   
        <h3 style="color: #F1F1F1FF">Ingrese los datos que desea modificar al pokemon ' . $pokemonAnterior["name"] . '</h3>
   
            <form action="editar_pokemon.php" method="post" ENCTYPE="multipart/form-data"><br>
                <div class="mb-3">
                    <input type="number" class="form-control" name="uid" min="0" placeholder="ID Pokemon" value='.
    $pokemonAnterior["uid"] .'  >
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="name" placeholder="Nombre" value='.
    $pokemonAnterior["name"] .'  >
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="description" placeholder="Descripcion" value= "'.
    $pokemonAnterior["description"] .'">
                </div>
                <div class="mb-3">
                    <label class="form-label" style="color: #F1F1F1FF">Tipo</label>
                    <select name="typeId" class="form-select" required>
 ';

foreach ($datos as $resultado){

    $imprimir = "<option value='" . $resultado["id"] . "' ";
    if($resultado["id"]== $pokemonAnterior["idType"]) {
        $imprimir .= " SELECTED ";
    }
    $imprimir .= ">" .$resultado["description"] ."</option>";
    echo $imprimir;
}

echo ' 

    </select>
                </div>
                
                <div class="mb-3">
                    <label class="form-label" style="color: #F1F1F1FF">Imagen</label>
                    <input type="file" class="form-control" name="image" placeholder= '.$pokemonAnterior["url_img"].'>
                </div>
                
                    <input type="hidden" name="idOld" value="' . $pokemonAnterior["uid"] . '">
                    <input type="hidden" name="imageOld" value="' . $pokemonAnterior["url_img"] . '">
                    <input type="hidden" name="typeDescriptionOld" value="' . $pokemonAnterior["typeDescription"] . '">
                    <input type="hidden" name="descriptionOld" value="' . $pokemonAnterior["description"] . '">
                    <input type="hidden" name="nameOld" value="' . $pokemonAnterior["name"] . '">
                <div class="text-center">
                    <button type="submit" class="btn btn-primary mt-3 w-100 p-2">Modificar</button>
                </div>
            </form>
        </div>


'
?>