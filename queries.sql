# SQL Queries

SELECT e_id, e_type, e_date
FROM event;

SELECT e_id, e_type, e_date,
       (SELECT user_name FROM users WHERE user_id = event.user_id) AS user_name
FROM event;

SELECT e_id, e_type, e_date,
       (SELECT SUM(d_cost) FROM decoration WHERE e_id = event.e_id) AS total_decoration_cost
FROM event;

SELECT user_id, user_name,
       (SELECT e_id FROM event WHERE user_id = users.user_id) AS event_id
FROM users;

SELECT e_id, e_type, e_date,
       (SELECT c_menu FROM catering WHERE e_id = event.e_id) AS catering_menu
FROM event;

SELECT event.e_id, event.e_type, event.e_date, users.user_name
FROM event
INNER JOIN users ON event.user_id = users.user_id;

SELECT event.e_id, event.e_type, event.e_date, venue.v_name
FROM event
LEFT JOIN venue ON event.e_id = venue.e_id;

SELECT event.e_id, event.e_type, event.e_date, decoration.d_cost
FROM event
RIGHT JOIN decoration ON event.e_id = decoration.e_id;

SELECT event.e_id, event.e_type, event.e_date, programme.p_time
FROM event
FULL OUTER JOIN programme ON event.e_id = programme.e_id;

CREATE VIEW event_user_view AS
SELECT event.e_id, event.e_type, event.e_date, users.user_name
FROM event
INNER JOIN users ON event.user_id = users.user_id;

SELECT * FROM event_user_view;

CREATE VIEW event_decoration_cost_view AS
SELECT e_id, e_type, e_date,
       (SELECT SUM(d_cost) FROM decoration WHERE e_id = event.e_id) AS total_decoration_cost
FROM event;

SELECT * FROM event_decoration_cost_view;