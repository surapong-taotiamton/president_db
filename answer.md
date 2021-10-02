# เฉลย

Query ที่เฉลยนี้เป็น Query รูปแบบนึงที่ทำให้ได้ผลลัพธ์ตามที่โจทย์ต้องการ ซึ่งอาจมี Query อื่นที่สามารถใช้หาผลลัพธ์แบบเดียวกันได้ ดังนั้นหากได้ Query ไม่เหมือนกับที่เฉลยก็ไม่ต้องแปลกใจ

## 1. แสดงรายชื่อประธานาธิบดีและอายุเมื่อถึงแก่อสัญกรรม โดยเรียงตามอายุ

```sql
SELECT PRES_NAME, DEATH_AGE 
FROM PRESIDENT
ORDER BY DEATH_AGE ASC
```

## 2. แสดงชื่อพรรคและประธานาธิบดีที่สังกัดพรรคนั้น โดยเรียงตามชื่อพรรคและชื่อประธานาธิบดี

```sql
SELECT PARTY, PRES_NAME
FROM PRESIDENT
ORDER BY PARTY, PRES_NAME
```

## 3. แสดงว่ามีอายุเท่าไรบ้างที่ประธานาธิบดีถึงแก่อสัญกรรม เรียงจากมากไปหาน้อย

```sql
SELECT DISTINCT DEATH_AGE
FROM PRESIDENT
ORDER BY DEATH_AGE DESC
```

## 4. แสดงอายุประธานาธิบดีและคู่สมรส เรียงตามอายุประธานาธิบดีและคู่สมรสโดยหากรายการที่ซ้ํากันแสดงเพียงครั้งเดียว

```sql
SELECT DISTINCT PR_AGE, SP_AGE
FROM PRES_MARRIAGE 
```

## 5. แสดงรายละเอียดของประธานาธิบดี Reagan

```sql
SELECT * 
FROM PRESIDENT 
WHERE PRES_NAME = 'Reagan R'
```

## 6. แสดงรายละเอียดของประธานาธิบดีทุกท่านยกเว้น Reagan เรียงตามชื่อ

```sql
SELECT * 
FROM PRESIDENT 
WHERE PRES_NAME != 'Reagan R'
ORDER BY PRES_NAME
```

## 7. แสดงรายละเอียดของประธานาธิบดีทุกท่านที่เสียชีวิตก่อนอายุ 70 เรียงลําดับตามอายุจากมากไปน้อย

```sql
SELECT * 
FROM PRESIDENT 
WHERE DEATH_AGE < 70
ORDER BY DEATH_AGE DESC
```

## 8. แสดงรายชื่อประธานาธิบดีที่มีชื่อระหว่าง 'Eisenhower' AND 'Nixon' เรียงลําดับตามชื่อประธานาธิบดี

```sql
SELECT * 
FROM PRESIDENT 
WHERE 'Eisenhower D D' < PRES_NAME AND PRES_NAME < 'Nixon R M'
ORDER BY PRES_NAME
```

## 9. แสดงรายละเอียดของประธานาธิบดีที่ทํางานในตําแหน่ง 2,4,6,8 ปี

```sql
SELECT * 
FROM PRESIDENT 
WHERE YRS_SERV IN (2, 4, 6, 8)
```

## 10. แสดงรายละเอียดของประธานาธิบดีพรรค ‘Republican’ เรียงลําดับตามชื่อ

```sql
SELECT * 
FROM PRESIDENT 
WHERE PARTY = 'Republican'
```

## 11. แสดงรายชื่อประธานาธิบดีและภริยาและจํานวนบุตร ในการแต่งงานทุกรายการที่มีจํานวนบุตรมากกว่า 5 คน

```sql
SELECT PRES_NAME, SPOUSE_NAME , NR_CHILDREN 
FROM PRES_MARRIAGE 
WHERE NR_CHILDREN > 5
```

## 12. แสดงรายชื่อของประธานาธิบดีและคู่สมรสที่แต่งงานกันเมื่อประธานาธิบดีอายุประมาณ 20 ปีและภริยาอายุไม่เกิน 20 ปี

