# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id int,
    names varchar(255) NOT NULL,
    descriptions varchar(255) NOT NULL,
    tag varchar(255) NOT NULL,
    urls varchar(255),
    time_commitment varchar(255),
    PRIMARY KEY (id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

insert into skills (id,names,descriptions,tag,urls,time_commitment) values (1,'fast writing','employee writes a full page in 30 seconds','Skill 1',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (2,'photographic memory','can remember anything given to them','Skill 2',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (3,'quick thinker','can come up with a solution no matter the stress put uopn them','Skill 3',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (4,'programmer','able to code anything requiring java, python, javascript, etc','Skill 4',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (5,'team player','able to work well with any team given','Skill 5',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (6,'adaptable','Able to learn and improve any skills or tasks','Skill 6',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (7,'independent','can handle any problem given by themsekves','Skill 7',NULL,NULL);
insert into skills (id,names,descriptions,tag,urls,time_commitment) values (8,'leadership','able to lead groups and projects for the company','Skill 8',NULL,NULL);


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id int,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(4096),
    date_joined date NOT NULL,
    PRIMARY KEY (id)
);

# Section 5
# Populate people with ten people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (1,'Joe','Person 1','hot@vcu.edu',NULL,NULL,NULL,NULL,'2000-04-20');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (2,'James','Person 2','jim@vcu.edu',NULL,NULL,NULL,NULL,'2003-10-04');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (3,'Paul','Person 3','feet@vcu.edu',NULL,NULL,NULL,NULL,'2003-11-13');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (4,'Tanvir','Person 4','love@vcu.edu',NULL,NULL,NULL,NULL,'2005-05-30');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (5,'Tommy','Person 5','fight@vcu.edu',NULL,NULL,NULL,NULL,'2006-09-10');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (6,'Janet','Person 6','mang@vcu.edu',NULL,NULL,NULL,NULL,'2006-12-17');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (7,'Emma','Person 7','lax@vcu.edu',NULL,NULL,NULL,NULL,'2007-01-17');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (8,'Gavin','Person 8','frat@vcu.edu',NULL,NULL,NULL,NULL,'2007-01-28');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (9,'Rachel','Person 9','cs@vcu.edu',NULL,NULL,NULL,NULL,'2007-02-01');
insert into people (id,first_name,last_name,email,linkedin_url,headshot_url,discord_handle,brief_bio,date_joined) values (10,'Ethan','Person 10','death@vcu.edu',NULL,NULL,NULL,NULL,'2007-2-09');



# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id int NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

insert into peopleskills (id,skills_id,people_id,date_acquired) values (1,(1),1,'2010-11-11');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (2,(3),1,'2010-11-11');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (3,(6),1,'2010-11-11');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (4,(3),2,'2011-03-14');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (5,(4),2,'2011-03-14');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (6,(5),2,'2011-03-14');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (7,(1),3,'2011-07-01');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (8,(5),3,'2011-07-01');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (9,0,4,'2012-01-05');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (10,(3),5,'2012-05-17');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (11,(6),5,'2012-05-17');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (12,(2),6,'2012-10-24');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (13,(3),6,'2012-10-24');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (14,(4),6,'2012-10-24');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (15,(3),7,'2013-02-09');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (16,(5),7,'2013-02-09');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (17,(6),7,'2013-02-09');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (18,(1),8,'2013-06-16');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (19,(3),8,'2013-06-16');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (20,(5),8,'2013-06-16');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (21,(6),8,'2013-06-16');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (22,(2),9,'2013-12-21');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (23,(5),9,'2013-12-21');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (24,(6),9,'2013-12-21');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (25,(1),10,'2014-04-19');
insert into peopleskills (id,skills_id,people_id,date_acquired) values (26,(4),10,'2014-04-19');


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    id int,
    names varchar(255),
    sort_priority int,
    PRIMARY KEY (id)
);



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles (id,names,sort_priority) values (1,'Designer',10);
insert into roles (id,names,sort_priority) values (2,'Developer',20);
insert into roles (id,names,sort_priority) values (3,'Recruit',30);
insert into roles (id,names,sort_priority) values (4,'Team Lead',40);
insert into roles (id,names,sort_priority) values (5,'Boss',50);
insert into roles (id,names,sort_priority) values (6,'Mentor',60);



# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    id int NOT NULL,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date NOT NULL,
    PRIMARY KEY (id)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

Insert into peopleroles (id,people_id,role_id,date_assigned) values (1,1,20,'2010-03-15');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (2,2,(50),'2010-07-15');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (3,2,(60),'2010-07-15');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (4,3,(20),'2010-10-25');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (5,3,(40),'2010-10-25');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (6,4,30,'2011-01-03');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (7,5,30,'2011-04-04');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (8,6,(20),'2011-08-23');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (9,6,(10),'2011-08-23');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (10,7,10,'2011-11-11');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (11,8,(10),'2012-05-19');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (12,8,(40),'2012-05-19');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (13,9,20,'2012-05-24');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (14,10,(20),'2012-09-30');
Insert into peopleroles (id,people_id,role_id,date_assigned) values (15,10,(10),'2012-09-30');

