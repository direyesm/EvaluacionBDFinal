---INSERTAR DATO CURSO---
INSERT INTO Curso VALUES (026,'Programación FullStack Java Trainnie');
INSERT INTO Curso VALUES (039,'Programación Android');
INSERT INTO Curso VALUES (057,'Diseñador UX/UI');
INSERT INTO Curso VALUES (036,'Arquitecto Cloud');

---INSERTAR DATO ALUMNO---
----Curso 1--
INSERT INTO alumno VALUES (1,'Diego','Reyes',026);
INSERT INTO alumno VALUES (2,'Agustin','Reys',026);
INSERT INTO alumno VALUES (3,'Marcelo','Molina',026);
INSERT INTO alumno VALUES (4,'Maximiliano','Molina',026);
INSERT INTO alumno VALUES (5,'Andres','Reyes',026);
INSERT INTO alumno VALUES (6,'Matias','Reys',026);
INSERT INTO alumno VALUES (7,'Lorenzo','Molina',026);
INSERT INTO alumno VALUES (8,'javiera','Molina',026);
INSERT INTO alumno VALUES (9,'Claudia','Molina',026);
INSERT INTO alumno VALUES (10,'Constanza','Molina',026);
--Curso 2--
INSERT INTO alumno VALUES (11,'Javier','Reyes',039);
INSERT INTO alumno VALUES (12,'Diana','Reys',039);
INSERT INTO alumno VALUES (13,'Isidora','Molina',039);
INSERT INTO alumno VALUES (14,'Ignacia','Molina',039);
INSERT INTO alumno VALUES (15,'Andrea','Reyes',039);
INSERT INTO alumno VALUES (16,'Nicolas','Reys',039);
INSERT INTO alumno VALUES (17,'Edson','Molina',039);
INSERT INTO alumno VALUES (18,'Patricio','Molina',039);
INSERT INTO alumno VALUES (19,'Alejandra','Molina',039);
INSERT INTO alumno VALUES (20,'Francisco','Molina',039);

---INSERTAR DATO TEST---
INSERT INTO TEST VALUES ('M1','Evaluacion I','Descripcion 1','P01','Autor 1',TO_DATE('17/07/2020', 'DD/MM/YYYY'));
INSERT INTO TEST VALUES ('M2','Evaluacion II','Descripcion 2','P02','Autor 2',TO_DATE('17/07/2020', 'DD/MM/YYYY'));
INSERT INTO TEST VALUES ('M3','Evaluacion III','Descripcion 3','P03','Autor 3',TO_DATE('17/07/2020', 'DD/MM/YYYY'));
INSERT INTO TEST VALUES ('M4','Evaluacion VI','Descripcion 4','P04','Autor 4',TO_DATE('17/07/2020', 'DD/MM/YYYY'));

---INSERTAR DATO PREGUNTA---
--Pregunta 1 test 1--
INSERT INTO pregunta VALUES ('P1','Enunciado 1-1',10,'M1');
INSERT INTO pregunta VALUES ('P2','Enunciado 1-2',10,'M1');
INSERT INTO pregunta VALUES ('P3','Enunciado 1-3',10,'M1');
INSERT INTO pregunta VALUES ('P4','Enunciado 1-4',10,'M1');
INSERT INTO pregunta VALUES ('P5','Enunciado 1-5',10,'M1');
INSERT INTO pregunta VALUES ('P6','Enunciado 1-6',10,'M1');
INSERT INTO pregunta VALUES ('P7','Enunciado 1-7',10,'M1');
INSERT INTO pregunta VALUES ('P8','Enunciado 1-8',10,'M1');
INSERT INTO pregunta VALUES ('P9','Enunciado 1-9',10,'M1');
INSERT INTO pregunta VALUES ('P10','Enunciado 1-10',10,'M1');

--Pregunta 2 test 2--
INSERT INTO pregunta VALUES ('P11','Enunciado 2-1',10,'M2');
INSERT INTO pregunta VALUES ('P12','Enunciado 2-2',10,'M2');
INSERT INTO pregunta VALUES ('P13','Enunciado 2-3',10,'M2');
INSERT INTO pregunta VALUES ('P14','Enunciado 2-4',10,'M2');
INSERT INTO pregunta VALUES ('P15','Enunciado 2-5',10,'M2');
INSERT INTO pregunta VALUES ('P16','Enunciado 2-6',10,'M2');
INSERT INTO pregunta VALUES ('P17','Enunciado 2-7',10,'M2');
INSERT INTO pregunta VALUES ('P18','Enunciado 2-8',10,'M2');
INSERT INTO pregunta VALUES ('P19','Enunciado 2-9',10,'M2');
INSERT INTO pregunta VALUES ('P20','Enunciado 2-10',10,'M2');