```sql

```

## 13. แสดงรายชื่อของประธานาธิบดีและคู่สมรสที่แต่งงานกันเมื่อทั้งคู่อายุเท่ากันเรียงลําดับตามอายุคู่สมรส

```sql
SELECT * FROM PRES_MARRIAGE
WHERE SP_AGE = PR_AGE
ORDER BY MAR_YEAR

-- เดาว่าอายุคู่สมรส คือ MAR_YEAR
```

## 14. แสดงอายุเฉลี่ยของประธานาธิบดีขณะที่แต่งงาน

```sql
SELECT AVG(PR_AGE) 
FROM PRES_MARRIAGE
```

## 15. แสดงจํานวนเฉลี่ยของลูกประธานาธิบดี ที่ประธานาธิบดีแต่งงานหลังปี 1900

```sql
SELECT AVG(NR_CHILDREN) 
FROM PRES_MARRIAGE
WHERE MAR_YEAR > 1900
```

## 16. แสดงจํานวน VOTES เฉลี่ยของผู้ที่ชนะการเลือกตั้งในศตวรรษที่ 20

```sql
SELECT AVG(VOTES)
FROM ELECTION
WHERE WINNER_LOSER_INDIC = 'W' AND ELECTION_YEAR >= 1900 AND ELECTION_YEAR < 2000
```

## 17. แสดงการเลือกตั้งทั้งหมดถูกจัดขึ้น

```sql
SELECT COUNT(DISTINCT ELECTION_YEAR) 
FROM ELECTION
```

## 18. แสดงจํานวนผู้ที่แพ้ในการเลือกตั้ง (แสดงรายการที่ผู้สมัครไม่เคยชนะการเลือกตั้งเลย)

```sql

```

## 19. แสดงจํานวนรัฐที่เริ่มก่อตั้งประเทศสหรัฐอเมริกา

```sql
SELECT COUNT(*)
FROM STATE 
WHERE ADMIN_ENTERED iS NULL
```

## 20. แสดงอายุเฉลี่ยเมื่อเสียชีวิตของประธานาธิบดีจากพรรครีพับลิกันที่เกิดหลังปีคศ.1850

```sql
SELECT AVG(DEATH_AGE) 
FROM PRESIDENT
WHERE PARTY = 'Republican' AND BIRTH_YR > '1850'
```

## 21. แสดงจํานวนครั้งทั้งหมดของการแต่งงานของประธานาธิบดี

```sql
SELECT COUNT(*) 
FROM PRES_MARRIAGE 
```

## 22. แสดงจํานวนมีประธานาธิบดีกี่คนที่ยังมีชีวิตอยู่ในปี 1985

```sql
SELECT COUNT(*) 
FROM PRESIDENT 
WHERE ( BIRTH_YR + DEATH_AGE ) >= 1985 OR DEATH_AGE IS NULL
```

## 23. แสดงจํานวนสมัยการปกครองของประเทศสหรัฐอเมริกา

```sql
SELECT MAX(ADMIN_NR) 
FROM ADMINISTRATION 
```

## 24. แสดงว่ามีประธานาธิบดีมาแล้วกี่คน (โดยใช้ตาราง ADMINISTRATION เพื่อตอบคําถาม)

```sql
SELECT COUNT(DISTINCT PRES_NAME)
FROM ADMINISTRATION 
```

## 25. แสดงอายุของภรรยาประธานาธิบดีที่ขณะแต่งงานมีอายุน้อยที่สุด มีอายุเท่าไหร่ในขณะนั้น

```sql
SELECT MIN(SP_AGE)
FROM PRES_MARRIAGE
```

## 26. แสดงจํานวนบุตรของประธานาธิบดีที่แต่งงานกับภรรยาอายุน้อยกว่า 20 ปี

```sql
SELECT SUM(NR_CHILDREN)
FROM PRES_MARRIAGE 
WHERE SP_AGE < 20
```

## 27. แสดงจํานวนเฉลี่ยของผลต่างระหว่างอายุประธานาธิบดีและภรรยา

