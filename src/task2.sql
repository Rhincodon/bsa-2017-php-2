SELECT users.*
FROM users
JOIN bookings ON users.id = bookings.user_id
JOIN tickets ON bookings.ticket_id = tickets.id
GROUP BY users.id