# worldcup-database
#A project from freecodecamp from database

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
    round character varying(500) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(500) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 637, 638, 3, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 639, 640, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 638, 640, 1, 3);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 637, 639, 2, 1);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 638, 643, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 640, 644, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 639, 645, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 637, 646, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 640, 647, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 644, 648, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 639, 649, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 645, 650, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 638, 651, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 643, 652, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 646, 653, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 637, 654, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 655, 654, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 657, 645, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 654, 657, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 655, 645, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 657, 661, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 654, 639, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 645, 647, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 655, 637, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 645, 665, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 647, 646, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 637, 667, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 655, 668, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 657, 650, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 661, 670, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 654, 648, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 639, 672, 2, 1);

--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (637, 'France');
INSERT INTO public.teams VALUES (638, 'Croatia');
INSERT INTO public.teams VALUES (639, 'Belgium');
INSERT INTO public.teams VALUES (640, 'England');
INSERT INTO public.teams VALUES (643, 'Russia');
INSERT INTO public.teams VALUES (644, 'Sweden');
INSERT INTO public.teams VALUES (645, 'Brazil');
INSERT INTO public.teams VALUES (646, 'Uruguay');
INSERT INTO public.teams VALUES (647, 'Colombia');
INSERT INTO public.teams VALUES (648, 'Switzerland');
INSERT INTO public.teams VALUES (649, 'Japan');
INSERT INTO public.teams VALUES (650, 'Mexico');
INSERT INTO public.teams VALUES (651, 'Denmark');
INSERT INTO public.teams VALUES (652, 'Spain');
INSERT INTO public.teams VALUES (653, 'Portugal');
INSERT INTO public.teams VALUES (654, 'Argentina');
INSERT INTO public.teams VALUES (655, 'Germany');
INSERT INTO public.teams VALUES (657, 'Netherlands');
INSERT INTO public.teams VALUES (661, 'Costa Rica');
