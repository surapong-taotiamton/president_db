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
    ('Fillmore M',1800,2,'74','Whig','New York'),
    ('Pierce F',1804,4,'64','Democratic','New Hampshire');


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
    ('Fillmore M','Powers A',26,27,2,1826),
    ('Fillmore M','McIntosh C C',58,44,0,1858),
    ('Pierce F','Appleton J M',29,28,3,1834);