DROP TABLE IF EXISTS icecream_inventory;
DROP TABLE IF EXISTS cones_inventory;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS timesheets;

CREATE TABLE icecream_inventory(
    id SERIAL PRIMARY KEY,
    flavor VARCHAR(50),
    dairy_free BOOLEAN,
    price decimal(8,2),
    quantity INTEGER
);

CREATE TABLE cones_inventory(
    id SERIAL PRIMARY KEY,
    types VARCHAR(20),
    price decimal(8,2),
    quantity INTEGER
    
);

CREATE TABLE sales(
    id SERIAL PRIMARY KEY,
    cone_id INTEGER,
    icecream_id INTEGER,
    price decimal(4,2),
    quantity INTEGER
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(75),
    position VARCHAR(50),
    pay_rate_per_hour decimal(8,2)
);

CREATE TABLE timesheets(
    id SERIAL PRIMARY KEY,
    employee_id INTEGER,
    time_clocked_in TIMESTAMP WITH TIME ZONE,
    time_clocked_out TIMESTAMP WITH TIME ZONE

);


\COPY icecream_inventory FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/32-flavors-1-SQL/data/icecream_inventory.csv' WITH CSV HEADER;

\COPY cones_inventory FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/32-flavors-1-SQL/data/cones_inventory.csv' WITH CSV HEADER;

\COPY sales FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/32-flavors-1-SQL/data/sales.csv' WITH CSV HEADER;

\COPY employees FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/32-flavors-1-SQL/data/employees.csv' WITH CSV HEADER;

\COPY timesheets FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/32-flavors-1-SQL/data/timesheets.csv' WITH CSV HEADER;
