CREATE OR REPLACE PROCEDURE EJ3(
FRASE IN VARCHAR2)IS
LARGO NUMBER;
VLARGO NUMBER;
INVERTIDO VARCHAR2(999);
    BEGIN
        SELECT LENGTH(FRASE) INTO LARGO FROM DUAL;
        VLARGO:=LARGO;
        FOR VLARGO IN REVERSE 1..LARGO LOOP
        INVERTIDO:= CONCAT(INVERTIDO, SUBSTR(FRASE, VLARGO, 1));
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(INVERTIDO);
    END;
