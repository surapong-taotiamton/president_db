CREATE TABLE IF NOT EXISTS PRES_MARRIAGE (
    `PRES_NAME` VARCHAR(128) ,
    `SPOUSE_NAME` VARCHAR(128) ,
    `PR_AGE` INT,
    `SP_AGE` INT,
    `NR_CHILDREN` INT,
    `MAR_YEAR` INT
);
INSERT INTO PRES_MARRIAGE VALUES
    ('Washington G','Custis M D',26,27,0,1759),
    ('Adams J','Smith A',28,19,5,1764);


CREATE TABLE IF NOT EXISTS PRESIDENT (
    `PRES_NAME` VARCHAR(128) ,
    `BIRTH_YR` INT,
    `YRS_SERV` INT,
    `DEATH_AGE` INT ,
    `PARTY` VARCHAR(128) ,
    `STATE_BORN` VARCHAR(128) 
);
INSERT INTO PRESIDENT VALUES
    ('Washington G',1732,7,'67','Federalist','Virginia'),
    ('Adams J',1735,4,'90','Federalist','Massachusetts'),
    ('Buchanan J',1791,4,'77','Democratic','Pennsylvania');