```sql
SELECT AVG( ABS(PR_AGE - SP_AGE ) )
FROM PRES_MARRIAGE
```

## 28. แสดงจํานวนของประธานาธิบดีที่ขณะแต่งงานมีอายุมากกว่าภรรยา 2 ปี

```sql
SELECT COUNT(*)
FROM PRES_MARRIAGE
WHERE PR_AGE - SP_AGE = 2
```

## 29. แสดงอัตราส่วนเฉลี่ยของอายุประธานาธิบดีและอายุภรรยาขณะแต่งงาน

```sql
SELECT AVG(PR_AGE / SP_AGE) 
FROM PRES_MARRIAGE
```

## 30. แสดงรายละเอียดการสมรสของประธานาธิบดีที่มีอายุน้อยกว่าภรรยาไม่เกิน 2 ปี

```sql
SELECT *
FROM PRES_MARRIAGE
WHERE SP_AGE - PR_AGE <= 2 AND  SP_AGE > PR_AGE
```

## 31. หาค่าสูงสุดต่ำสุดและอัตราส่วนระหว่างจํานวนปีที่อยู่ในตําแหน่งกับอายุเมื่อถึงแก่อสัญกรรมโดยคิดเป็นเปอร์เซ็นต์เฉพาะประธานาธิบดีถึงอสัญกรรมแล้ว

```sql
SELECT MIN(YRS_SERV),  MAX(YRS_SERV), ( SUM(YRS_SERV) * 100 / SUM(DEATH_AGE) )
FROM PRESIDENT
WHERE DEATH_AGE IS NOT NULL
```

## 32. แสดงจํานวนผู้สมัครรับเลือกตั้งภายหลังปี 1900 เรียงลําดับจากปีล่าสุด

```sql
SELECT ELECTION_YEAR, COUNT(*)
FROM ELECTION 
WHERE ELECTION_YEAR > 1900
GROUP BY ELECTION_YEAR
ORDER BY ELECTION_YEAR DESC
```

## 33. แสดงจํานวนผู้สมัครรับเลือกตั้งภายหลังปี 1989 เรียงลําดับตามปีการเลือกตั้ง

```sql
SELECT ELECTION_YEAR, COUNT(*)
FROM ELECTION 
WHERE ELECTION_YEAR > 1989
GROUP BY ELECTION_YEAR
ORDER BY ELECTION_YEAR 
```

## 34. แสดงรายละเอียดของประธานาธิบดีคนใดที่การแต่งงานครั้งที่สองที่เป็นครั้งสุดท้ายอายุมากกว่าการแต่งงานครั้งแรกสองเท่า

```sql
-- มันไม่ได้ 2 เท่าพอดี เลยใช้ FLOOR เพื่อเอา 2 เท่ากว่าๆออกมา

SELECT *
FROM PRESIDENT T1
WHERE T1.PRES_NAME IN (
	SELECT T2.PRES_NAME -- , MAX(T2.PR_AGE),MIN(T2.PR_AGE), FLOOR(MAX(PR_AGE) / MIN(PR_AGE)) 
    FROM PRES_MARRIAGE AS T2
    GROUP BY T2.PRES_NAME
    HAVING COUNT(*) = 2  AND FLOOR(MAX(PR_AGE) / MIN(PR_AGE)) = 2
)
```

## 35. หลังจากปี 1870 การเลือกตั้งครั้งใดที่มีผู้สมัครรับเลือกตั้งมากกว่า 2 คน

```sql
SELECT ELECTION_YEAR 
FROM ELECTION 
WHERE ELECTION_YEAR > 1870
GROUP BY ELECTION_YEAR
HAVING COUNT(*) > 2
```

## 36. แสดงอายุเฉลี่ยของประธานาธิบดีที่มีการแต่งงานและอายุเฉลี่ยของภรรยา

```sql

```

## 37. แสดงจํานวนบุตรเฉลี่ยของประธานาธิบดี

```sql

```

## 38. แสดงรายชื่อประธานาธิบดีและจํานวนบุตรรวมของประธานาธิบดีที่เคยมีการแต่งงานอย่างน้อย 1 ครั้งที่อายุไม่เกิน 20 ปี