--Pregunta 3 test 3--
INSERT INTO pregunta VALUES ('P21','Enunciado 3-1',10,'M3');
INSERT INTO pregunta VALUES ('P22','Enunciado 3-2',10,'M3');
INSERT INTO pregunta VALUES ('P23','Enunciado 3-3',10,'M3');
INSERT INTO pregunta VALUES ('P24','Enunciado 3-4',10,'M3');
INSERT INTO pregunta VALUES ('P25','Enunciado 3-5',10,'M3');
INSERT INTO pregunta VALUES ('P26','Enunciado 3-6',10,'M3');
INSERT INTO pregunta VALUES ('P27','Enunciado 3-7',10,'M3');
INSERT INTO pregunta VALUES ('P28','Enunciado 3-8',10,'M3');
INSERT INTO pregunta VALUES ('P29','Enunciado 3-9',10,'M3');
INSERT INTO pregunta VALUES ('P30','Enunciado 3-10',10,'M3');

--Pregunta 4 test 4--
INSERT INTO pregunta VALUES ('P31','Enunciado 4-1',10,'M4');
INSERT INTO pregunta VALUES ('P32','Enunciado 4-2',10,'M4');
INSERT INTO pregunta VALUES ('P33','Enunciado 4-3',10,'M4');
INSERT INTO pregunta VALUES ('P34','Enunciado 4-4',10,'M4');
INSERT INTO pregunta VALUES ('P35','Enunciado 4-5',10,'M4');
INSERT INTO pregunta VALUES ('P36','Enunciado 4-6',10,'M4');
INSERT INTO pregunta VALUES ('P37','Enunciado 4-7',10,'M4');
INSERT INTO pregunta VALUES ('P38','Enunciado 4-8',10,'M4');
INSERT INTO pregunta VALUES ('P39','Enunciado 4-9',10,'M4');
INSERT INTO pregunta VALUES ('P40','Enunciado 4-10',10,'M4');

---INSERTAR DATO CURSO_TEST---
INSERT INTO curso_test VALUES (026, 'M1');
INSERT INTO curso_test VALUES (039, 'M2');
INSERT INTO curso_test VALUES (057, 'M3');
INSERT INTO curso_test VALUES (036, 'M4');

---INSERTAR DATO ALTERNATIVAS---
INSERT INTO alternativas VALUES ('A1', 'Descripcion 1-1', '1', 100, 'P1');
INSERT INTO alternativas VALUES ('A2', 'Descripcion 1-2', '0', 0, 'P1');
INSERT INTO alternativas VALUES ('A3', 'Descripcion 1-3', '0', 0, 'P1');
INSERT INTO alternativas VALUES ('A4', 'Descripcion 1-4', '0', 0, 'P1');

INSERT INTO alternativas VALUES ('A5', 'Descripcion 2-1', '0', 0, 'P2');
INSERT INTO alternativas VALUES ('A6', 'Descripcion 2-2', '1', 50, 'P2');
INSERT INTO alternativas VALUES ('A7', 'Descripcion 2-3', '1', 50, 'P2');
INSERT INTO alternativas VALUES ('A8', 'Descripcion 2-4', '0', 0, 'P2');

INSERT INTO alternativas VALUES ('A9', 'Descripcion 3-1', '0', 0, 'P3');
INSERT INTO alternativas VALUES ('A10', 'Descripcion 3-2', '0', 0, 'P3');
INSERT INTO alternativas VALUES ('A11', 'Descripcion 3-3', '1', 100, 'P3');
INSERT INTO alternativas VALUES ('A12', 'Descripcion 3-4', '0', 0, 'P3');

INSERT INTO alternativas VALUES ('A13', 'Descripcion 4-1', '0', 0, 'P4');
INSERT INTO alternativas VALUES ('A14', 'Descripcion 4-2', '0', 0, 'P4');
INSERT INTO alternativas VALUES ('A15', 'Descripcion 4-3', '0', 0, 'P4');
INSERT INTO alternativas VALUES ('A16', 'Descripcion 4-4', '1', 100, 'P4');

