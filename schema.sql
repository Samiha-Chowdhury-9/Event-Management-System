create table event (
e_id number(10) not null,
e_type varchar(50) not null,
e_date varchar(50) not null,
user_id number(10) not null,
primary key (e_id)
);


create table users (
user_id number(10) not null,
user_mob number(11) not null,
user_name varchar(50) not null,
user_email varchar(50) not null,
primary key (user_id)
);
alter table event add constraint fk_user_id Foreign Key (user_id)
references users(user_id);


create table venue (
v_id number(10) not null,
v_name varchar(50) not null,
e_id number(10),
primary key (v_id),
FOREIGN KEY (e_id) REFERENCES event(e_id)
);


create table decoration (
d_id number(10) not null,
d_cost number(10) not null,
e_id number(10),
primary key (d_id),
foreign key (e_id) references event(e_id)
);


create table programme (
p_id number(10) not null,
p_time varchar(50) not null,
p_date varchar(50) not null,
e_id number(10),
primary key (p_id),
foreign key (e_id) references event(e_id)
);


create table catering (
c_id number(10) not null,
c_menu varchar(50) not null,
c_cost number(10) not null,
e_id number(10),
primary key (c_id),
foreign key (e_id) references event(e_id)
);
