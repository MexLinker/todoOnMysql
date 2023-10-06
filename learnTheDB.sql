AA

-- creat 
create database MaxDatabase;
use MaxDatabase;
create table todo(id varchar(50) primary key,content text,insertTime datetime,doneTime datetime,ifDone int,ifToday int,listID text, groupID text);

-- insert trial
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'tryLonger',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),0,0,'first list','first group');
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'so finally i created a todo list based on mysql, but the main reason why i want to use mysql is to creat a search engin that will power more useful tools',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),0,0,'first list','first group');
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'mySQL',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),0,0,'first list','first group');
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'this is todays todo',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),0,1,'first list','first group');
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'this is done todo',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),1,0,'first list','first group');
insert into todo (id,content,insertTime,doneTime,ifDone,ifToday,listID,groupID) values (UUID(),'to set this todo done',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),0,0,'first list','first group');


-- select today = 1 for the today, when add ifToday is one ,every 12:00 change the if tody to 0
select content from todo where ifToday=1;

-- finish the task, set the finish time,
            -- update student set age=20,gender='female' where name='tom';
update todo set ifDone=1,doneTime=CURRENT_TIMESTAMP() where content='to set this todo done';




-- NOT USE: ============

drop table todo;

SELECT * FROM MaxDatabase.todo;

-- 请注意，TEXT数据不存储在数据库服务器的内存中，因此，每当查询TEXT数据时，MySQL都必须从磁盘读取它，这与CHAR和VARCHAR相比要慢得多。

-- 在MySQL通过UPDATE语句更新数据表中的数据


-- datetime_column` DATETIME NULL DEFAULT NULL,
