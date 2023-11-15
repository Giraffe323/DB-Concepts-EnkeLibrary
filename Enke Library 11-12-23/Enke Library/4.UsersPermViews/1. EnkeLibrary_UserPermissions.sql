use enkelibrary;
-- User Permissions
-- ALL only includes end-user data manipulation

-- These are typical privileges for OWNERS or DBAs:
GRANT ALL ON enkelibrary.* TO Mike;  -- ALL = Select, Update, Delete, Add
GRANT CREATE, INSERT, DROP, ALTER, REFERENCES ON enkelibrary.* TO Mike;

GRANT ALL ON enkelibrary.* TO Will;  -- ALL = Select, Add, Update, Delete
GRANT CREATE, INSERT, DROP, ALTER, REFERENCES ON enkelibrary.* TO Will;

GRANT ALL ON enkelibrary.* TO Xavier;  -- ALL = Select, Add, Update, Delete
GRANT CREATE, INSERT, DROP, ALTER, REFERENCES ON enkelibrary.* TO Xavier;

-- More specific table-level privileges for our other two users:
GRANT SELECT ON enkelibrary.* TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.patron TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.employee TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.branch TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.publisher TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.book TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.inventory TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.genre TO BillyBob;

-- Allow manager to create and modify book checkins and outs
GRANT UPDATE, DELETE, INSERT ON enkelibrary.checkinout_detail TO BillyBob;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.checkinout_header TO BillyBob;

-- Allow employee access to checkinout and book
GRANT SELECT ON enkelibrary.checkinout_detail TO Gub;
GRANT SELECT ON enkelibrary.checkinout_header TO Gub;
GRANT SELECT ON enkelibrary.book TO Gub;
GRANT SELECT ON enkelibrary.genre TO Gub;


-- Allow employees to create and modify book checkins and outs
GRANT UPDATE, DELETE, INSERT ON enkelibrary.checkinout_detail TO Gub;
GRANT UPDATE, DELETE, INSERT ON enkelibrary.checkinout_header TO Gub;