```sql
SELECT PRES_NAME, SUM(NR_CHILDREN)
FROM PRES_MARRIAGE 
GROUP BY PRES_NAME
HAVING MIN(PR_AGE) < 20
```

## 39. แสดงรายชื่อประธานาธิบดีและจํานวนบุตรรวม สําหรับผู้ที่มีการแต่งงานครั้งแรกภายหลังอายุ 35 ปี

```sql
SELECT PRES_NAME, SUM(NR_CHILDREN)
FROM PRES_MARRIAGE 
GROUP BY PRES_NAME
HAVING MIN(PR_AGE) > 35
```

## 40. แสดงรายชื่อประธานาธิบดีท่านใดบ้างที่ไม่มีบุตรในครั้งใดครั้งหนึ่งของการแต่งงาน

```sql
SELECT PRES_NAME
FROM PRES_MARRIAGE 
GROUP BY PRES_NAME
HAVING MIN(NR_CHILDREN) = 0

------------------------- อันไหนก็ได้

SELECT DISTINCT PRES_NAME 
FROM PRES_MARRIAGE 
WHERE NR_CHILDREN = 0

```

## 41. แสดงรายชื่อประธานาธิบดีที่แต่งงานมากกว่า 1 ครั้งและในการแต่งงานแต่ละครั้งมีบุตรอย่างน้อย 2 คน

```sql
SELECT PRES_NAME
FROM PRES_MARRIAGE 
WHERE NR_CHILDREN >= 2
GROUP BY PRES_NAME
HAVING COUNT(*) > 1
```

## 42. แสดงรายชื่อประธานาธิบดีและภรรยาสําหรับการสมรสที่มีบุตรมากกว่า 5 คน

```sql
SELECT PRES_NAME , SPOUSE_NAME
FROM PRES_MARRIAGE 
WHERE NR_CHILDREN >= 5
```

## 43. จงเขียนคําสั่ง SQL ที่ให้ผลลัพธ์เหมือนกับคําสั่งนี้แต่ไม่ใช้ GROUP BY CAUSE (จงแสดงรายชื่อพรรคโดยไม่ใช้คําสั่ง GROUP BY)

```sql
SELECT DISTINCT PARTY
FROM PRESIDENT
```

## 44. แสดงรายชื่อพรรคการเมืองที่มีประธานาธิบดีมากกว่า 7 คน หลังปี 1850

```sql
SELECT PRESIDENT.PARTY
FROM ADMINISTRATION 
INNER JOIN PRESIDENT
ON ADMINISTRATION.PRES_NAME = PRESIDENT.PRES_NAME
WHERE ADMINISTRATION.YEAR_INAUGURATED > 1850
GROUP BY PRESIDENT.PARTY
HAVING COUNT(*) > 7
```

## 45. แสดงรายชื่อของรัฐใดบ้างที่เป็นสถานที่เกิดของประธานาธิบดีมากกว่า 1 คนตั้งแต่ปี 1880

```sql
SELECT STATE_BORN
FROM PRESIDENT 
WHERE BIRTH_YR > 1880
GROUP BY STATE_BORN
HAVING COUNT(*) > 1
```

## 46. จงแสดงอายุที่มากที่สุดเมื่อถึงแก่อสัญกรรมของประธานาธิบดีของพรรคการเมืองแต่ละพรรค

```sql
SELECT PARTY, MAX(DEATH_AGE)
FROM PRESIDENT 
GROUP BY PARTY
```

## 47. จงจัดกลุ่ม (ช่วงอายุ) ของอายุประธานาธิบดีเมื่อถึงอสัญกรรมและนับจํานวนประธานาธิบดีที่ถึงอสัญกรรมของกลุ่มอายุนั้น

```sql
SELECT DEATH_AGE, COUNT(*)
FROM PRESIDENT 
GROUP BY DEATH_AGE
```

