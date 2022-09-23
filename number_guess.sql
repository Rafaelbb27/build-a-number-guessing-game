--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 11, 1);
INSERT INTO public.games VALUES (3, 11, 1);
INSERT INTO public.games VALUES (4, 12, 1);
INSERT INTO public.games VALUES (5, 12, 1);
INSERT INTO public.games VALUES (6, 11, 3);
INSERT INTO public.games VALUES (7, 11, 2);
INSERT INTO public.games VALUES (8, 11, 1);
INSERT INTO public.games VALUES (9, 13, 1);
INSERT INTO public.games VALUES (10, 13, 1);
INSERT INTO public.games VALUES (11, 14, 1);
INSERT INTO public.games VALUES (12, 14, 1);
INSERT INTO public.games VALUES (13, 13, 3);
INSERT INTO public.games VALUES (14, 13, 2);
INSERT INTO public.games VALUES (15, 13, 1);
INSERT INTO public.games VALUES (16, 15, 1);
INSERT INTO public.games VALUES (17, 15, 1);
INSERT INTO public.games VALUES (18, 16, 1);
INSERT INTO public.games VALUES (19, 16, 1);
INSERT INTO public.games VALUES (20, 15, 3);
INSERT INTO public.games VALUES (21, 15, 2);
INSERT INTO public.games VALUES (22, 15, 1);
INSERT INTO public.games VALUES (23, 10, 3);
INSERT INTO public.games VALUES (24, 17, 1);
INSERT INTO public.games VALUES (25, 17, 1);
INSERT INTO public.games VALUES (26, 18, 1);
INSERT INTO public.games VALUES (27, 18, 1);
INSERT INTO public.games VALUES (28, 17, 3);
INSERT INTO public.games VALUES (29, 17, 2);
INSERT INTO public.games VALUES (30, 17, 1);
INSERT INTO public.games VALUES (31, 19, 1);
INSERT INTO public.games VALUES (32, 19, 1);
INSERT INTO public.games VALUES (33, 20, 1);
INSERT INTO public.games VALUES (34, 20, 1);
INSERT INTO public.games VALUES (35, 19, 3);
INSERT INTO public.games VALUES (36, 19, 2);
INSERT INTO public.games VALUES (37, 19, 1);
INSERT INTO public.games VALUES (38, 21, 5);
INSERT INTO public.games VALUES (39, 22, 1);
INSERT INTO public.games VALUES (40, 22, 1);
INSERT INTO public.games VALUES (41, 23, 1);
INSERT INTO public.games VALUES (42, 23, 1);
INSERT INTO public.games VALUES (43, 22, 3);
INSERT INTO public.games VALUES (44, 22, 2);
INSERT INTO public.games VALUES (45, 22, 1);
INSERT INTO public.games VALUES (46, 24, 1);
INSERT INTO public.games VALUES (47, 24, 1);
INSERT INTO public.games VALUES (48, 25, 1);
INSERT INTO public.games VALUES (49, 25, 1);
INSERT INTO public.games VALUES (50, 24, 3);
INSERT INTO public.games VALUES (51, 24, 2);
INSERT INTO public.games VALUES (52, 24, 1);
INSERT INTO public.games VALUES (53, 26, 2);
INSERT INTO public.games VALUES (54, 27, 2);
INSERT INTO public.games VALUES (55, 28, 2);
INSERT INTO public.games VALUES (56, 29, 2);
INSERT INTO public.games VALUES (57, 10, 9);
INSERT INTO public.games VALUES (58, 10, 10);
INSERT INTO public.games VALUES (59, 10, 2);
INSERT INTO public.games VALUES (60, 10, 12);
INSERT INTO public.games VALUES (61, 30, 591);
INSERT INTO public.games VALUES (62, 30, 289);
INSERT INTO public.games VALUES (63, 31, 680);
INSERT INTO public.games VALUES (64, 31, 932);
INSERT INTO public.games VALUES (65, 30, 520);
INSERT INTO public.games VALUES (66, 30, 118);
INSERT INTO public.games VALUES (67, 30, 299);
INSERT INTO public.games VALUES (68, 10, 10);
INSERT INTO public.games VALUES (69, 32, 815);
INSERT INTO public.games VALUES (70, 32, 463);
INSERT INTO public.games VALUES (71, 33, 120);
INSERT INTO public.games VALUES (72, 33, 785);
INSERT INTO public.games VALUES (73, 32, 550);
INSERT INTO public.games VALUES (74, 32, 697);
INSERT INTO public.games VALUES (75, 32, 463);
INSERT INTO public.games VALUES (76, 34, 226);
INSERT INTO public.games VALUES (77, 34, 707);
INSERT INTO public.games VALUES (78, 35, 130);
INSERT INTO public.games VALUES (79, 35, 396);
INSERT INTO public.games VALUES (80, 34, 739);
INSERT INTO public.games VALUES (81, 34, 368);
INSERT INTO public.games VALUES (82, 34, 97);
INSERT INTO public.games VALUES (83, 36, 391);
INSERT INTO public.games VALUES (84, 36, 526);
INSERT INTO public.games VALUES (85, 37, 793);
INSERT INTO public.games VALUES (86, 37, 430);
INSERT INTO public.games VALUES (87, 36, 263);
INSERT INTO public.games VALUES (88, 36, 1002);
INSERT INTO public.games VALUES (89, 36, 896);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Mariana');
INSERT INTO public.users VALUES (2, 'user_1663961052343');
INSERT INTO public.users VALUES (3, 'user_1663961052342');
INSERT INTO public.users VALUES (4, 'user_1663961062606');
INSERT INTO public.users VALUES (5, 'user_1663961062605');
INSERT INTO public.users VALUES (6, 'user_1663961093640');
INSERT INTO public.users VALUES (7, 'user_1663961093639');
INSERT INTO public.users VALUES (8, 'user_1663961201920');
INSERT INTO public.users VALUES (9, 'user_1663961201919');
INSERT INTO public.users VALUES (10, 'Rafael');
INSERT INTO public.users VALUES (11, 'user_1663961342772');
INSERT INTO public.users VALUES (12, 'user_1663961342771');
INSERT INTO public.users VALUES (13, 'user_1663961499962');
INSERT INTO public.users VALUES (14, 'user_1663961499961');
INSERT INTO public.users VALUES (15, 'user_1663961560858');
INSERT INTO public.users VALUES (16, 'user_1663961560857');
INSERT INTO public.users VALUES (17, 'user_1663961744828');
INSERT INTO public.users VALUES (18, 'user_1663961744827');
INSERT INTO public.users VALUES (19, 'user_1663961811384');
INSERT INTO public.users VALUES (20, 'user_1663961811383');
INSERT INTO public.users VALUES (21, 'Diego');
INSERT INTO public.users VALUES (22, 'user_1663961916690');
INSERT INTO public.users VALUES (23, 'user_1663961916689');
INSERT INTO public.users VALUES (24, 'user_1663962291314');
INSERT INTO public.users VALUES (25, 'user_1663962291313');
INSERT INTO public.users VALUES (26, 'Otavio');
INSERT INTO public.users VALUES (27, 'Marieta');
INSERT INTO public.users VALUES (28, 'Tulio');
INSERT INTO public.users VALUES (29, 'Arrascaeta');
INSERT INTO public.users VALUES (30, 'user_1663964407880');
INSERT INTO public.users VALUES (31, 'user_1663964407879');
INSERT INTO public.users VALUES (32, 'user_1663964551891');
INSERT INTO public.users VALUES (33, 'user_1663964551890');
INSERT INTO public.users VALUES (34, 'user_1663964590367');
INSERT INTO public.users VALUES (35, 'user_1663964590366');
INSERT INTO public.users VALUES (36, 'user_1663964667672');
INSERT INTO public.users VALUES (37, 'user_1663964667671');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 37, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

