CREATE TABLE electricity_charge (
    unit_consumed VARCHAR(10) NOT NULL PRIMARY KEY,
    charge NUMBER(10)
);

insert into electricity_charge values('1-100', 5);
insert into electricity_charge values('101-300', 7.5);
insert into electricity_charge values('301-500', 15);
insert into electricity_charge values('>501', 22.5);

create table electricity_user (
    user_id NUMBER(5) NOT NULL PRIMARY KEY,
    user_name VARCHAR(30),
    unit_consumed NUMBER(10)
);

insert into electricity_user values(1001, 'Alice',150);
insert into electricity_user values(1002, 'Bob', 550);
insert into electricity_user values(1003, 'Charlie', 75);
insert into electricity_user values(1004, 'David', 149);
insert into electricity_user values (1005, 'Eve', 342);
insert into electricity_user values (1006, 'Frank', 69);
insert into electricity_user values (1007, 'Grace', 769);
insert into electricity_user values (1008, 'Hannah', 88);
insert into electricity_user values (1009, 'Ivy', 232);
insert into electricity_user values (1010, 'Jack', 499); 