--Curso Full Stack Codo a Codo Comisión:
----------------------------------------
-- 1) Tabla de ALumnos : 
CREATE TABLE ALUMNOS(
	n_DNI  				NUMBER (11) NOT NULL , -- PK
	xc_Nombre 			VARCHAR2(100),
	xc_Apellidos       	VARCHAR2(100),
	N_Departamento 		NUMBER(4),
	i_Presupuesto     	NUMBER(20,2)
  );
/*  
-- My Sql : 
CREATE TABLE `universidad`.`alumnos` (`n_DNI` INT(11) NOT NULL , `xc_Nombre` VARCHAR(100) NOT NULL , `xc_Apellidos` VARCHAR(100) NOT NULL , `N_Departamento` INT(4) NOT NULL ) ENGINE = InnoDB COMMENT = 'Tabla de Alumnos';
ALTER TABLE `alumnos` ADD PRIMARY KEY(`n_DNI`);  
*/
--
ALTER TABLE ALUMNOS  ADD (
  CONSTRAINT ALUM_PK
  PRIMARY KEY
  (n_DNI));
--  
ALTER TABLE ALUMNOS
ADD CONSTRAINT ALUM_FK FOREIGN KEY (N_Departamento)
REFERENCES DEPARTAMENTOS (N_Departamento);
--
CREATE TABLE DEPARTAMENTOS(  
  N_Departamento 		NUMBER(4) NOT NULL , -- PK 
  xc_Departamento 		VARCHAR2(200)
  );
ALTER TABLE ALUMNOS  ADD (
  CONSTRAINT DEPTO_PK
  PRIMARY KEY
  (N_Departamento));  
