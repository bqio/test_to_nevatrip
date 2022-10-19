-- Make Database
BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS "events" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"description"	TEXT NOT NULL,
	"date_unix"	INTEGER NOT NULL,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "ticket_types" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"description"	TEXT NOT NULL,
	"price_koef"	REAL NOT NULL DEFAULT 1.0,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "orders" (
	"id"	INTEGER,
	"event_id"	INTEGER,
	FOREIGN KEY("event_id") REFERENCES "events"("id") ON DELETE CASCADE,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "tickets" (
	"type_id"	INTEGER,
	"order_id"	INTEGER,
	"barcode"	INTEGER,
	FOREIGN KEY("order_id") REFERENCES "orders"("id") ON DELETE NO ACTION,
	FOREIGN KEY("type_id") REFERENCES "ticket_types"("id") ON DELETE NO ACTION
);

-- Fake data
INSERT INTO "events" VALUES (1,'Football','Sport game',121212,700);
INSERT INTO "ticket_types" VALUES (1,'Adult','Adult ticket',1.0);
INSERT INTO "ticket_types" VALUES (2,'Child','Child ticket',0.8);
INSERT INTO "ticket_types" VALUES (3,'Preferential','Preferential ticket',0.6);
INSERT INTO "ticket_types" VALUES (4,'Group','Group ticket',0.5);
INSERT INTO "orders" VALUES (1,1);
INSERT INTO "tickets" VALUES (1,1,111111);
INSERT INTO "tickets" VALUES (1,1,222222);
INSERT INTO "tickets" VALUES (2,1,333333);
INSERT INTO "tickets" VALUES (3,1,444444);
COMMIT;