INSERT INTO alternativas VALUES ('A17', 'Descripcion 5-1', '0', 0, 'P5');
INSERT INTO alternativas VALUES ('A18', 'Descripcion 5-2', '1', 100, 'P5');
INSERT INTO alternativas VALUES ('A19', 'Descripcion 5-3', '1', 100, 'P5');
INSERT INTO alternativas VALUES ('A20', 'Descripcion 5-4', '0', 0, 'P5');

-- Caso de estudio donde todas las alternativas son correctas
INSERT INTO alternativas VALUES ('A21', 'Descripcion 6-1', '1', 25, 'P6');
INSERT INTO alternativas VALUES ('A22', 'Descripcion 6-2', '1', 25, 'P6');
INSERT INTO alternativas VALUES ('A23', 'Descripcion 6-3', '1', 25, 'P6');
INSERT INTO alternativas VALUES ('A24', 'Descripcion 6-4', '1', 25, 'P6');

-- Caso de estudio donde todas las alternativas son incorrectas
INSERT INTO alternativas VALUES ('A25', 'Descripcion 7-1', '0', 0, 'P7');
INSERT INTO alternativas VALUES ('A26', 'Descripcion 7-2', '0', 0, 'P7');
INSERT INTO alternativas VALUES ('A27', 'Descripcion 7-3', '0', 0, 'P7');
INSERT INTO alternativas VALUES ('A28', 'Descripcion 7-4', '0', 0, 'P7');

INSERT INTO alternativas VALUES ('A29', 'Descripcion 8-1', '1', 100, 'P8');
INSERT INTO alternativas VALUES ('A30', 'Descripcion 8-2', '0', 0, 'P8');
INSERT INTO alternativas VALUES ('A31', 'Descripcion 8-3', '0', 0, 'P8');
INSERT INTO alternativas VALUES ('A32', 'Descripcion 8-4', '0', 0, 'P8');

INSERT INTO alternativas VALUES ('A33', 'Descripcion 9-1', '0', 0, 'P9');
INSERT INTO alternativas VALUES ('A34', 'Descripcion 9-2', '0', 0, 'P9');
INSERT INTO alternativas VALUES ('A35', 'Descripcion 9-3', '1', 100, 'P9');
INSERT INTO alternativas VALUES ('A36', 'Descripcion 9-4', '0', 0, 'P9');

INSERT INTO alternativas VALUES ('A37', 'Descripcion 10-1', '0', 0, 'P10');
INSERT INTO alternativas VALUES ('A38', 'Descripcion 10-2', '1', 100, 'P10');
INSERT INTO alternativas VALUES ('A39', 'Descripcion 10-3', '0', 0, 'P10');
INSERT INTO alternativas VALUES ('A40', 'Descripcion 10-4', '0', 0, 'P10');

INSERT INTO alternativas VALUES ('A41', 'Descripcion 11-1', '0', 0, 'P11');
INSERT INTO alternativas VALUES ('A42', 'Descripcion 11-2', '0', 0, 'P11');
INSERT INTO alternativas VALUES ('A43', 'Descripcion 11-3', '0', 0, 'P11');
INSERT INTO alternativas VALUES ('A44', 'Descripcion 11-4', '1', 100, 'P11');

-- Omitir pregunta con ID_PREG = P12 para caso de estudio

INSERT INTO alternativas VALUES ('A45', 'Descripcion 13-1', '1', 100, 'P13');
INSERT INTO alternativas VALUES ('A46', 'Descripcion 13-2', '0', 0, 'P13');
INSERT INTO alternativas VALUES ('A47', 'Descripcion 13-3', '0', 0, 'P13');
INSERT INTO alternativas VALUES ('A48', 'Descripcion 13-4', '0', 0, 'P13');

-- Solo 2 alternativas para pregunta con ID_PREG = P14 para caso de estudio
INSERT INTO alternativas VALUES ('A49', 'Descripcion 14-1', '0', 0, 'P14');
INSERT INTO alternativas VALUES ('A50', 'Descripcion 14-2', '1', 100, 'P14');

INSERT INTO alternativas VALUES ('A51', 'Descripcion 15-1', '1', 100, 'P15');
INSERT INTO alternativas VALUES ('A52', 'Descripcion 15-2', '0', 0, 'P15');
INSERT INTO alternativas VALUES ('A53', 'Descripcion 15-3', '0', 0, 'P15');
INSERT INTO alternativas VALUES ('A54', 'Descripcion 15-4', '0', 0, 'P15');

