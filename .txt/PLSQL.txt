USE UNIVERSIDAD;

DELIMITER //


CREATE PROCEDURE ActualizarCreditos(IN asignatura_id INT, IN nuevos_creditos INT)
BEGIN
    UPDATE ASIGNATURA
    SET creditos = nuevos_creditos
    WHERE id = asignatura_id;
END;



CREATE FUNCTION CalcularPromedioHoras() RETURNS DECIMAL DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL;
    
    SELECT AVG(horas) INTO promedio
    FROM ASIGNATURA;
    
    RETURN promedio;
END;




CREATE TRIGGER ActualizarNombreDespuesDeInsercion
BEFORE INSERT ON PERSONA
FOR EACH ROW
BEGIN
    SET NEW.nombre = CONCAT(NEW.nombre, ' [Nuevo]');
END;


//

DELIMITER ;

-- probamos el procedimiento
CALL ActualizarCreditos(2, 11);
select * from asignatura;

-- probamos la función
SELECT CalcularPromedioHoras();

-- probamos el trigger
INSERT INTO PERSONA VALUES
(6, '324553H', 'Leo', 777, 'H')
;
select * from persona;