## 48. จงแสดงรายชื่อพรรคเพื่อแสดงอายุเมื่อถึงอสัญกรรมมากที่สุดและน้อยที่สุดของประธานาธิบดีพรรคนั้น โดยที่อายุที่ถึงอสัญกรรมที่มากสุดต้องมากกว่าเป็นจํานวนอย่างน้อย 20 % ของอายุที่น้อยที่สุด

```sql
```

## 49. แสดงจํานวนประธานาธิบดีอายุเมื่อถึงอสัญกรรมโดยเฉลี่ยจํานวนปีที่เป็นประธานาธิบดีที่มากที่สุดและน้อยที่สุดของแต่ละรัฐที่เป็นที่เกิดของประธานาธิบดี

```sql
```

## 50. แสดงรายชื่อของรองประธานาธิบดีที่ทํางานกับประธานาธิบดีมากกว่า 1 คน

```sql
SELECT DISTINCT T1.VICE_PRES_NAME
FROM ADMIN_PR_VP AS T1
WHERE  (
  SELECT COUNT(DISTINCT PRES_NAME) 
  FROM ADMIN_PR_VP AS T2
  WHERE T1.VICE_PRES_NAME = T2.VICE_PRES_NAME
) > 1
```

## 51. แสดงจํานวนของสมัยการปกครองและจํานวนของรองประธานาธิบดีของสมัยการปกคอรงที่มีรองประธานาธิบดีมากกว่า 1 คน

```sql
SELECT ADMIN_NR, COUNT(*) 
FROM ADMIN_PR_VP
GROUP BY ADMIN_NR
HAVING COUNT(*) > 1
```

## 52. จงแสดงสมัยการปกครองที่มีประธานาธิบดีมากกว่า 1 คน

```sql
SELECT ADMIN_NR
FROM ADMINISTRATION 
GROUP BY ADMIN_NR
HAVING COUNT(*) > 1
```

## 53. แสดงรายชื่อของประธานาธิบดีและปีที่ได้เป็นประธานาธิบดีเป็นครั้งแรก

```sql
SELECT PRES_NAME, MIN(YEAR_INAUGURATED)
FROM ADMINISTRATION 
GROUP BY PRES_NAME
```

## 54. แสดงจํานวนของงานอดิเรกแต่ละประเภทพร้อมกับแสดงจํานวนของประธานาธิบดีสนใจ

```sql
SELECT HOBBY, COUNT(*)
FROM PRES_HOBBY
GROUP BY HOBBY
```

## 55. แสดงรายละเอียดของประธานาธิบดีคนใดบ้างที่ทํางานในทําเนียบขาวมากกว่า 6 ปี

```sql
SELECT * 
FROM PRESIDENT 
WHERE YRS_SERV > 6
```

## 56. แสดงจํานวนรัฐที่ เข้าร่วมเป็นสมาชิกของประเทศสหรัฐในแต่ละปี

```sql
SELECT YEAR_ENTERED, COUNT(*)
FROM STATE 
GROUP BY YEAR_ENTERED
```

## 57. มีรัฐใหม่ที่เข้าร่วมกับสหรัฐอเมริกาในปี 1976 กี่รัฐ

```sql
SELECT COUNT(*)
FROM STATE 
WHERE YEAR_ENTERED = 1976
```

## 58. แสดงจํานวนเฉลี่ยงานอดิเรกของประธานาธิบดี

```sql
```

## 59. แสดงรายชื่อของประธานาธิบดีคนใดที่มีบุตรรวมมากกว่า 2 คน

```sql
SELECT PRES_NAME 
FROM PRES_MARRIAGE
GROUP BY PRES_NAME
HAVING SUM(NR_CHILDREN) > 2
```

## 60. แสดงรายละเอียดการแต่งงานของประธานาธิบดีครั้งใดที่มีบุตรมากกว่า 2 คน

```sql
SELECT * 
FROM PRES_MARRIAGE
WHERE NR_CHILDREN > 2
```

## 61. แสดงชื่อประธานาธิบดีจํานวนปีที่ดํารงตําแหน่งและจํานวนวุฒิสมาชิกที่เสนอชื่อให้สําหรับประธานาธิบดีที่เคยดํารงตําแหน่งเกิน 4 ปีและเคยแพ้การเสนอชื่อ