INSERT INTO alternativas VALUES ('A55', 'Descripcion 16-1', '0', 0, 'P16');
INSERT INTO alternativas VALUES ('A56', 'Descripcion 16-2', '0', 0, 'P16');
INSERT INTO alternativas VALUES ('A57', 'Descripcion 16-3', '0', 0, 'P16');
INSERT INTO alternativas VALUES ('A58', 'Descripcion 16-4', '1', 100, 'P16');

INSERT INTO alternativas VALUES ('A59', 'Descripcion 17-1', '0', 0, 'P17');
INSERT INTO alternativas VALUES ('A60', 'Descripcion 17-2', '1', 100, 'P17');
INSERT INTO alternativas VALUES ('A61', 'Descripcion 17-3', '0', 0, 'P17');
INSERT INTO alternativas VALUES ('A62', 'Descripcion 17-4', '0', 0, 'P17');

INSERT INTO alternativas VALUES ('A63', 'Descripcion 18-1', '1', 100, 'P18');
INSERT INTO alternativas VALUES ('A64', 'Descripcion 18-2', '0', 0, 'P18');
INSERT INTO alternativas VALUES ('A65', 'Descripcion 18-3', '0', 0, 'P18');
INSERT INTO alternativas VALUES ('A66', 'Descripcion 18-4', '0', 0, 'P18');

INSERT INTO alternativas VALUES ('A67', 'Descripcion 19-1', '0', 0, 'P19');
INSERT INTO alternativas VALUES ('A68', 'Descripcion 19-2', '0', 0, 'P19');
INSERT INTO alternativas VALUES ('A69', 'Descripcion 19-3', '0', 0, 'P19');
INSERT INTO alternativas VALUES ('A70', 'Descripcion 19-4', '1', 100, 'P19');

INSERT INTO alternativas VALUES ('A71', 'Descripcion 20-1', '0', 0, 'P20');
INSERT INTO alternativas VALUES ('A72', 'Descripcion 20-2', '1', 50, 'P20');
INSERT INTO alternativas VALUES ('A73', 'Descripcion 20-3', '0', 0, 'P20');
INSERT INTO alternativas VALUES ('A74', 'Descripcion 20-4', '0', 0, 'P20');
INSERT INTO alternativas VALUES ('A75', 'Descripcion 20-5', '1', 50, 'P20');
INSERT INTO alternativas VALUES ('A76', 'Descripcion 20-6', '0', 0, 'P20');

INSERT INTO alternativas VALUES ('A77', 'Descripcion 21-1', '0', 0, 'P21');
INSERT INTO alternativas VALUES ('A78', 'Descripcion 21-2', '0', 0, 'P21');
INSERT INTO alternativas VALUES ('A79', 'Descripcion 21-3', '1', 100, 'P21');

INSERT INTO alternativas VALUES ('A80', 'Descripcion 22-1', '0', 0, 'P22');
INSERT INTO alternativas VALUES ('A81', 'Descripcion 22-2', '1', 100, 'P22');
INSERT INTO alternativas VALUES ('A82', 'Descripcion 22-3', '0', 0, 'P22');

INSERT INTO alternativas VALUES ('A83', 'Descripcion 23-1', '1', 100, 'P23');
INSERT INTO alternativas VALUES ('A84', 'Descripcion 23-2', '0', 0, 'P23');
INSERT INTO alternativas VALUES ('A85', 'Descripcion 23-3', '0', 0, 'P23');

INSERT INTO alternativas VALUES ('A86', 'Descripcion 24-1', '1', 100, 'P24');
INSERT INTO alternativas VALUES ('A87', 'Descripcion 24-2', '0', 0, 'P24');
INSERT INTO alternativas VALUES ('A88', 'Descripcion 24-3', '0', 0, 'P24');

INSERT INTO alternativas VALUES ('A89', 'Descripcion 25-1', '0', 0, 'P25');
INSERT INTO alternativas VALUES ('A90', 'Descripcion 25-2', '0', 0, 'P25');
INSERT INTO alternativas VALUES ('A91', 'Descripcion 25-3', '1', 100, 'P25');

INSERT INTO alternativas VALUES ('A92', 'Descripcion 26-1', '0', 0, 'P26');
INSERT INTO alternativas VALUES ('A93', 'Descripcion 26-2', '0', 0, 'P26');
INSERT INTO alternativas VALUES ('A94', 'Descripcion 26-3', '1', 100, 'P26');

