SELECT users.*, sum(tickets.price) AS total_price
FROM users
JOIN bookings ON users.id = bookings.user_id
JOIN tickets ON bookings.ticket_id = tickets.id
WHERE age > 25
GROUP BY users.id
HAVING sum(tickets.price) > 400