```sql

-- ข้อนี้ไม่มั่นใจตรงจํานวนวุฒิสมาชิกที่เสนอชื่อว่าเขาหมายถึงรวมทุกปีที่ชนะ รวมทุกปีทั้งแพ้ทั้งชนะ หรือ ปีชนะครั้งสุดท้าย เพราะเหมือนให้แสดงชื่อกับจำนวนปีที่ดำรงตำแหน่งซึ่งเป็น 1 ROW แต่จำนวนวุฒิสมาชิกที่ VOTE มันมีหลายปี

SELECT T1.PRES_NAME, T1.YRS_SERV, ( SELECT SUM(T3.VOTES) FROM ELECTION AS T3 WHERE T3.CANDIDATE = T1.PRES_NAME AND T3.WINNER_LOSER_INDIC = 'W' ) AS SUM_VOTES 
FROM PRESIDENT AS T1
WHERE T1.YRS_SERV > 4 AND EXISTS (
  SELECT *
  FROM ELECTION AS T2
  WHERE T1.PRES_NAME = T2.CANDIDATE AND T2.WINNER_LOSER_INDIC = 'L'
```

## 62. แสดงคะแนนเสียงเฉลี่ยในปีที่ชนะการเลือกตั้งจํานวนปีที่ดํารงตําแหน่งของประธานาธิบดีแต่ละท่าน

```sql
```

## 63. แสดงรายชื่อประธานาธิบดีปีที่ดํารงตําแหน่งและจํานวนครั้งที่เคยแพ้ในการเลือกตั้ง

```sql
SELECT T1.PRES_NAME, T1.YRS_SERV, 
(SELECT COUNT(*) FROM ELECTION AS T2 WHERE T1.PRES_NAME = T2.CANDIDATE AND T2.WINNER_LOSER_INDIC = 'L') AS LOSE_COUNT
FROM PRESIDENT AS T1
```

## 64. แสดงรายชื่อของประธานาธิบดีคนใดที่มีจํานวนงานอดิเรกมากที่สุด

```sql
SELECT *
FROM ( 
  SELECT PRES_HOBBY.PRES_NAME, COUNT(*) AS COUNT_HOBBY
  FROM PRES_HOBBY
  GROUP BY PRES_HOBBY.PRES_NAME 
) AS SUMMARY_HOBBY_MAIN
WHERE SUMMARY_HOBBY_MAIN.COUNT_HOBBY = (
  SELECT MAX(COUNT_HOBBY)
  FROM ( 
    SELECT PRES_HOBBY.PRES_NAME, COUNT(*) AS COUNT_HOBBY
    FROM PRES_HOBBY
    GROUP BY PRES_HOBBY.PRES_NAME 
  ) AS SUMMARY_HOBBY
)
```

## 65. แสดงระยะเวลาของการดํารงตําแหน่งของประธานาธิบดีคนใดมีระยะเวลาการดํารงตําแหน่งนานที่สุดและนานเท่าใด

```sql
SELECT PRESIDENT.PRES_NAME, PRESIDENT.YRS_SERV
FROM PRESIDENT
WHERE PRESIDENT.YRS_SERV = (
	SELECT MAX(YRS_SERV)
  FROM PRESIDENT
)
```

## 66. แสดงชื่อรัฐและปีที่เข้าร่วมเพื่อเป็นรัฐหนึ่งในประเทศสหรัฐอเมริกาในปีที่มีมากกว่า 2 รัฐเข้าร่วม

```sql
SELECT  STATE.STATE_NAME, STATE.YEAR_ENTERED
FROM STATE
WHERE STATE.YEAR_ENTERED IN (
  SELECT STATE.YEAR_ENTERED 
  FROM STATE 
  GROUP BY STATE.YEAR_ENTERED
HAVING COUNT(*) > 2 )
```

## 67. แสดงชื่อรัฐ สมัยการปกครอง ปีที่เข้าร่วมเป็นรัฐหนึ่งในประเทศสหรัฐอเมริกา สําหรับรัฐที่เข้ามาในสมัยการปกครองเดียวกันแต่ต่างปีที่เข้าร่วม

