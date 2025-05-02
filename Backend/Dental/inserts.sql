INSERT INTO persona(pers_nombre, pers_primer_ape, pers_segundo_ape)
VALUES ('Giovanny', 'Olmos', 'Espejel');



INSERT INTO rol (rol_nombre)
VALUES ('Administrador');
INSERT INTO rol (rol_nombre)
VALUES ('Responsable');
INSERT INTO rol (rol_nombre)
VALUES ('Encargado');
INSERT INTO rol (rol_nombre)
VALUES ('Servicio Social');
INSERT INTO rol (rol_nombre)
VALUES ('Alumno');


INSERT INTO usuario (usua_id_rol, usua_id_pers, usua_id_preg, usua_nombre, usua_contra, usua_respuesta, usua_estado)
VALUES (1, 1, 1, 'Gio', 'Gio123456', 'Bruno', TRUE);






INSERT INTO material (mate_id_material, mate_descrip)
VALUES (1,'Plástico');

INSERT INTO material (mate_id_material, mate_descrip)
VALUES (2,'Metal');

INSERT INTO material (mate_id_material, mate_descrip)
VALUES (3,'Resina




INSERT INTO proveedor (prove_id_prove, prove_descrip)
VALUES (1,'Colgate');

INSERT INTO proveedor (prove_id_prove, prove_descrip)
VALUES (2,'Crest');

INSERT INTO proveedor (prove_id_prove, prove_descrip)
VALUES (3,'Otro');



INSERT INTO articulos (arti_id_articulo, arti_nombre,arti_descrip,arti_id_material,arti_id_prove,arti_fecha,arti_nacionalidad)
VALUES (1,'Pasta Dental Colgate','Pasta Dental sabor a fresa',1,1,'03/05/2023','ext');

