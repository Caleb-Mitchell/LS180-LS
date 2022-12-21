--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: films; Type: TABLE; Schema: public; Owner: caleb
--

CREATE TABLE public.films (
    title character varying(255),
    year integer,
    genre character varying(100),
    director character varying(255),
    duration integer
);


ALTER TABLE public.films OWNER TO caleb;

--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: caleb
--

COPY public.films (title, year, genre, director, duration) FROM stdin;
Die Hard	1988	action	John McTiernan	132
Casablanca	1942	drama	Michael Curtiz	102
The Conversation	1974	thriller	Francis Ford Coppola	102
1984	1956	scifi	Michael Anderson	90
Tinker Tailor Soldier Spy	2011	espionage	Tomas Alfredson	127
The Birdcage	1996	comedy	Mike Nichols	118
\.


--
-- PostgreSQL database dump complete
--

