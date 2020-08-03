1.
select * from user_new INNER JOIN role ON user_new.role_id = role.id
ORDER BY user_new.name ASC, role.name ASC;

2.
select * from user_new LEFT JOIN role ON user_new.role_id = role.id
ORDER BY user_new.name ASC, role.name ASC;

3.
select user_new.name from user_new INNER JOIN role
ON user_new.role_id = role.id;

4.
SELECT user_new.phonenumber, user_new.emailid, profile.batch,department.name, profile.designation, experience.company_name 
FROM user_new INNER JOIN profile
ON user_new.role_id = profile.id
INNER JOIN degree
ON profile.degree_id = degree.id
INNER JOIN department 
ON degree.department_id = department.id
INNER JOIN experience
ON profile.id = experience.profile_id
WHERE user_new.emailid LIKE 'abcd%'; 

5.
Select user_new.name , role.name FROM 
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN profile_skills ON
profile.id = profile_skills.skill_id
where role.name LIKE 'guide';

6.
select user_new.name, role.name, experience.company_name 
from User_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;

7.
SELECT user_new.name, experience.company_name, role.name
FROM user_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;

8.
SELECT user_new.emailid FROM 
user_new INNER JOIN role ON 
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1
ORDER BY user_new.name;

9.
SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON  
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1 AND profile.batch='For'
ORDER BY user_new.name;

10.
Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND user_new.profile_id IS NOT NULL
ORDER BY user_new.name;

11.
Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND profile.batch='En'
ORDER BY user_new.name;

12.
Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name LIKE 'Alumni' AND degree.name='ECE'
ORDER BY user_new.name;

13.
Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name LIKE 'Alumni' AND department.name='IT'
ORDER BY user_new.name;

14.
Select user_new.name AS USERNAME, user_new.emailid AS USER_EMAIL, user_new.phonenumber, profile.address AS PROFILE_ADDRESS FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

15.
Select user_new.name  AS USERNAME , higher_degree.university_name AS HD FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

16.
Select user_new.name  AS USERNAME, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN degree ON
profile.degree_id = degree.id
FULL JOIN department ON
department.id = degree.department_id
FULL JOIN higher_degree ON
degree.id = higher_degree.id
WHERE role.name LIKE 'designer' AND higher_degree.degree_name = 'BE'
ORDER BY user_new.name;

17.
SELECT user_new.name, profile.batch FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

18.
SELECT user_new.name, profile.batch, degree.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

19.
SELECT user_new.name, profile.batch, degree.name, department.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

20.
SELECT degree.name AS DEGREE_NAME, department.name AS DEPT_NAME from degree
INNER JOIN department ON
degree.department_id = department.id
ORDER BY degree.name;

21.
SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Male'
ORDER BY user_new.name;

22.
SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name = 'Alumni' AND experience.currentvalue=1 AND experience.company_name = 'CTS'
ORDER BY user_new.name;

23.
SELECT user_new.name, querytable.content FROM user_new
INNER JOIN querytable ON
user_new.id = querytable.user_id
ORDER BY user_new.name;

24.
SELECT user_new.name, querytable.content FROM user_new
FULL JOIN querytable ON
user_new.id = querytable.user_id
WHERE querytable.parent_id IS NOT NULL
ORDER BY user_new.name;

25.
SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
ORDER BY user_new.name;