INSERT INTO alternativas VALUES ('A95', 'Descripcion 27-1', '1', 50, 'P27');
INSERT INTO alternativas VALUES ('A96', 'Descripcion 27-2', '0', 0, 'P27');
INSERT INTO alternativas VALUES ('A97', 'Descripcion 27-3', '1', 50, 'P27');
INSERT INTO alternativas VALUES ('A98', 'Descripcion 27-3', '0', 0, 'P27');

INSERT INTO alternativas VALUES ('A99', 'Descripcion 28-1', '1', 50, 'P28');
INSERT INTO alternativas VALUES ('A100', 'Descripcion 28-2', '0', 0, 'P28');
INSERT INTO alternativas VALUES ('A101', 'Descripcion 28-3', '1', 50, 'P28');
INSERT INTO alternativas VALUES ('A102', 'Descripcion 28-3', '0', 0, 'P28');

---INSERTAR DATO CURSO_TEST---
INSERT INTO curso_test VALUES (026, 'M1');
INSERT INTO curso_test VALUES (039, 'M2');
INSERT INTO curso_test VALUES (057, 'M3');
INSERT INTO curso_test VALUES (036, 'M4');


---INSERTAR DATOS RESPUESTA---
INSERT INTO respuesta VALUES ('R1', 1, 'P1', 'A1');
INSERT INTO respuesta VALUES ('R2', 1, 'P2', 'A6');
INSERT INTO respuesta VALUES ('R3', 1, 'P3', 'A11');
INSERT INTO respuesta VALUES ('R4', 1, 'P4', 'A13');
INSERT INTO respuesta VALUES ('R5', 1, 'P5', 'A18');
INSERT INTO respuesta VALUES ('R6', 1, 'P6', 'A23');
INSERT INTO respuesta VALUES ('R7', 1, 'P7', 'A27');
INSERT INTO respuesta VALUES ('R8', 1, 'P8', 'A30');
INSERT INTO respuesta VALUES ('R9', 1, 'P9', 'A36');
INSERT INTO respuesta VALUES ('R10', 1, 'P10','A37');

INSERT INTO respuesta VALUES ('R11', 2,'P1', 'A2');
INSERT INTO respuesta VALUES ('R12', 2, 'P2', 'A5');
INSERT INTO respuesta VALUES ('R13', 2, 'P3', 'A10');
INSERT INTO respuesta VALUES ('R14', 2, 'P4', 'A15');
INSERT INTO respuesta VALUES ('R15', 2, 'P5', 'A19');
INSERT INTO respuesta VALUES ('R16', 2, 'P6', 'A22');
INSERT INTO respuesta VALUES ('R17', 2, 'P7', 'A25');
INSERT INTO respuesta VALUES ('R18', 2, 'P8', 'A31');
INSERT INTO respuesta VALUES ('R19', 2, 'P9', 'A36');
INSERT INTO respuesta VALUES ('R20', 2, 'P10', 'A38');

INSERT INTO respuesta VALUES ('R21', 3, 'P10', 'A1');
INSERT INTO respuesta VALUES ('R22', 3, 'P2', 'A5');
INSERT INTO respuesta VALUES ('R23', 3, 'P3', 'A9');
INSERT INTO respuesta VALUES ('R24', 3, 'P4', 'A13');
INSERT INTO respuesta VALUES ('R25', 3, 'P5', 'A17');
INSERT INTO respuesta VALUES ('R26', 3, 'P6', 'A21');
INSERT INTO respuesta VALUES ('R27', 3, 'P7', 'A25');
INSERT INTO respuesta VALUES ('R28', 3, 'P8', 'A29');
INSERT INTO respuesta VALUES ('R29', 3, 'P9', 'A33');
INSERT INTO respuesta VALUES ('R30', 3, 'P10', 'A36');

INSERT INTO respuesta VALUES ('R31', 4, 'P1', 'A4');
INSERT INTO respuesta VALUES ('R32', 4, 'P2', 'A8');
INSERT INTO respuesta VALUES ('R33', 4, 'P3', 'A12');
INSERT INTO respuesta VALUES ('R34', 4, 'P4', 'A16');
INSERT INTO respuesta VALUES ('R35', 4, 'P5', 'A20');
INSERT INTO respuesta VALUES ('R36', 4, 'P6', 'A24');
INSERT INTO respuesta VALUES ('R37', 4, 'P7', 'A28');
INSERT INTO respuesta VALUES ('R38', 4, 'P8', 'A32');
INSERT INTO respuesta VALUES ('R39', 4, 'P9', 'A36');
INSERT INTO respuesta VALUES ('R40', 4, 'P10', 'A40');

