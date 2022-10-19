-- Select all tickets with price from order
SELECT
events.name as event_name,
events.description as event_desc,
events.date_unix as event_datetime,
tickets.barcode as barcode,
ticket_types.name as type,
ticket_types.price_koef * events.price as price
FROM tickets
INNER JOIN orders ON tickets.order_id = orders.id
INNER JOIN ticket_types ON tickets.type_id = ticket_types.id
INNER JOIN events on orders.event_id = events.id
WHERE orders.id = 1;