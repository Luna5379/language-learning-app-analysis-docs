CREATE TABLE Languages( 
  UsernameID Integer,
  Language VarChar,
  EXP Integer);

INSERT INTO Languages (UsernameID, Language, EXP) VALUES(1, "Python", 20);
INSERT INTO Languages (UsernameID, Language, EXP) VALUES(2, "Python", 40);
INSERT INTO Languages (UsernameID, Language, EXP) VALUES(1, "Python", 10);
INSERT INTO Languages (UsernameID, Language, EXP) VALUES(1, "HTML", 20);
INSERT INTO Languages (UsernameID, Language, EXP) VALUES(2, "HTML", 15);

SELECT UsernameID,
    SUM(Case Language WHEN "Python" THEN EXP ELSE 0 END) AS "Python",
    SUM(Case Language WHEN "HTML" THEN EXP ELSE 0 END) AS "HTML",
    SUM(EXP) as Total
FROM languages
GROUP BY UsernameID
ORDER BY UsernameID