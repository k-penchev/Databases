CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE channels (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE messages (
    id BIGINT PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    channel_id INTEGER NOT NULL REFERENCES channels(id),
    content TEXT NOT NULL,
    sent_on TIMESTAMPTZ NOT NULL DEFAULT now()
);