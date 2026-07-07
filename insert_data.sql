insert into event(e_id,e_type,e_date,user_id) values (01,'Marriage','22 Oct 2022',111);
insert into event(e_id,e_type,e_date,user_id) values (02,'conferences','24 Oct 2023',222);
insert into event(e_id,e_type,e_date,user_id) values (03,'Festivals','26 Oct 2023',333);
insert into event(e_id,e_type,e_date,user_id) values (04,'Networking ','28 Oct 2023',444);


insert into users(user_id,user_mob,user_name,user_email) values (111,01789564356,'Rifat','rifat@gmail.com');
insert into users(user_id,user_mob,user_name,user_email) values (222,01789564357,'abir','abir@gmail.com');
insert into users(user_id,user_mob,user_name,user_email) values (333,01789564358,'eram','eram@gmail.com');
insert into users(user_id,user_mob,user_name,user_email) values (444,01789564359,'azim','azim@gmail.com');


insert into venue(v_id,v_name,e_id) values (1,'Dhanmondi',01);
insert into venue(v_id,v_name,e_id) values (2,'Mirpur', 02);
insert into venue(v_id,v_name,e_id) values (3,'Kuril', 03);
insert into venue(v_id,v_name,e_id) values (4,'Badda', 04);


insert into decoration (d_id,d_cost,e_id) values (1,10000,01);
insert into decoration (d_id,d_cost,e_id) values (2,12000,02);
insert into decoration (d_id,d_cost,e_id) values (3,8000,03);
insert into decoration (d_id,d_cost,e_id) values (4,9000,04);



insert into programme (p_id,p_time,p_date,e_id) values (1,'10am','22 Oct 2022',01);
insert into programme (p_id,p_time,p_date,e_id) values (2,'8am','24 Oct 2023',02);
insert into programme (p_id,p_time,p_date,e_id) values (3,'9am','26 Oct 2023',03);
insert into programme (p_id,p_time,p_date,e_id) values (4,'11am','28 Oct 2023',04);


insert into catering (c_id, c_menu, c_cost,e_id) values (1,'dessert',500,01);
insert into catering (c_id, c_menu, c_cost,e_id) values (2,'drinks',300,02);
insert into catering (c_id, c_menu, c_cost,e_id) values (3,'starter',600,03);
insert into catering (c_id, c_menu, c_cost,e_id) values (4,'salad',800,04);