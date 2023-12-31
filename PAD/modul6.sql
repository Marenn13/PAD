-- Nomor 1
SELECT L.LOCATION_ID, L.STREET_ADDRESS, L.CITY, L.STATE_PROVINCE, C.COUNTRY_NAME
FROM LOCATIONS L, COUNTRIES C 
WHERE L.COUNTRY_ID = C.COUNTRY_ID ;

-- Nomor 2
SELECT E.LAST_NAME, E.JOB, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID
WHERE L.CITY = 'Toronto';

SELECT 
    EMPLOYEE_ID,
    LAST_NAME,
    DEPARTMENT_ID,
    CASE 
        WHEN DEPARTMENT_ID = 10 THEN 'Administration'
        WHEN DEPARTMENT_ID = 20 THEN 'IT'
        WHEN DEPARTMENT_ID = 110 THEN 'Sales'
        ELSE 'Selain itu'
    END AS Nama_Departemen,
    NVL(COMMISSION_PCT, 0) AS "Komisi"
FROM EMPLOYEES
WHERE DEPARTMENT_ID <> 50
AND EMPLOYEE_ID NOT BETWEEN 100 AND 180;