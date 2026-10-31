# Discord-style Chat

The database separates users, channels, and messages so that user and channel names are stored once rather than repeated in every message.
Every table has a manually assigned primary key, and each message has required foreign keys to an existing user and channel.
User and channel IDs use INTEGER, while message IDs use BIGINT to leave more room for a growing message history.
Message times use TIMESTAMPTZ to represent instants consistently across time zones, with the current time as the default.
Direct messages, message edits, and stored message counts are deliberately omitted; counts are calculated by the query, including zero for users without messages.
