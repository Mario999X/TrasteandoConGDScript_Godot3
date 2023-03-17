# TrasteandoConGDScript

Primeros proyectos realizados usando el lenguaje [**GDScript**](https://docs.godotengine.org/es/stable/tutorials/scripting/gdscript/gdscript_basics.html) y el motor gráfico [**Godot**](https://godotengine.org/), siguiendo tutoriales tanto por parte de la *comunidad* como *oficiales*, como proyectos propios usando la documentación.

## [First Game Godot](FirstGameGodot)

Esta es una réplica del tutorial ofrecido en la [documentación oficial de Godot](https://docs.godotengine.org/es/stable/getting_started/first_2d_game/index.html).

## [Pong Godot](PongGodot)

Recreación de [PongFX](https://github.com/Mario999X/PongFX) que realicé hace un par de años con *JavaFX*,
y siguiendo un [tutorial de youtube](https://www.youtube.com/watch?v=kr1BoEbuveI).

## [Consumir una API -- Parte I](ConsumeAPI)

Uso de [Http Request](https://docs.godotengine.org/es/stable/tutorials/networking/http_request_class.html) y la clase [JSON](https://docs.godotengine.org/es/stable/classes/class_json.html#class-json) para consumir la [PokéAPI](https://pokeapi.co/) y mostrar el json obtenido y datos relevantes del mismo, asi como controlar errores en la búsqueda realizada *(nombre o id incorrectos)*.

## [Pong Godot V2](PongGodot_V2)

Versión actualizada con un *menú de pausa*, que permite continuar la partida o cerrar el juego; [*tutorial*](https://www.youtube.com/watch?v=Su3pU14YzeY&ab_channel=rayuserp) usado.

## [Lectura y escritura de ficheros básicos](LecturaEscrituraFicheros)

Uso del tipo [File](https://docs.godotengine.org/es/stable/classes/class_file.html) y manejo de [rutas](https://docs.godotengine.org/es/stable/tutorials/io/data_paths.html) para leer o escribir en ficheros.

## [Cambio de Escenas](SceneChange)

Demostración de cambios de escenas simples para el movimiento entre distintos menús a través de botones.

## [Internacionalización Básica](InternacionalizacionBasica)

Demostración básica de implementar traducciones y cambios en un texto de ejemplo usando botones.
Se ha usado la [documentación oficial](https://docs.godotengine.org/es/stable/tutorials/assets_pipeline/importing_translations.html), la [guía oficial de localización](https://docs.godotengine.org/es/stable/tutorials/i18n/locales.html#doc-locales) y el siguiente [tutorial](https://www.youtube.com/watch?v=1Pxa5WgVLio&ab_channel=FinePointCGI) hasta el **minuto 10:30**. 

**Explicación importante**: Se usa un *CSV* para las traducciones, y **excel** no es la mejor aplicación para esta labor, como bien se dice en la *documentación*, y buscando por internet, he logrado hallar una solución; el libro de excel se exporta a csv UTF8, luego se abre en un bloc de notas y se cambia el delimitador: ";" -> ",".
Si el csv esta mal desde el principio, la herramienta de importación de Godot no permite hacer el cambio del delimitador, así que toca hacerlo a mano. 

Otras opciones son usar **LibreOffice** o **Google Sheets**, que permiten la exportación de la manera que Godot acepta.

## [Lectura y escritura de ficheros de Configuración](LecturaEscrituraFicherosConfig)

Uso de [ConfigFile](https://docs.godotengine.org/en/3.3/classes/class_configfile.html) para almacenar datos de manera persistente de manera local. Se ha usado el siguiente [tutorial](https://www.youtube.com/watch?v=ygGaN1EOQEA&list=PLPzj9u0kjrK7J-4HwgdcDOkKSh6ndXIOZ&index=1&ab_channel=TheBuffED) para poder aplicarlo como *singleton* y  tener acceso público desde el resto del proyecto.

## [Consumir una API -- Parte II](ConsumeAPI_II)

Haciendo uso de la [documentación](https://docs.godotengine.org/es/stable/tutorials/networking/http_request_class.html) y de una [API que permite hacer POST](https://jsonplaceholder.typicode.com/), realizamos una llamada y devolvemos la respuesta por la terminal.





