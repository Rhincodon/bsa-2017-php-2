SELECT users.*
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
LEFT JOIN tickets ON bookings.ticket_id = tickets.id
GROUP BY users.id
HAVING SUM(IF(tickets.country = 'Aruba', 1, 0)) < 1