INSERT INTO respuesta VALUES ('R41', 5, 'P1', 'A2');
INSERT INTO respuesta VALUES ('R42', 5, 'P2', 'A6');
INSERT INTO respuesta VALUES ('R43', 5, 'P3', 'A10');
INSERT INTO respuesta VALUES ('R44', 5, 'P4', 'A14');
INSERT INTO respuesta VALUES ('R45', 5, 'P5', 'A18');
INSERT INTO respuesta VALUES ('R46', 5, 'P6', 'A22');
INSERT INTO respuesta VALUES ('R47', 5, 'P7', 'A26');
INSERT INTO respuesta VALUES ('R48', 5, 'P8', 'A30');
INSERT INTO respuesta VALUES ('R49', 5, 'P9', 'A34');
INSERT INTO respuesta VALUES ('R50', 5, 'P10', 'A38');

INSERT INTO respuesta VALUES ('R51', 6, 'P30', 'A102');
INSERT INTO respuesta VALUES ('RA52', 6, 'P31', 'A100');
INSERT INTO respuesta VALUES ('R53', 6, 'P32', 'A99');
INSERT INTO respuesta VALUES ('R54', 6, 'P33', 'A98');
INSERT INTO respuesta VALUES ('R55', 6, 'P34', 'A96');
INSERT INTO respuesta VALUES ('R56', 6, 'P35', 'A90');
INSERT INTO respuesta VALUES ('R57', 6, 'P36', 'A89');
INSERT INTO respuesta VALUES ('R58', 6, 'P37', 'A86');
INSERT INTO respuesta VALUES ('R59', 6, 'P38', 'A70');
INSERT INTO respuesta VALUES ('R60', 6, 'P39', 'A10');

INSERT INTO respuesta VALUES ('R61', 7, 'P10', 'A1');
INSERT INTO respuesta VALUES ('R62', 7, 'P22', 'A6');
INSERT INTO respuesta VALUES ('R63', 7, 'P30', 'A11');
INSERT INTO respuesta VALUES ('R64', 7, 'P40', 'A16');
INSERT INTO respuesta VALUES ('R65', 7, 'P39', 'A19');
INSERT INTO respuesta VALUES ('R66', 7, 'P5', 'A22');
INSERT INTO respuesta VALUES ('R67', 7, 'P7', 'A26');
INSERT INTO respuesta VALUES ('R68', 7, 'P38', 'A29');
INSERT INTO respuesta VALUES ('R69', 7, 'P29', 'A34');
INSERT INTO respuesta VALUES ('R70', 7, 'P10', 'A39');

INSERT INTO respuesta VALUES ('R71', 8, 'P1', 'A4');
INSERT INTO respuesta VALUES ('R72', 8, 'P2', 'A7');
INSERT INTO respuesta VALUES ('R73', 8, 'P3', 'A10');
INSERT INTO respuesta VALUES ('R74', 8, 'P4', 'A13');
INSERT INTO respuesta VALUES ('R75', 8, 'P5', 'A18');
INSERT INTO respuesta VALUES ('R76', 8, 'P6', 'A23');
INSERT INTO respuesta VALUES ('R77', 8, 'P7', 'A28');
INSERT INTO respuesta VALUES ('R78', 8, 'P8', 'A31');
INSERT INTO respuesta VALUES ('R79', 8, 'P9', 'A34');
INSERT INTO respuesta VALUES ('R80', 8, 'P10', 'A37');

INSERT INTO respuesta VALUES ('R81', 9, 'P1', 'A3');
INSERT INTO respuesta VALUES ('R82', 9, 'P2', 'A6');
INSERT INTO respuesta VALUES ('R83', 9, 'P3', 'A11');
INSERT INTO respuesta VALUES ('R84', 9, 'P4', 'A14');
INSERT INTO respuesta VALUES ('R85', 9, 'P5', 'A19');
INSERT INTO respuesta VALUES ('R86', 9, 'P6', 'A22');
INSERT INTO respuesta VALUES ('R87', 9, 'P7', 'A27');
INSERT INTO respuesta VALUES ('R88', 9, 'P8', 'A30');
INSERT INTO respuesta VALUES ('R89', 9, 'P9', 'A35');
INSERT INTO respuesta VALUES ('R90', 9, 'P10', 'A38');

