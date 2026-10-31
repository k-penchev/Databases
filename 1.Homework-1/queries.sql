-- Question 1: Return the latest 20 messages in General (channel 0), newest first,
-- showing the sent time, sender name, and message text.
SELECT sent_on, users.name, content
FROM messages
JOIN users ON messages.user_id = users.id
WHERE channel_id = 0
ORDER BY sent_on DESC
LIMIT 20;

-- Question 2: Return each user and their message count, including users with zero messages.
-- LEFT JOIN keeps every user; COUNT(messages.id) ignores missing message IDs.
SELECT users.name, COUNT(messages.id) AS message_count
FROM users
LEFT JOIN messages ON users.id = messages.user_id
GROUP BY users.id, users.name
ORDER BY users.id;
