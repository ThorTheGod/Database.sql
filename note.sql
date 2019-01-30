README:To cooperate with Node,java.etc,we should acquire some fundamental database knowledge.Because of my lack of intelligence,I will first use
MySQL with sql language.This is my learning note,if there is something wrong,I'm glad to discuss with you.

 
General sentence:
    SELECT ALL|DISTINCT QueriedObjectAttribute(QOA)
    FROM QO(like formName)
    WHERE condition(only the object in database）
    GROUP BY QOA Hving condition（judging sentence）
    ORDER BY QOA ASC|DESC；

descriptions about important sentences above:
    DISTINCT is to remove every repeated queried object(opposite to ALL).
    ORDER BY is to arrange QO(queried object).
    ASC and DESC is an order about the arangement.DESC--descending arrangement(opposite to ASC).If no declaration,acquiesce in ASC.
    GROUP BY is to divide the QO into groups with HAVING's conditions.
    attributes(not a sentence) can be a detailed attribute or a sentence(calculate and output or only output this sentence).

Special symbols:
    *:means all.like:
      SELECT *
      FROM Student; \\so we can get information of all students' attributes.
    %: e.g,a%b is all strings which are led by 'a' and end by 'b' like anab,atb...
    _:is a random character.like a_b can be aab,acb,a1b...
  
  
E.g.1:
    SELECT Snu,Sname,2018-Sbirthday,LOWER(Sdept)
    FROM Student;

    Snu and Sname Sdept is three attributes of object--Student(form).By the above-mentioned,we can search all students' number,name 
    and department.LOWER()is a function to change the capital into small letter.
    2018-Sbirthday is a calculating sentence which enable us to get the student's age and output.
    In addition,we can add a sentence 'student's age:' before the sen 2018-Sbirthday so terminal will output like:

    Snu Sname 'student‘s age:' 2018-birthday LOWER(Sdept)
    -------------------------------------------------------
    7   Thor   student's age:  19            EM

    Please do pay attention to the symbols '' which can only output the sentence.
    We can change the head's display in the output if we input:

    SELECT Snu NUMBER,Sname NAME,'student's age:' STUDENT:,2018-Sbirthday AGE,LOWER(Sdept) DEPARTMENT
    FROM Student;

    the output:
    NUMBER NAME STUDENT:        AGE      DEPARTMENT
    -------------------------------------------------------
    7      Thor student's age:  19       EM
    This method is "nickname".

E.g.2:
    SELECT DISTINCT Sno
    FROM Student
    WHERE Grade<60 AND Sage (NOT) BETWEEEN 17 AND 20 AND Sdept IN("EM") AND Sno LIKE '180691';

    This is how to input the conditions after WHERE.By this,we can get all number having 180691 of EMstudents who failed in at least
    one test and are (not) from 17 to 20 years old.
    AND can connect every conditions you want.
    OR 略.
    LIKE is to search similar information.e.g,you can input "...WHERE Sname NOT LIkE '宋%';"to search students whose surname is 宋.
    However,if you want to search something like an address'DB\_Design',when you input "LIKE 'DB\_Design'",database will output all
    strings like'DB\ADsign','DB\1Dsign'.At that time,you can extraly input ESCAPE'\ '(there is a space) behind the searching string("
    DB\_Design').By this way,you can make the database know that the character after \ is normal character rather than a special symbols.


E.g.3:
    SELECT *
    FROM Student
    ORDER BY Sdept,Sage DESC;
    Inputing this,database will output all students' attributes in department-ASC-order,and in age-DESC-order for those in the same department.
    As you can see,database will regard the left sen as first order,then do the rest order ，from left side to right side.