INSERT INTO respuesta VALUES ('R91', 10, 'P1', 'A2');
INSERT INTO respuesta VALUES ('R92', 10, 'P2', 'A7');
INSERT INTO respuesta VALUES ('R93', 10, 'P3', 'A10');
INSERT INTO respuesta VALUES ('R94', 10, 'P4', 'A15');
INSERT INTO respuesta VALUES ('R95', 10, 'P5', 'A18');
INSERT INTO respuesta VALUES ('R96', 10, 'P6', 'A23');
INSERT INTO respuesta VALUES ('R97', 10, 'P7', 'A26');
INSERT INTO respuesta VALUES ('R98', 10, 'P8', 'A31');
INSERT INTO respuesta VALUES ('R99', 10, 'P9', 'A34');
INSERT INTO respuesta VALUES ('R100', 10, 'P10', 'A39');

-- Respuestas Curso 2
INSERT INTO respuesta VALUES ('R101', 11, 'P11', 'A41');
INSERT INTO respuesta VALUES ('R102', 11, 'P13', 'A45');
INSERT INTO respuesta VALUES ('R103', 11, 'P14', 'A49');
INSERT INTO respuesta VALUES ('R104', 11, 'P15', 'A51');
INSERT INTO respuesta VALUES ('R105', 11, 'P16', 'A55');
INSERT INTO respuesta VALUES ('R106', 11, 'P17', 'A59');
INSERT INTO respuesta VALUES ('R107', 11, 'P18', 'A63');
INSERT INTO respuesta VALUES ('R108', 11, 'P19', 'A67');
INSERT INTO respuesta VALUES ('R109', 11, 'P20', 'A71');

INSERT INTO respuesta VALUES ('R110', 12, 'P11', 'A42');
INSERT INTO respuesta VALUES ('R111', 12, 'P13', 'A46');
INSERT INTO respuesta VALUES ('R112', 12, 'P14', 'A50');
INSERT INTO respuesta VALUES ('R113', 12, 'P15', 'A52');
INSERT INTO respuesta VALUES ('R114', 12, 'P16', 'A56');
INSERT INTO respuesta VALUES ('R115', 12, 'P17', 'A60');
INSERT INTO respuesta VALUES ('R116', 12, 'P18', 'A64');
INSERT INTO respuesta VALUES ('R117', 12, 'P19', 'A68');
INSERT INTO respuesta VALUES ('R118', 12, 'P20', 'A72');

INSERT INTO respuesta VALUES ('R119', 13, 'P11', 'A43');
INSERT INTO respuesta VALUES ('R120', 13, 'P13', 'A47');
INSERT INTO respuesta VALUES ('R121', 13, 'P14', 'A49');
INSERT INTO respuesta VALUES ('R122', 13, 'P15', 'A53');
INSERT INTO respuesta VALUES ('R123', 13, 'P16', 'A57');
INSERT INTO respuesta VALUES ('R124', 13, 'P17', 'A61');
INSERT INTO respuesta VALUES ('R125', 13, 'P18', 'A65');
INSERT INTO respuesta VALUES ('R126', 13, 'P19', 'A69');
INSERT INTO respuesta VALUES ('R127', 13,'P20', 'A73');

INSERT INTO respuesta VALUES ('R128', 14, 'P11', 'A44');
INSERT INTO respuesta VALUES ('R129', 14, 'P13', 'A48');
INSERT INTO respuesta VALUES ('R130', 14, 'P14', 'A50');
INSERT INTO respuesta VALUES ('R131', 14, 'P15', 'A54');
INSERT INTO respuesta VALUES ('R132', 14, 'P16', 'A58');
INSERT INTO respuesta VALUES ('R133', 14, 'P17', 'A62');
INSERT INTO respuesta VALUES ('R134', 14, 'P18', 'A66');
INSERT INTO respuesta VALUES ('R135', 14, 'P19', 'A70');
INSERT INTO respuesta VALUES ('R136', 14, 'P20', 'A74');

