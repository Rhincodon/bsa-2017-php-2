UPDATE users
SET users.is_deleted = TRUE
WHERE id NOT IN (SELECT user_id FROM bookings)