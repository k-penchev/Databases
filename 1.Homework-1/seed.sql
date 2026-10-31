INSERT INTO users (id, name)
VALUES
    (0, 'Ivan'),
    (1, 'Kaloyan'),
    (2, 'Petar'),
    (3, 'Teodor');

INSERT INTO channels (id, name)
VALUES
    (0, 'General'),
    (1, 'Research'),
    (2, 'Support');

INSERT INTO messages (id, user_id, channel_id, content, sent_on)
VALUES
    (0, 0, 0, 'Hi everyone!', '2026-10-31 10:00:00+02'),
    (1, 1, 0, 'Hello Ivan!', '2026-10-31 10:01:00+02'),
    (2, 2, 0, 'Good morning!', '2026-10-31 10:02:00+02'),
    (3, 0, 0, 'What are we studying today?', '2026-10-31 10:03:00+02'),
    (4, 1, 0, 'We are practicing PostgreSQL.', '2026-10-31 10:04:00+02'),
    (5, 2, 0, 'I created my first table.', '2026-10-31 10:05:00+02'),
    (6, 0, 0, 'Did you add a primary key?', '2026-10-31 10:06:00+02'),
    (7, 1, 0, 'Yes, each row has an ID.', '2026-10-31 10:07:00+02'),
    (8, 2, 0, 'My database is running in Docker.', '2026-10-31 10:08:00+02'),
    (9, 0, 0, 'I use VS Code for SQL files.', '2026-10-31 10:09:00+02'),
    (10, 1, 0, 'How do you run a SQL file?', '2026-10-31 10:10:00+02'),
    (11, 2, 0, 'I run it with psql.', '2026-10-31 10:11:00+02'),
    (12, 0, 0, 'Remember to save the file first.', '2026-10-31 10:12:00+02'),
    (13, 1, 0, 'I forgot a semicolon earlier.', '2026-10-31 10:13:00+02'),
    (14, 2, 0, 'The error message helped me find it.', '2026-10-31 10:14:00+02'),
    (15, 0, 0, 'Foreign keys connect our tables.', '2026-10-31 10:15:00+02'),
    (16, 1, 0, 'Can a user have no messages?', '2026-10-31 10:16:00+02'),
    (17, 2, 0, 'Yes, we need that test case.', '2026-10-31 10:17:00+02'),
    (18, 0, 0, 'I am adding sample messages now.', '2026-10-31 10:18:00+02'),
    (19, 1, 0, 'Give them different timestamps.', '2026-10-31 10:19:00+02'),
    (20, 2, 0, 'That will help us test sorting.', '2026-10-31 10:20:00+02'),
    (21, 0, 0, 'We need more than twenty messages here.', '2026-10-31 10:21:00+02'),
    (22, 1, 0, 'This channel is getting busy.', '2026-10-31 10:22:00+02'),
    (23, 2, 0, 'The older messages should be outside the latest twenty.', '2026-10-31 10:23:00+02'),
    (24, 0, 0, 'That is enough data for General.', '2026-10-31 10:24:00+02'),
    (25, 0, 1, 'I found the PostgreSQL documentation.', '2026-10-31 10:25:00+02'),
    (26, 2, 1, 'Which section explains joins?', '2026-10-31 10:26:00+02'),
    (27, 1, 1, 'Look in the SQL tutorial.', '2026-10-31 10:27:00+02'),
    (28, 2, 1, 'Thanks, I will read it.', '2026-10-31 10:28:00+02'),
    (29, 1, 2, 'My query reports a syntax error.', '2026-10-31 10:29:00+02'),
    (30, 0, 2, 'Check the quotes around text values.', '2026-10-31 10:30:00+02'),
    (31, 1, 2, 'Single quotes fixed it. Thanks!', '2026-10-31 10:31:00+02');