INSERT INTO respuesta VALUES ('R137', 15, 'P11', 'A41');
INSERT INTO respuesta VALUES ('R138', 15, 'P13', 'A46');
INSERT INTO respuesta VALUES ('R139', 15, 'P14', 'A49');
INSERT INTO respuesta VALUES ('R140', 15, 'P15', 'A54');
INSERT INTO respuesta VALUES ('R141', 15, 'P16', 'A57');
INSERT INTO respuesta VALUES ('R142', 15, 'P17', 'A60');
INSERT INTO respuesta VALUES ('R143', 15, 'P18', 'A63');
INSERT INTO respuesta VALUES ('R144', 15, 'P19', 'A68');
INSERT INTO respuesta VALUES ('R145', 15, 'P20', 'A73');

INSERT INTO respuesta VALUES ('R146', 16, 'P11', 'A44');
INSERT INTO respuesta VALUES ('R147', 16, 'P13', 'A47');
INSERT INTO respuesta VALUES ('R148', 16, 'P14', 'A50');
INSERT INTO respuesta VALUES ('R149', 16, 'P15', 'A51');
INSERT INTO respuesta VALUES ('R150', 16, 'P16', 'A56');
INSERT INTO respuesta VALUES ('R151', 16, 'P17', 'A61');
INSERT INTO respuesta VALUES ('R152', 16, 'P18', 'A66');
INSERT INTO respuesta VALUES ('R153', 16, 'P19', 'A69');
INSERT INTO respuesta VALUES ('R154', 16, 'P20', 'A72');

INSERT INTO respuesta VALUES ('R155', 17, 'P11', 'A42');
INSERT INTO respuesta VALUES ('R156', 17, 'P13', 'A46');
INSERT INTO respuesta VALUES ('R157', 17, 'P14', 'A49');
INSERT INTO respuesta VALUES ('R158', 17, 'P15', 'A53');
INSERT INTO respuesta VALUES ('R159', 17, 'P16', 'A56');
INSERT INTO respuesta VALUES ('R160', 17, 'P17', 'A61');
INSERT INTO respuesta VALUES ('R161', 17, 'P18', 'A64');
INSERT INTO respuesta VALUES ('R162', 17, 'P19', 'A68');
INSERT INTO respuesta VALUES ('R163', 17, 'P20', 'A75');

INSERT INTO respuesta VALUES ('R164', 18, 'P11', 'A44');
INSERT INTO respuesta VALUES ('R165', 18, 'P13', 'A45');
INSERT INTO respuesta VALUES ('R166', 18, 'P14', 'A50');
INSERT INTO respuesta VALUES ('R167', 18, 'P15', 'A51');
INSERT INTO respuesta VALUES ('R168', 18, 'P16', 'A56');
INSERT INTO respuesta VALUES ('R169', 18, 'P17', 'A59');
INSERT INTO respuesta VALUES ('R170', 18, 'P18', 'A63');
INSERT INTO respuesta VALUES ('R171', 18, 'P19', 'A70');
INSERT INTO respuesta VALUES ('R172', 18, 'P20', 'A76');

INSERT INTO respuesta VALUES ('R173', 19, 'P11', 'A43');
INSERT INTO respuesta VALUES ('R174', 19, 'P13', 'A46');
INSERT INTO respuesta VALUES ('R175', 19, 'P14', 'A49');
INSERT INTO respuesta VALUES ('R176', 19, 'P15', 'A52');
INSERT INTO respuesta VALUES ('R177', 19, 'P16', 'A57');
INSERT INTO respuesta VALUES ('R178', 19, 'P17', 'A60');
INSERT INTO respuesta VALUES ('R179', 19, 'P18', 'A65');
INSERT INTO respuesta VALUES ('R180', 19, 'P19', 'A68');
INSERT INTO respuesta VALUES ('R181', 19, 'P20', 'A73');

INSERT INTO respuesta VALUES ('R182', 20, 'P11', 'A42');
INSERT INTO respuesta VALUES ('R183', 20, 'P13', 'A47');
INSERT INTO respuesta VALUES ('R184', 20, 'P14', 'A50');
INSERT INTO respuesta VALUES ('R185', 20, 'P15', 'A53');
INSERT INTO respuesta VALUES ('R186', 20, 'P16', 'A56');
INSERT INTO respuesta VALUES ('R187', 20, 'P17', 'A61');
INSERT INTO respuesta VALUES ('R188', 20, 'P18', 'A64');
INSERT INTO respuesta VALUES ('R189', 20, 'P19', 'A69');
INSERT INTO respuesta VALUES ('R190', 20, 'P20', 'A76');
