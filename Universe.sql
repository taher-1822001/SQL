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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    id integer NOT NULL,
    black_hole_id integer NOT NULL,
    name character varying(60),
    size integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_id_seq OWNED BY public.black_hole.id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(60),
    galaxy_size integer,
    stars_in_million numeric(2,1),
    description text,
    black_holes boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(60),
    size integer,
    distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(60),
    planet_size_in_km integer,
    life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(60),
    star_size integer,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


--
-- Name: black_hole id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN id SET DEFAULT nextval('public.black_hole_id_seq'::regclass);


--
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 'fgfg', 34);
INSERT INTO public.black_hole VALUES (2, 2, 'fgfg', 34);
INSERT INTO public.black_hole VALUES (3, 3, 'fgfg', 34);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'MilkyWay', 5, 0.1, 'its called spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 2, 'Andromeda', 7, 2.1, 'Few visible to the un layed eye', true);
INSERT INTO public.galaxy VALUES (3, 3, 'Gn-Z11', 7, 3.3, 'Oldest known galaxy', true);
INSERT INTO public.galaxy VALUES (4, 4, 'Ic 1101', 6, 3.4, 'Super Giant elleptical galaxy', true);
INSERT INTO public.galaxy VALUES (5, 5, 'HD 1', 5, 7.1, 'High Red shift galaxy', true);
INSERT INTO public.galaxy VALUES (6, 6, 'Whirl pool', 5, 7.3, 'Looks like whirl pool', true);
INSERT INTO public.galaxy VALUES (7, 7, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (8, 8, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (9, 9, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (10, 10, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (11, 11, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (12, 12, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (13, 13, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (14, 14, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (15, 15, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (16, 16, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (17, 17, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (18, 18, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (19, 19, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);
INSERT INTO public.galaxy VALUES (20, 20, 'afrg', 11, 2.1, 'dvfvf dvfvb dfdv', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'defff', 123, 667);
INSERT INTO public.moon VALUES (2, 2, 'defff', 123, 667);
INSERT INTO public.moon VALUES (3, 3, 'defff', 123, 667);
INSERT INTO public.moon VALUES (4, 4, 'defff', 123, 667);
INSERT INTO public.moon VALUES (5, 5, 'defff', 123, 667);
INSERT INTO public.moon VALUES (6, 6, 'defff', 123, 667);
INSERT INTO public.moon VALUES (7, 7, 'defff', 123, 667);
INSERT INTO public.moon VALUES (8, 8, 'defff', 123, 667);
INSERT INTO public.moon VALUES (9, 9, 'defff', 123, 667);
INSERT INTO public.moon VALUES (10, 10, 'defff', 123, 667);
INSERT INTO public.moon VALUES (11, 11, 'defff', 123, 667);
INSERT INTO public.moon VALUES (12, 12, 'defff', 123, 667);
INSERT INTO public.moon VALUES (13, 13, 'defff', 123, 667);
INSERT INTO public.moon VALUES (14, 14, 'defff', 123, 667);
INSERT INTO public.moon VALUES (15, 15, 'defff', 123, 667);
INSERT INTO public.moon VALUES (16, 16, 'defff', 123, 667);
INSERT INTO public.moon VALUES (17, 17, 'defff', 123, 667);
INSERT INTO public.moon VALUES (18, 18, 'defff', 123, 667);
INSERT INTO public.moon VALUES (19, 19, 'defff', 123, 667);
INSERT INTO public.moon VALUES (20, 20, 'defff', 123, 667);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 31, false);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 21, false);
INSERT INTO public.planet VALUES (3, 3, 'Earth', 231, true);
INSERT INTO public.planet VALUES (4, 4, 'Mars', 231, false);
INSERT INTO public.planet VALUES (5, 5, 'Jupiter', 231, false);
INSERT INTO public.planet VALUES (6, 6, 'saturn', 35, false);
INSERT INTO public.planet VALUES (7, 7, 'Uranus', 35, false);
INSERT INTO public.planet VALUES (8, 8, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (9, 9, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (10, 10, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (11, 11, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (12, 12, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (13, 13, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (14, 14, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (15, 15, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (16, 16, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (17, 17, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (18, 18, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (19, 19, 'Neptune', 35, false);
INSERT INTO public.planet VALUES (20, 20, 'Neptune', 35, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'eff', 144, 213);
INSERT INTO public.star VALUES (2, 2, 'eff', 144, 213);
INSERT INTO public.star VALUES (3, 3, 'eff', 144, 213);
INSERT INTO public.star VALUES (4, 4, 'eff', 144, 213);
INSERT INTO public.star VALUES (5, 5, 'eff', 144, 213);
INSERT INTO public.star VALUES (6, 6, 'eff', 144, 213);
INSERT INTO public.star VALUES (7, 7, 'eff', 144, 213);
INSERT INTO public.star VALUES (8, 8, 'eff', 144, 213);
INSERT INTO public.star VALUES (9, 9, 'eff', 144, 213);
INSERT INTO public.star VALUES (10, 10, 'eff', 144, 213);
INSERT INTO public.star VALUES (11, 11, 'eff', 144, 213);
INSERT INTO public.star VALUES (12, 12, 'eff', 144, 213);
INSERT INTO public.star VALUES (13, 13, 'eff', 144, 213);
INSERT INTO public.star VALUES (14, 14, 'eff', 144, 213);
INSERT INTO public.star VALUES (15, 15, 'eff', 144, 213);
INSERT INTO public.star VALUES (16, 16, 'eff', 144, 213);
INSERT INTO public.star VALUES (17, 17, 'eff', 144, 213);
INSERT INTO public.star VALUES (18, 18, 'eff', 144, 213);
INSERT INTO public.star VALUES (19, 19, 'eff', 144, 213);
INSERT INTO public.star VALUES (20, 20, 'eff', 144, 213);


--
-- Name: black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 21, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 9, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 24, true);


--
-- Name: black_hole black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_id_key UNIQUE (id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--