```sql
SELECT *
FROM STATE
WHERE STATE.ADMIN_ENTERED IN ( SELECT STATE.ADMIN_ENTERED 
FROM STATE 
GROUP BY STATE.ADMIN_ENTERED
HAVING MIN(STATE.YEAR_ENTERED) != MAX(STATE.YEAR_ENTERED) )
```

## 68. แสดงจํานวนประธานาธิบดีในพรรคการเมืองที่มีประธานาธิบดีเกิดหลังจากปี 1850 มากที่สุดและชื่อพรรคการเมือง

```sql

```

## 69. แสดงรายชื่อของประธานาธิบดีจํานวนที่ดํารงตําแหน่ง สําหรับประธานาธิบดีที่ดํารงตําแหน่งนานที่สุด

```sql
SELECT PRESIDENT.PRES_NAME, PRESIDENT.YRS_SERV
FROM PRESIDENT
WHERE PRESIDENT.YRS_SERV = (
	SELECT MAX(YRS_SERV)
  FROM PRESIDENT
)
```

## 70. แสดงจํานวนประธานาธิบดีของแต่ละพรรคการเมืองที่มีประธานาธิบดีเกิดหลังจากปี 1850 และรายชื่อพรรคโดยเรียงลําดับตามชื่อพรรค

```sql
```

## 71. แสดงรายชื่อประธานาธิบดีที่แต่งงานอย่างน้อย 2 ครั้งและในการแต่งงานแต่ละครั้งมีบุตรอย่างน้อย 2 คน

```sql
```

## 72. แสดงรายละเอียดของตาราง President สําหรับประธานาธิบดีที่เข้ารับตําแหน่งเป็นคนแรกหลังจากปีที่ประธานาธิบดี Reagan แต่งงานครั้งแรก

```sql
```

## 73. แสดงชื่อประธานาธิบดีที่มีอายุน้อยที่สุดเมื่อเข้ารับตําแหน่งครั้งแรก

```sql
```

## 74. แสดงรายชื่อและจํานวนบุตรของประธานาธิบดีที่แต่งงานก่อนอายุ 40 ปีโดยมีการแต่งงานมากกว่า 1 ครั้งและผลรวมของจํานวนบุตรมากกว่า 2 คน

```sql
```

## 75. แสดงจํานวนบุตรของประธานาธิบดีที่แต่งงานหลังอายุ 50 ปีและมีคู่สมรสอายุน้อยกว่า 30 ปี

```sql
```

## 76. แสดงคะแนนทั้งหมดของผู้ชนะและแพ้ในการเลือกตั้งในแต่ละปีที่มีการเลือกตั้ง

```sql
```

## 77. แสดงอายุเฉลี่ยของประธานาธิบดีที่แต่งงานครั้งแรก

```sql
```

## 78. แสดงอายุเฉลี่ยของประธานาธิบดีสําหรับการแต่งงานครั้งที่ 2

```sql
```

## 79. แสดงรายชื่อของประธานาธิบดีปีเกิดและอายุขณะแต่งงานครั้งที่ 2

```sql
```

## 80. แสดงรายชื่อของประธานาธิบดีปีเกิดและปีที่ชนะในการเลือกตั้งเป็นสมัยที่ 2

```sql
```

## 81. แสดงชื่อและปีเกิดของประธานาธิบดีผู้ที่มีจํานวนครั้งการแพ้และชนะเลือกตั้งเท่ากัน

```sql
```

## 82. แสดงรายชื่อประธานาธิบดีที่ดํารงตําแหน่ง (สมัย) มากกว่าจํานวนครั้งการแต่งงาน

```sql
SELECT T1.PRES_NAME 
FROM PRESIDENT AS T1
WHERE 
(SELECT COUNT(*) FROM ADMINISTRATION AS T2 WHERE T2.PRES_NAME = T1.PRES_NAME) 
> 
(SELECT COUNT(*) FROM PRES_MARRIAGE AS T3 WHERE T3.PRES_NAME = T1.PRES_NAME )
```