/*  
-- My sql : 
CREATE TABLE `universidad`.`departamentos` (`N_Departamento` INT(4) NOT NULL , `Xc_Departamento` VARCHAR(100) NOT NULL 
 `i_Presupuesto` INT(20,2) NOT NULL) ENGINE = InnoDB;
ALTER TABLE `departamentos` ADD PRIMARY KEY(`N_Departamento`);
*/
--   
/*
31096678 Juan 			Lopez 			14 Informática 		80000
31096675 Martin 		Zarabia 		77 Investigación 	40000
34269854 Jose 			velez 			77 Investigación 	40000
41369852 Paula 			Madariaga 		77 Investigación 	40000
33698521 Pedro 			Perez 			14 Informática 		80000
32698547 Mariana 		Lopez 			15 Gestión 			95000
42369854 Abril 			Sanchez 		37 Desarrollo 		65000
36125896 Marti 			Julia 			14 Informática 		80000
36985471 Omar 			Diaz 			15 Gestión 			95000
32145698 Guadalupe 		Perez 			77 Investigación 	40000
32369854 Bernardo 		pantera 		37 Desarrollo 		65000
36125965 Lucia 			Pesaro 			14 Informática 		80000
31236985 Maria 			diamante 		14 Informática 		80000
32698547 Carmen 		barbieri 		16 Comunicación 	75000
*/
INSERT INTO DEPARTAMENTOS (N_Departamento , xc_Departamento , i_Presupuesto) VALUES ( 14 , 'Informática'		,80000);
INSERT INTO DEPARTAMENTOS (N_Departamento , xc_Departamento , i_Presupuesto) VALUES ( 77 , 'Investigación' 	,40000);
INSERT INTO DEPARTAMENTOS (N_Departamento , xc_Departamento , i_Presupuesto) VALUES ( 15 , 'Gestión' 		,95000);
INSERT INTO DEPARTAMENTOS (N_Departamento , xc_Departamento , i_Presupuesto) VALUES ( 37 , 'Desarrollo' 		,65000);
INSERT INTO DEPARTAMENTOS (N_Departamento , xc_Departamento , i_Presupuesto) VALUES ( 16 , 'Comunicación' 	,75000);
--
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	31096678	 , 'Juan',	'Lopez', 	14    );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	31096675	 , 'Martin', 'Zarabia', 77    );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	34269854	 , 'Jose',	'Velez' , 	77	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	41369852	 , 'Paula',	'Madariaga',77	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	33698521	 , 'Pedro',	'Perez' , 	14	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	32698547	 , 'Mariana',	'Lopez',15	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	42369854	 , 'Abril',	'Sanchez' , 37	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	36125896	 , 'Marti',	'Julia' , 	14	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	36985471	 , 'Omar',	'Diaz' , 	15	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	32145698	 , 'Guadalupe',	'Perez',77	  );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	32369854	 , 'Bernardo',	'Pantera', 37 );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	36125965	 , 'Lucia',	'Pesaro' ,   14 );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	31236985	 , 'Maria',	'Diamante' , 14 );
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	32698547	 , 'Carmen',	'Barbieri' ,16 ); -- REPETIDO 
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento  ) VALUES (	32698547	 , 'Carmen',	'Barbieri' ,16 ); -- REPETIDO 
--
SELECT * FROM `alumnos`;
--
-- 2.1 Obtener los apellidos de los empleados : 
Select xc_Apellidos from ALUMNOS;
-- 2.2 Obtener los apellidos de los empleados sin repeticiones:
Select DISTINCT(xc_Apellidos) from ALUMNOS;
-- 2.3 Obtener los datos de los empleados que tengan el apellido Lopez:
Select * from ALUMNOS where xc_Apellidos like 'Lopez';
-- 2.4 obtener los datos de los empleados que tengan el apellido Lopez y los que tengan apellido Perez
Select * from ALUMNOS where xc_Apellidos like 'Lopez' AND xc_Apellidos like 'Perez';
-- 2.5 Obtener todos los datos de los empleados que trabajen en el departamento 14 :
Select * from ALUMNOS where  c_Departamento=14;
-- 2.6 Obtener todos los datos de los empleados que trabajen en el departamento 37 y 77 :
Select * from ALUMNOS where  c_Departamento in (37,77,);
-- 2.7 Obtener los datos de los empleados cuyo apellido comience con P : 
Select * from ALUMNOS where xc_Apellidos like 'P%';
-- 2.8 Obtener el presupuesto total de todos los departamentos :
Select SUM(i_Presupuesto) from ALUMNOS;
-- 2.9 Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento :
Select *  from ALUMNOS A , DEPARTAMENTOS D where  A.N_Departamento = D.N_Departamento;
-- 2.10 Obtener un listado completo de empleados, incluyendo el nombre y apellido del empleado junto al nombre y presupuesto de su departamento :
Select xc_Nombre , xc_Apellidos, D.c_Departamento, i_Presupuesto  from ALUMNOS A , DEPARTAMENTOS D
where  A.N_Departamento = D.N_Departamento;
-- 2.11 Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de 60000 : 
Select xc_Nombre , xc_Apellidos  from ALUMNOS A,  DEPARTAMENTOS D where  D.i_Presupuesto>60000;
-- 2.12 Añadir un nuevo departamento: Calidad con un presupuesto de 40000 y código 11, añadir un empleado vinculado al departamento 
--recién creado: Esther Vazquez, DNI 89267109 : 
INSERT INTO DEPARTAMENTOS (N_Departamento , c_Departamento , i_Presupuesto ) VALUES (	11 , 'Calidad' ,40000);
INSERT INTO ALUMNOS (n_DNI, xc_Nombre , xc_Apellidos ,  N_Departamento ) VALUES (	89267109 , 'Esther','Vazquez' ,11);
-- 2.13 Aplicar un recorte presupuestario del 10% a todos los departamentos :
UPDATE DEPARTAMENTOS
SET i_Presupuesto = i_Presupuesto - (i_Presupuesto*10/100);
--
2.14 Reasignar a los empleados del departamento de investigación (código 77) al departamento de informática (código 14) : 
UPDATE ALUMNOS
SET N_Departamento = 14
WHERE  N_Departamento = 77;
--
2.15 Despedir a los empleados del departamento de informática (código 14) : 
Delete ALUMNOS WHERE N_Departamento = 14;
-- 
2.16 Despedir a los empleados que trabajen en departamentos con un presupuesto superior a 90000 : 
Delete ALUMNOS WHERE N_Departamento in ( Select N_Departamento  from DEPARTAMENTOS
where i_Presupuesto>90000;
--
--ejemplos 
-- ALTER TABLE `alumnos` DROP `i_Presupuesto`;
-- ALTER TABLE `departamentos` ADD `i_Presupuesto` INT(22) NOT NULL ;


