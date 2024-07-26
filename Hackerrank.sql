CREATE Database Hackerrank;

use Hackerrank;

Create Table occupations(pname Varchar(50),
occupations varchar(50));

Insert into occupations values('Samantha','doctors');

update occupations  set occupations ='doctors'  where pname ='Samantha';

Insert into occupations values('Jane','actors')
,('Ashely','professors') 
,('Christeen','professors')
,('Jenny','doctors')
,('Julia','actors')
,('Ketty','professors')
,('Maria','actors')
,('Meera','singers')
,('Piya','singers')
,('Rahul','singers');

Select * from occupations;

SELECT pname + '(' + Upper(SUBSTRING(occupations, 1, 1)) + ')'
FROM OCCUPATIONS
ORDER BY pname;

select 
   'There are a total of '+cast(count(*)as varchar)+' '+LOWER(occupations)+'.'
FROM OCCUPATIONS
group by occupations
ORDER BY count(*) ASC, occupations;








WITH OrderedOccupations AS (
    SELECT 
        pName,
        Occupations,
        ROW_NUMBER() OVER (PARTITION BY Occupations ORDER BY pname) AS RowNum
    FROM 
        OCCUPATIONS
)
SELECT 
    MAX(CASE WHEN Occupations = 'doctors' THEN pname END) AS Doctor,
    MAX(CASE WHEN Occupations = 'professors' THEN pname END) AS Professor,
    MAX(CASE WHEN Occupations = 'singers' THEN pname END) AS Singer,
    MAX(CASE WHEN Occupations = 'actors' THEN pname END) AS Actor
FROM 
    OrderedOccupations
GROUP BY 
    RowNum
ORDER BY 
    RowNum;