## 83. แสดงรายชื่อประธานาธิบดีที่จํานวนสมัยของการดํารงตําแหน่งเท่ากับจํานวนรวมของบุตร

```sql
SELECT T1.PRES_NAME 
FROM PRESIDENT AS T1
WHERE 
(SELECT COUNT(*) FROM ADMINISTRATION AS T2 WHERE T2.PRES_NAME = T1.PRES_NAME) 
= 
(SELECT SUM(T3.NR_CHILDREN) FROM PRES_MARRIAGE AS T3 WHERE T3.PRES_NAME = T1.PRES_NAME )
```

## 84. แสดงรายชื่อและเปอร์เซ็นต์ของคะแนนเสียงของผู้ที่ชนะการเลือกตั้งจากคะแนนทั้งหมดที่มีการลงคะแนนเสียงจากการเลือกตั้งที่มีคะแนนเสียงมากที่สุดในตาราง

```sql
```

## 85. แสดงรายชื่อของประธานาธิบดีที่เคยเป็นรองประธานาธิบดี

```sql
SELECT T1.PRES_NAME 
FROM PRESIDENT AS T1
WHERE EXISTS (
  SELECT *
  FROM ADMIN_PR_VP AS T2
  WHERE T1.PRES_NAME = T2.VICE_PRES_NAME
)
```

## 86. แสดงรายชื่อของประธานาธิบดีที่ไม่เคยเป็นรองประธานาธิบดี

```sql
SELECT T1.PRES_NAME 
FROM PRESIDENT AS T1
WHERE NOT EXISTS (
  SELECT *
  FROM ADMIN_PR_VP AS T2
  WHERE T1.PRES_NAME = T2.VICE_PRES_NAME
)
```

## 87. แสดงรายชื่อประธานาธิบดีที่ไม่เคยชนะและไม่เคยแพ้การเลือกตั้ง

```sql
SELECT T1.PRES_NAME 
FROM PRESIDENT AS T1
WHERE NOT EXISTS (
  SELECT *
  FROM ELECTION AS T2
  WHERE T1.PRES_NAME = T2.CANDIDATE
)
```

## 88. แสดงชื่อประธานาธิบดีที่มีอายุในการแต่งงานครั้งแรก น้อยกว่าอายุเฉลี่ยในการแต่งงานครั้งแรกของประธานาธิบดีทั้งหมด

```sql

```

## 89. แสดงรายชื่อประธานาธิบดีที่มีจํานวนบุตรจากการแต่งงานครั้งแรกน้อยกว่าจํานวนงานอดิเรก

```sql
SELECT FIRST_TIME_MARRY.*, 

(
   	SELECT COUNT(*)
  	FROM PRES_HOBBY AS T3
  	WHERE T3.PRES_NAME = FIRST_TIME_MARRY.PRES_NAME
) AS SUM_HOBBY

FROM 
(
  SELECT PRES_NAME, NR_CHILDREN
  FROM PRES_MARRIAGE AS T1
  WHERE 0 = ( 
    SELECT COUNT(*)
    FROM PRES_MARRIAGE AS T2
    WHERe T1.MAR_YEAR > T2.MAR_YEAR AND T1.PRES_NAME = T2.PRES_NAME 
  )
) AS FIRST_TIME_MARRY
WHERE FIRST_TIME_MARRY.NR_CHILDREN < 
(
   	SELECT COUNT(*)
  	FROM PRES_HOBBY AS T3
  	WHERE T3.PRES_NAME = FIRST_TIME_MARRY.PRES_NAME
)
```

## 90. แสดงรายชื่อประธานาธิบดีคนใดที่ไม่เคยแต่งงาน

```sql
SELECT PRESIDENT.PRES_NAME
FROM PRESIDENT
LEFT JOIN PRES_MARRIAGE
ON PRESIDENT.PRES_NAME = PRES_MARRIAGE.PRES_NAME
WHERE PRES_MARRIAGE.SPOUSE_NAME IS NULL
```
