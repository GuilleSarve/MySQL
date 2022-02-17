#Borrar base de datos si existe
DROP DATABASE IF EXISTS superheroes;
#Crear base de datos
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
#Usar la base de datos
USE superheroes;
#Crear tabla creador
CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);
#Crear tabla personajes
CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
  #Ejercicios
  #a) Insertar en las tablas creadas los siguientes datos:
  insert into creador (nombre) values ("Marvel");
  insert into creador (nombre) values ("DC Comics");
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Bruce Banner","Hulk",160,"600 mil",75,98,1962,"Fisico Nuclear",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Tony Stark","Iron Man",170,"200 mil",70,123,1963,"Inventor Industrial",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Thor Odinson","Thor",145,"Infinita",100,235,1962,"Rey de Asgard",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("BWanda Maximoff","Bruja Escarlata",170,"100 mil",90,345,1964,"Bruja",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Carol Denvers","Capitana Marvel",157,"250 mil",85,128,1968,"Oficial de inteligencia",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Thanos","Thanos",170,"Infinita",40,306,1973,"Adorador de la muerte",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Peter Parker","Spiderman",165,"25 mil",80,74,1962,"Fotografo",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Steve Rogers","Capitan America",145,"600",45,60,1941,"Oficial Federal",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Bobby Drake","Ice Man",140,"2 mil",64,122,1963,"Contador",1);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Barry Allen","Flash",160,"10 mil",120,168,1956,"Cientifico forense",2);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Bruce Wayne","Batman",170,"500",32,47,1939,"Hombre de negocios",2);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Clarck Kent","Superman",165,"Infinita",120,182,1948,"Reportero",2);
  insert into personajes (nombre_real,personaje,inteligencia,fuerza,velocidad,poder,aparicion,ocupacion,id_creador) 
  values ("Diana Prince","Mujer Maravilla",160,"Infinita",95,127,1949,"Princesa guerrera",2);
  #b) Cambiar en la tabla personajes el año de aparición a 1938 del personaje Superman. 
  #	A continuación, realizar un listado de toda la tabla para verificar que el personaje
  #	haya sido actualizado.
  Update superheroes.personajes set aparicion = 1938 where personaje="Superman";
  select * from superheroes.personajes;
  #c)Eliminar el registro que contiene al personaje Flash. A continuación, mostrar toda la tabla
  #	para verificar que el registro haya sido eliminado.
  Delete from superheroes.personajes where personaje = "Flash";
  Select * From superheroes.personajes;
  #d)Eliminar la base de datos superhéroes
  drop schema superheroes;
  