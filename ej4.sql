CREATE OR REPLACE PROCEDURE P_PERSONAL(
ALGO VARCHAR2)IS
CURSOR BUSQUEDA IS
    SELECT EMPLEADOS.NOMBRE, DATOSPERSONALES.FECHA_ALTA FROM EMPLEADOS, DATOSPERSONALES
    WHERE ID_EMPLEADO = CLAVE_EMPLEADO;
BEGIN
OPEN BUSQUEDA;
    WHILE BUSQUEDA%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('HOLA');
    END LOOP;
CLOSE BUSQUEDA;
END;