--
-- PostgreSQL database dump
--

\restrict MJ1oeEgnqwP2JeBUuaYKr2jD1PF3kWowEIoKMuz4K0E7t2y03V8dcIRyTWqbpxH

-- Dumped from database version 16.15 (Debian 16.15-1.pgdg13+2)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: channels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.channels (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Name: messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    channel_id integer NOT NULL,
    content text NOT NULL,
    sent_on timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.channels (id, name) FROM stdin;
0	General
1	Research
2	Support
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.messages (id, user_id, channel_id, content, sent_on) FROM stdin;
0	0	0	Hi everyone!	2026-10-31 08:00:00+00
1	1	0	Hello Ivan!	2026-10-31 08:01:00+00
2	2	0	Good morning!	2026-10-31 08:02:00+00
3	0	0	What are we studying today?	2026-10-31 08:03:00+00
4	1	0	We are practicing PostgreSQL.	2026-10-31 08:04:00+00
5	2	0	I created my first table.	2026-10-31 08:05:00+00
6	0	0	Did you add a primary key?	2026-10-31 08:06:00+00
7	1	0	Yes, each row has an ID.	2026-10-31 08:07:00+00
8	2	0	My database is running in Docker.	2026-10-31 08:08:00+00
9	0	0	I use VS Code for SQL files.	2026-10-31 08:09:00+00
10	1	0	How do you run a SQL file?	2026-10-31 08:10:00+00
11	2	0	I run it with psql.	2026-10-31 08:11:00+00
12	0	0	Remember to save the file first.	2026-10-31 08:12:00+00
13	1	0	I forgot a semicolon earlier.	2026-10-31 08:13:00+00
14	2	0	The error message helped me find it.	2026-10-31 08:14:00+00
15	0	0	Foreign keys connect our tables.	2026-10-31 08:15:00+00
16	1	0	Can a user have no messages?	2026-10-31 08:16:00+00
17	2	0	Yes, we need that test case.	2026-10-31 08:17:00+00
18	0	0	I am adding sample messages now.	2026-10-31 08:18:00+00
19	1	0	Give them different timestamps.	2026-10-31 08:19:00+00
20	2	0	That will help us test sorting.	2026-10-31 08:20:00+00
21	0	0	We need more than twenty messages here.	2026-10-31 08:21:00+00
22	1	0	This channel is getting busy.	2026-10-31 08:22:00+00
23	2	0	The older messages should be outside the latest twenty.	2026-10-31 08:23:00+00
24	0	0	That is enough data for General.	2026-10-31 08:24:00+00
25	0	1	I found the PostgreSQL documentation.	2026-10-31 08:25:00+00
26	2	1	Which section explains joins?	2026-10-31 08:26:00+00
27	1	1	Look in the SQL tutorial.	2026-10-31 08:27:00+00
28	2	1	Thanks, I will read it.	2026-10-31 08:28:00+00
29	1	2	My query reports a syntax error.	2026-10-31 08:29:00+00
30	0	2	Check the quotes around text values.	2026-10-31 08:30:00+00
31	1	2	Single quotes fixed it. Thanks!	2026-10-31 08:31:00+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name) FROM stdin;
0	Ivan
1	Kaloyan
2	Petar
3	Teodor
\.


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: messages messages_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.channels(id);


--
-- Name: messages messages_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict MJ1oeEgnqwP2JeBUuaYKr2jD1PF3kWowEIoKMuz4K0E7t2y03V8dcIRyTWqbpxH

