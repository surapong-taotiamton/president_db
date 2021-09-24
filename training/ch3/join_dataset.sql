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
    ('Jefferson T',1743,8,'83','Demo-Rep','Virginia');

CREATE TABLE IF NOT EXISTS ADMINISTRATION (
    `ADMIN_NR` INT,
    `PRES_NAME` VARCHAR(128) ,
    `YEAR_INAUGURATED` INT
);
INSERT INTO ADMINISTRATION VALUES
    (1,'Washington G',1789),
    (2,'Washington G',1793),
    (3,'Adams J',1797),
    (4,'Jefferson T',1801);