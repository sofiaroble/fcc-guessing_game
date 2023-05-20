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

INSERT INTO public.games VALUES (1, 1, 861);
INSERT INTO public.games VALUES (2, 1, 650);
INSERT INTO public.games VALUES (3, 2, 336);
INSERT INTO public.games VALUES (4, 2, 197);
INSERT INTO public.games VALUES (5, 1, 391);
INSERT INTO public.games VALUES (6, 1, 176);
INSERT INTO public.games VALUES (7, 1, 281);
INSERT INTO public.games VALUES (8, 3, 833);
INSERT INTO public.games VALUES (9, 3, 40);
INSERT INTO public.games VALUES (10, 4, 381);
INSERT INTO public.games VALUES (11, 4, 582);
INSERT INTO public.games VALUES (12, 3, 820);
INSERT INTO public.games VALUES (13, 3, 864);
INSERT INTO public.games VALUES (14, 3, 473);
INSERT INTO public.games VALUES (15, 5, 10);
INSERT INTO public.games VALUES (16, 6, 1);
INSERT INTO public.games VALUES (17, 6, 311);
INSERT INTO public.games VALUES (18, 7, 605);
INSERT INTO public.games VALUES (19, 7, 269);
INSERT INTO public.games VALUES (20, 6, 96);
INSERT INTO public.games VALUES (21, 6, 257);
INSERT INTO public.games VALUES (22, 6, 410);
INSERT INTO public.games VALUES (23, 8, 980);
INSERT INTO public.games VALUES (24, 8, 899);
INSERT INTO public.games VALUES (25, 9, 1);
INSERT INTO public.games VALUES (26, 9, 214);
INSERT INTO public.games VALUES (27, 8, 679);
INSERT INTO public.games VALUES (28, 8, 508);
INSERT INTO public.games VALUES (29, 8, 231);
INSERT INTO public.games VALUES (30, 10, 435);
INSERT INTO public.games VALUES (31, 10, 872);
INSERT INTO public.games VALUES (32, 11, 1);
INSERT INTO public.games VALUES (33, 11, 715);
INSERT INTO public.games VALUES (34, 10, 731);
INSERT INTO public.games VALUES (35, 10, 316);
INSERT INTO public.games VALUES (36, 10, 748);
INSERT INTO public.games VALUES (37, 12, 1);
INSERT INTO public.games VALUES (38, 12, 216);
INSERT INTO public.games VALUES (39, 13, 750);
INSERT INTO public.games VALUES (40, 13, 135);
INSERT INTO public.games VALUES (41, 12, 780);
INSERT INTO public.games VALUES (42, 12, 775);
INSERT INTO public.games VALUES (43, 12, 210);
INSERT INTO public.games VALUES (44, 14, 1);
INSERT INTO public.games VALUES (45, 14, 251);
INSERT INTO public.games VALUES (46, 15, 1);
INSERT INTO public.games VALUES (47, 15, 602);
INSERT INTO public.games VALUES (48, 14, 860);
INSERT INTO public.games VALUES (49, 14, 420);
INSERT INTO public.games VALUES (50, 14, 312);
INSERT INTO public.games VALUES (51, 16, 529);
INSERT INTO public.games VALUES (52, 16, 911);
INSERT INTO public.games VALUES (53, 17, 755);
INSERT INTO public.games VALUES (54, 17, 725);
INSERT INTO public.games VALUES (55, 16, 409);
INSERT INTO public.games VALUES (56, 16, 421);
INSERT INTO public.games VALUES (57, 16, 934);
INSERT INTO public.games VALUES (58, 18, 84);
INSERT INTO public.games VALUES (59, 18, 128);
INSERT INTO public.games VALUES (60, 19, 888);
INSERT INTO public.games VALUES (61, 19, 869);
INSERT INTO public.games VALUES (62, 18, 111);
INSERT INTO public.games VALUES (63, 18, 673);
INSERT INTO public.games VALUES (64, 18, 57);
INSERT INTO public.games VALUES (65, 20, 180);
INSERT INTO public.games VALUES (66, 20, 551);
INSERT INTO public.games VALUES (67, 21, 1);
INSERT INTO public.games VALUES (68, 21, 892);
INSERT INTO public.games VALUES (69, 20, 995);
INSERT INTO public.games VALUES (70, 20, 601);
INSERT INTO public.games VALUES (71, 20, 477);
INSERT INTO public.games VALUES (72, 23, 1);
INSERT INTO public.games VALUES (73, 23, 144);
INSERT INTO public.games VALUES (74, 24, 1);
INSERT INTO public.games VALUES (75, 24, 148);
INSERT INTO public.games VALUES (76, 23, 5);
INSERT INTO public.games VALUES (77, 23, 785);
INSERT INTO public.games VALUES (78, 23, 514);
INSERT INTO public.games VALUES (79, 22, 3);
INSERT INTO public.games VALUES (80, 25, 997);
INSERT INTO public.games VALUES (81, 25, 884);
INSERT INTO public.games VALUES (82, 26, 979);
INSERT INTO public.games VALUES (83, 26, 462);
INSERT INTO public.games VALUES (84, 25, 720);
INSERT INTO public.games VALUES (85, 25, 211);
INSERT INTO public.games VALUES (86, 25, 187);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1684548782662');
INSERT INTO public.users VALUES (2, 'user_1684548782661');
INSERT INTO public.users VALUES (3, 'user_1684548906365');
INSERT INTO public.users VALUES (4, 'user_1684548906364');
INSERT INTO public.users VALUES (5, 'Sofia');
INSERT INTO public.users VALUES (6, 'user_1684549136829');
INSERT INTO public.users VALUES (7, 'user_1684549136828');
INSERT INTO public.users VALUES (8, 'user_1684550368998');
INSERT INTO public.users VALUES (9, 'user_1684550368997');
INSERT INTO public.users VALUES (10, 'user_1684551969461');
INSERT INTO public.users VALUES (11, 'user_1684551969460');
INSERT INTO public.users VALUES (12, 'user_1684552629273');
INSERT INTO public.users VALUES (13, 'user_1684552629272');
INSERT INTO public.users VALUES (14, 'user_1684552858580');
INSERT INTO public.users VALUES (15, 'user_1684552858579');
INSERT INTO public.users VALUES (16, 'user_1684553046349');
INSERT INTO public.users VALUES (17, 'user_1684553046348');
INSERT INTO public.users VALUES (18, 'user_1684553178891');
INSERT INTO public.users VALUES (19, 'user_1684553178890');
INSERT INTO public.users VALUES (20, 'user_1684553253130');
INSERT INTO public.users VALUES (21, 'user_1684553253129');
INSERT INTO public.users VALUES (22, 'Me');
INSERT INTO public.users VALUES (23, 'user_1684553290858');
INSERT INTO public.users VALUES (24, 'user_1684553290857');
INSERT INTO public.users VALUES (25, 'user_1684553348867');
INSERT INTO public.users VALUES (26, 'user_1684553348866');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 86, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


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

