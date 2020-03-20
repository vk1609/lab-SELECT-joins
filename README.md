![Image description](https://i1.faceprep.in/ProGrad/face-logo-resized.png)

# ProGrad Lab | ProGrad Premier League

Like the Indian Premier League (IPL) which happens during April & May every year. Our team organizes ProGrad Premier League at the same time for all the Cricketers in our team. Our PPL schema is a complete repository of limited-over format of Cricket, that includes details like teams competing, player representing each team, scoring details, umpire details etc.

The schema diagram of our database is shown below. Could you help with the below queries?


## What Should You Do
```
Go to Oracle SQL Developer and connect to SYSTEM schema or hr schema.
Start writing your queries in the query builder.
Save the .sql file and upload it in github.
Practice Oracle SQL - DDL Statements.
```

## How To Submit
```
Upon completion, run the following commands:

git add .
git commit -m "ProGrad ID"
git push origin master

And finally, create a pull request so your ProGrad Mentor (PM) can review your work.
```

## Instructions

1. ***Do not erase the existing queries.***
2. ***Use the same file to write all your queries.***
3. ***Select the entire query and run it to see the output.***
4. ***Save the file as your_file_name.sql and upload it in github.***
5. ***Refer dml-select-joins.sql file.*** 

## ER diagram

![sql](https://i1.faceprep.in/ProGrad/sql-ddl-lab2.png)

![sql](https://i1.faceprep.in/ProGrad/sql-ddl-lab1-instructions.png)


## PROGRESSION 0:
1. You will have two files create-tables.sql and insert-queries.sql.
2. Copy the content of create-tables.sql and execute it in sql developer to create tables in oracle.
3. Copy the code from insert-queries.sql and execute it in sql developer to insert data into tables created.
4. The insert-queries.sql contains two records for every table as a sample.
5. Use it as a reference and add 10 more such records to every table.

## PROGRESSION 1:

--Joins --

1. Write a query to return all the rows from user_new table and role tables where there is matching user_new.role_id value in both the usernew and role tables. Display role.name and user_new.name in ascending order.

2. Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal. Display role.name and user_new in ascending order.

3. Write a query to return all names from the user_new table where there is matching user_new.role_id value in both the user_new and role tables.

4. Write a query to return all  user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new table where there is matching 
  - profile id in both user_new and profile table, 
  - profile.degree_id and degree.id from profile and degree table, 
  - degree.department_id and department.id in degree and department
  - profile.id and experience.profile_id in experience and profile table
  - where user_name.name = "ProGrad" and experience.currentValue=3

5. Write a query to return all user_new.name, skill.name from user_new table where there are matching ids in the tables in the order with constraints given below
  - role
  - profile
  - profile_skills
  - where role.name="Alumini" 
  - Display by user_new.name and skill.name

6. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - experience
  - where role.name = "Alumini"
  - Display in the order user_name.name followed by experience.company_name

7. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - experience
  - where role.name = "Alumini"
  - Display in the order user_name.name followed by experience.company_name

8. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - experience
  - where role.name='Alumni' and experience.currentValue=1
  - Display in the order of user_new.name;

9. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - experience
  - where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008' 
  - Display in the order of user_new.name;

10. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
  - role
  - profile
  - where role.name='Alumni' and user_new.profile_id is not null 
  - Display in the order of user_new.name;

11. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
  - role
  - profile
  - where role.name='Alumni' and profile.batch='2008'
  - Display in the order of user_new.name;     

12. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
  - role
  - profile
  - degree
  - where role.name='Alumni' and degree.name='BSC_CT'
  - Display in the order of user_new.name;  

13. Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
  - role
  - profile
  - degree
  - department
  - where role.name='Alumni' and department.name='CSE'
  - Display in the order of user_new.name;  
                     
14. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - higher_degree
  - department
  - where role.name='Alumni' and higher_degree.degree_name is not null
  - Display in the order of user_new.name,higher_degree.university_name 

15. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
  - role
  - profile
  - higher_degree
  - department
  - where role.name='Alumni' and higher_degree.degree_name is not null
  - Display in the order of user_new.name,higher_degree.university_name 

16. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
  - role
  - profile
  - degree
  - department
  - higher_degree
  - where role.name='Alumni' and higher_degree.university_name='Texas University'
  - Display in the order of user_new.name;

17. Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables  
  - role
  - profile
  - where role.name='Alumni' and profile.gender='female'
  - Display in the order of user_new.name;

18. Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables  
  - role
  - profile
  - degree
  - where role.name='Alumni' and profile.gender='female'
  - Display in the order of user_new.name;

19. Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where there are matching ids in the tables 
  - role
  - profile
  - degree
  - department
  - where role.name='Alumni' and profile.gender='female'
  - Display in the order of user_new.name;

19. Write a query to return all degree.name, department.name from degree where there are matching ids in the tables 
  - department
  - Display in the order of degree.name;

20. Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables 
  - role
  - profile
  - where role.name='Alumni' and profile.gender='male'
  - Display in the order of user_new.name;                                     

21. Write a query to return all  user_new.name, profile.designation from user_new where there are matching ids in the tables 
  - role
  - profile
  - experience
  - where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
  - Display in the order of user_new.name; 

22. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
  - querytable
  - Display in the order of user_new.name;

23. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
  - querytable
  - where parent_id is not null
  - Display in the order of user_new.name;

24. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
  - post
  - Display in the order of user_new.name;
                     
25. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
  - post
  - where post_type.name='Technology'
  - Display in the order of user_new.name,post.dateof;                                       

26. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
  - post
  - where post.dateof='2013'
  - Display in the order of user_new.name, post.dateof, post.content;      

27. Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables 
  - role
  - profile
  - degree
  - department
  - profile_skills
  - skill
  - where skill.name='Programming'
  - Display in the order of user_new.name;                         

28. Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables 
  - event
  - where role.name='Alumni'
  - Display in the order of user_new.name,event.dateof
  - Display event in descending order.

29. Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables 
  - event
  - role
  - where role.name='Alumni'
  - Display in the order of user_new.name,event.dateof

Happy Coding ❤️
