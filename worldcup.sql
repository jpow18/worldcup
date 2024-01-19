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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (203, 2018, 'Final', 4, 2, 382, 383);
INSERT INTO public.games VALUES (204, 2018, 'Third Place', 2, 0, 384, 385);
INSERT INTO public.games VALUES (205, 2018, 'Semi-Final', 2, 1, 383, 385);
INSERT INTO public.games VALUES (206, 2018, 'Semi-Final', 1, 0, 382, 384);
INSERT INTO public.games VALUES (207, 2018, 'Quarter-Final', 3, 2, 383, 386);
INSERT INTO public.games VALUES (208, 2018, 'Quarter-Final', 2, 0, 385, 387);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 2, 1, 384, 388);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 2, 0, 382, 389);
INSERT INTO public.games VALUES (211, 2018, 'Eighth-Final', 2, 1, 385, 390);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 1, 0, 387, 391);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 3, 2, 384, 392);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 2, 0, 388, 393);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 2, 1, 383, 394);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 2, 1, 386, 395);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 2, 1, 389, 396);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 4, 3, 382, 397);
INSERT INTO public.games VALUES (219, 2014, 'Final', 1, 0, 398, 397);
INSERT INTO public.games VALUES (220, 2014, 'Third Place', 3, 0, 399, 388);
INSERT INTO public.games VALUES (221, 2014, 'Semi-Final', 1, 0, 397, 399);
INSERT INTO public.games VALUES (222, 2014, 'Semi-Final', 7, 1, 398, 388);
INSERT INTO public.games VALUES (223, 2014, 'Quarter-Final', 1, 0, 399, 400);
INSERT INTO public.games VALUES (224, 2014, 'Quarter-Final', 1, 0, 397, 384);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 2, 1, 388, 390);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 1, 0, 398, 382);
INSERT INTO public.games VALUES (227, 2014, 'Eighth-Final', 2, 1, 388, 401);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 2, 0, 390, 389);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 2, 0, 382, 402);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 2, 1, 398, 403);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 2, 1, 399, 393);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 2, 1, 400, 404);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 1, 0, 397, 391);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 2, 1, 384, 405);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (382, 'France');
INSERT INTO public.teams VALUES (383, 'Croatia');
INSERT INTO public.teams VALUES (384, 'Belgium');
INSERT INTO public.teams VALUES (385, 'England');
INSERT INTO public.teams VALUES (386, 'Russia');
INSERT INTO public.teams VALUES (387, 'Sweden');
INSERT INTO public.teams VALUES (388, 'Brazil');
INSERT INTO public.teams VALUES (389, 'Uruguay');
INSERT INTO public.teams VALUES (390, 'Colombia');
INSERT INTO public.teams VALUES (391, 'Switzerland');
INSERT INTO public.teams VALUES (392, 'Japan');
INSERT INTO public.teams VALUES (393, 'Mexico');
INSERT INTO public.teams VALUES (394, 'Denmark');
INSERT INTO public.teams VALUES (395, 'Spain');
INSERT INTO public.teams VALUES (396, 'Portugal');
INSERT INTO public.teams VALUES (397, 'Argentina');
INSERT INTO public.teams VALUES (398, 'Germany');
INSERT INTO public.teams VALUES (399, 'Netherlands');
INSERT INTO public.teams VALUES (400, 'Costa Rica');
INSERT INTO public.teams VALUES (401, 'Chile');
INSERT INTO public.teams VALUES (402, 'Nigeria');
INSERT INTO public.teams VALUES (403, 'Algeria');
INSERT INTO public.teams VALUES (404, 'Greece');
INSERT INTO public.teams VALUES (405, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 234, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 405, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

