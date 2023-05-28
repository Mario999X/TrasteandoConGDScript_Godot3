# TrasteandoConGDScript_Godot

Primeros proyectos realizados usando el lenguaje [**GDScript**](https://docs.godotengine.org/es/stable/tutorials/scripting/gdscript/gdscript_basics.html) y el motor gráfico [**Godot**](https://godotengine.org/), siguiendo tutoriales tanto por parte de la *comunidad* como *oficiales*, como proyectos propios usando la documentación.

## [First Game Godot](FirstGameGodot)

Esta es una réplica del tutorial ofrecido en la [documentación oficial de Godot](https://docs.godotengine.org/es/stable/getting_started/first_2d_game/index.html).

## [Pong Godot V1](PongGodot)

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

## [Pong Godot V3](PongGodot_V3)

Versión actualizada con:
- **Menú principal**.
- Agregada la opción de salir al *menú principal* desde el *menú de pausa*.
- Internacionalización español-inglés, almacenada en un archivo de configuración.
- Cambio en la jugabilidad de la bola: ahora aumenta la velocidad solo con el rebote de los propios jugadores; además, su velocidad base ha sido aumentada.


## [Point & Shoot](PointAndShoot)

- Demostración básica de detecciones de *Area2D* frente a: ellas mismas y con *KinematicBody2D*.

- Mecánica de seguimiento del puntero del ratón, y de disparo, además de una mecánica de recarga de munición. Se ha seguido el siguiente [video](https://www.youtube.com/watch?v=ggt05fCiH7M&t=1219s&ab_channel=jmbiv) para el sistema de *seguimiento* y parcialmente para el sistema de *disparo*; y para la *recarga* se usó una respuesta de la siguiente [fuente](https://godotengine.org/qa/76664/how-could-i-implement-a-reload-system).


## [Tabla de "puntuaciones" - Usuarios](ScoreTable) <!-- Este ha sido absurdamente complicado -->

Se muestra como construir una tabla y como generar filas por cada usuario.

Se obtienen de la siguiente [API](https://jsonplaceholder.typicode.com/) y se han usado los siguientes videos como guía para el ejemplo:
- [Enlace 1](https://www.youtube.com/watch?v=GdEOyWjsWOQ&ab_channel=YusaStudios) -> **Diseño de la tabla**.
- [Enlace 2](https://www.youtube.com/watch?v=SxbvW73ccxk&ab_channel=GeneralistProgrammer) -> **El como obtener los usuarios de la API**.

## [Menú PopUp](PopUpMenu)

Sencillo ejemplo mostrando un menú de tipo *PopUp* al pulsar con el ratón sobre la pantalla, se realizó con el siguiente [tutorial](https://www.youtube.com/watch?v=ESxRKqdu34M&ab_channel=ContentWonder).

## [Ventana de Diálogo](WindowDialog)

Sencillo ejemplo mostrando una ventana de diálogo con un botón de opciones y un label donde se muestra la opción elegida. Se ha seguido el siguiente [tutorial](https://www.youtube.com/watch?v=WrUULCUUSxk&ab_channel=KrisOcchipinti).

## [Pantalla de carga](LoadingScreen)

Ejemplo que toma de base el proyecto de [Consumir una API](ConsumeAPI), y soluciona uno de los posibles errores que el usuario puede realizar a propósito o de forma accidental, el **pulsar repetidamente el botón de consulta**; se ha aplicado una nueva escena sencilla que bloquea la posibilidad de accionar de nuevo el botón haciendo uso de señales hasta que la consulta se haya finalizado.

También se soluciono un fallo al escribir espacios en blanco en el buscador y realizar una consulta.

En la V2, se añadió el uso de un *timeout* por si el usuario no tuviese conexión en el momento de realizar la consulta.

## [Pong Godot V4](PongGodot_V4)

Se ha solucionado un problema con la *gestión de memoria*:
  - Al salir al menú principal desde el **menú de pausa** la escena del nivel no se cerraba adecuadamente.

Se ha agregado una **pantalla de carga** con una **barra de progreso** al comenzar una partida:
  - Se ha usado el siguiente [tutorial](https://www.youtube.com/watch?v=5aV_GSAE1kM&t=190s).
  - Debido a este nuevo cambio, se aplicó un temporizador a la bola en su primera aparición, para que el jugador pueda empezar a jugar de forma cómoda.


## [Lectura y escritura de ficheros de Configuración Cifrados](LecturaEscrituraFicherosConfigCifrado)

Usando de base el ejemplo realizado en uno de los [proyectos anteriores](LecturaEscrituraFicherosConfig) y siguiendo la [documentación oficial](https://docs.godotengine.org/en/stable/classes/class_configfile.html) y usando la clave para encriptar el archivo propuesta en este [foro](https://godotengine.org/qa/68165/encrypting-a-config-save-file), mostramos como cifrar un archivo de configuración para **evitar** en la medida de lo posible el ***acceso sencillo** a datos sensibles*.

## [Ejercicio de las cápsulas](EjercicioCapsulas)

Haciendo uso de [Mutex](https://docs.godotengine.org/es/stable/classes/class_mutex.html) y [Thread](https://docs.godotengine.org/en/3.5/classes/class_thread.html), se realiza una réplica del ejercicio de las Cápsulas (adaptado):
  - Se producen cápsulas que cuentan con un tiempo de lanzamiento, el trabajador que se encargue de esa cápsula tardara ese tiempo en poder ponerse con otra cápsula.

Se usó ligeramente el siguiente [tutorial](https://www.youtube.com/watch?v=4XmtZMvyHZE&list=PLPzj9u0kjrK7J-4HwgdcDOkKSh6ndXIOZ&index=9&ab_channel=BitBirdy), sin tener en cuenta la parte de los *semáforos*.

## [Point & Shoot II](PointAndShoot_II)

Versión donde la *diana* dispara balas siguiendo un patrón básico de forma continua. Se ha experimentado con el uso de detecciones entre Area2D y KinematicBody2D.

Se ha seguido el siguiente [tutorial](https://www.youtube.com/watch?v=Z2TaFnN7cdU&t=491s) para el patrón de disparo enemigo.

Se han usado las siguientes fuentes para dos problemas que han surgido en el proceso:
  - [El problema de generar muchas veces el mismo objeto](https://godotengine.org/qa/38519/sometimes-collision-detection-of-area2d-doesnt-work)
  - [Enviar señales de una bala enemiga al jugador](https://godotengine.org/qa/37080/sending-signals-from-one-scene-to-other)

## [Pantalla de carga II](LoadingScreen_II)

Versión actualizada con un *Sprite en **movimiento*** durante la pantalla de carga.

## [Cambio de Escenas II](SceneChange_II)

Versión con animación entre cambios de escena. Se siguió el siguiente [tutorial](https://www.youtube.com/watch?v=yZQStB6nHuI&ab_channel=TheShaggyDev).

## [Práctica con una explosión con partículas](ExplosionParticles)

Pequeña prueba con partículas simulando una explosión. Se siguió el siguiente [tutorial](https://www.youtube.com/watch?v=kWGCLI1iMjE&ab_channel=TheDevDoc)

## [-- GUÍA DE ESTILO -- ](https://docs.godotengine.org/es/stable/tutorials/scripting/gdscript/gdscript_styleguide.html)

- Clases y nodos: PascalCase
- Funciones y variables: snake_case
  - Uso de _ para funciones/variables privadas
- Constantes: CONSTANT_CASE

## -- Control de versiones con Git --

La opción más recomendable es usar Git directamente:
  - Usando la terminal
  - Usando clientes de escritorio, como [GitKraken](https://www.gitkraken.com/), [Github Desktop](https://desktop.github.com/), o [VSC](https://code.visualstudio.com/) con los *plugins* que hagan falta.
  
  - Los plugins ofrecidos dentro del propio editor no funcionan muy bien:
    - [Git-Plugin](https://github.com/godotengine/godot-git-plugin)
    - [GitHub Integration](https://godotengine.org/asset-library/asset/441)

## -- GENERACIÓN DE EJECUTABLES --

Se ha seguido la [documentación oficial](https://docs.godotengine.org/es/stable/tutorials/export/exporting_projects.html).
Para realizar las distintas exportaciones, se requiere la descarga de las plantillas de la versión correspodiente de Godot, en mi caso, la **3.5.2**, en el [enlace oficial](https://godotengine.org/download/3.x/windows/) se pueden descargar y se instalarán usando el propio Godot.

Para exportar el *icono* de la aplicación en windows, será necesario usar una herramienta extra llamada [rcedit](https://github.com/electron/rcedit/releases), como bien se menciona en otro punto de la [documentación](https://docs.godotengine.org/es/stable/tutorials/export/changing_application_icon_for_windows.html). 

- [Página recomendada para exportar de PNG a ICO](https://png2icojs.com/)

**Importante**, manejar correctamente donde se almacena la información persistente del usuario siguiendo la [documentación oficial](https://docs.godotengine.org/en/3.5/tutorials/io/data_paths.html)

Finalmente, se siguió el siguiente [tutorial](https://www.youtube.com/watch?v=nyHFFL_A3aM&ab_channel=MartinSenges).
