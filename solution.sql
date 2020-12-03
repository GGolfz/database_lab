-- 1)
-- Show the number of crimes for each police station in the city of Bangkok. 
-- Show results in the order of district name.
SELECT DISTRICT,COUNT(*)
FROM POLICE
    JOIN CRIME ON empno = responsiblePoliceNo
GROUP BY city,district
HAVING city = 'Bangkok'
ORDER BY DISTRICT;

-- 2)
-- Show the number of crimes for each police station in the city of Bangkok. Show only the station that have at least 2 policewomen.
-- Show results in the order of district name.
SELECT DISTRICT,COUNT(*)
FROM POLICE
    JOIN CRIME
        ON EMPNO = RESPONSIBLEPOLICENO
WHERE DISTRICT IN (
    SELECT DISTRICT
    FROM POLICE
    WHERE GENDER = 'F'
    GROUP BY DISTRICT
    HAVING count(*) >= 2
    )
GROUP BY CITY,DISTRICT;

-- 3)
-- List name of polices who have never been responsible to any crime.
SELECT NAME FROM POLICE WHERE EMPNO NOT IN (SELECT RESPONSIBLEPOLICENO FROM CRIME);

SELECT NAME FROM POLICE LEFT OUTER JOIN CRIME ON EMPNO = RESPONSIBLEPOLICENO WHERE CRIMENO is null;

-- 4)
-- List name of polices who have not been responsible any crime since 2013.
SELECT EMPNO, NAME FROM POLICE WHERE EMPNO NOT IN (SELECT RESPONSIBLEPOLICENO FROM CRIME WHERE DATE >= '2013-01-01');

-- 5)
-- List the station that has only polices but no staff.
SELECT CITY, DISTRICT
FROM STATION
WHERE (CITY,DISTRICT) IN (SELECT DISTINCT CITY,DISTRICT FROM POLICE)
  AND (CITY,DISTRICT) NOT IN (SELECT DISTINCT CITY,DISTRICT FROM STAFF);

-- 6)
-- Find the total pay of each police station.
-- Show the city and district of the police station, total pay and name of policemen.
-- Name of policemen for each station may be listed in many records.
SELECT p.CITY, p.DISTRICT, total_pay, NAME
FROM POLICE p ,(SELECT SUM(SALARY)+SUM(BONUS) AS total_pay,CITY,DISTRICT FROM POLICE GROUP BY CITY, DISTRICT) t
WHERE p.CITY = t.CITY AND p.DISTRICT = t.DISTRICT ORDER BY p.CITY,p.DISTRICT,NAME;

-- 7)
-- Find name and bonus of polices who hold the number of responsible crimes
-- more than every police at Phayathai district of Bangkok city.
SELECT NAME,BONUS FROM POLICE p
WHERE
      (SELECT count(*) FROM CRIME WHERE RESPONSIBLEPOLICENO = p.EMPNO) >
      (SELECT MAX(crime_count)
      FROM
           (
               SELECT count(*) AS crime_count
               FROM POLICE
                   JOIN CRIME ON EMPNO = RESPONSIBLEPOLICENO
               WHERE CITY='Bangkok' AND DISTRICT='Phayathai'
               GROUP BY EMPNO
           )
      );

-- 8)
-- Find name and bonus of polices who hold the most number of responsible crimes on 2020.
SELECT NAME, BONUS 
FROM POLICE 
WHERE EMPNO = (
    SELECT EMPNO 
    FROM (
        SELECT RESPONSIBLEPOLICENO AS EMPNO, COUNT(*) AS count_case 
        FROM CRIME 
        WHERE YEAR(DATE) = 2020 
        GROUP BY RESPONSIBLEPOLICENO 
        ORDER BY count_case DESC 
        LIMIT 1)
    );


