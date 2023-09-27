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
-- Name: deathstar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.deathstar (
    deathstar_id integer NOT NULL,
    name character varying(40) NOT NULL,
    long_name character varying(250),
    has_life boolean
);


ALTER TABLE public.deathstar OWNER TO freecodecamp;

--
-- Name: deathstar_deathstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.deathstar_deathstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deathstar_deathstar_id_seq OWNER TO freecodecamp;

--
-- Name: deathstar_deathstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.deathstar_deathstar_id_seq OWNED BY public.deathstar.deathstar_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    distance_from_earth numeric NOT NULL,
    long_name character varying(250)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    long_name character varying(250),
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    long_name character varying(250),
    has_life boolean,
    planet_type integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    stat_type integer,
    long_name character varying(250),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: deathstar deathstar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstar ALTER COLUMN deathstar_id SET DEFAULT nextval('public.deathstar_deathstar_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: deathstar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.deathstar VALUES (1, 'death123', NULL, NULL);
INSERT INTO public.deathstar VALUES (2, 'death13', NULL, NULL);
INSERT INTO public.deathstar VALUES (3, 'death1323', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', NULL, 2, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'moon111', NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon29', NULL, NULL, 1);
INSERT INTO public.moon VALUES (21, 'moon39', NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'planet13', NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'star4', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'star7', NULL, NULL, 1);


--
-- Name: deathstar_deathstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.deathstar_deathstar_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: deathstar deathstar_long_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstar
    ADD CONSTRAINT deathstar_long_name_key UNIQUE (long_name);


--
-- Name: deathstar deathstar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstar
    ADD CONSTRAINT deathstar_pkey PRIMARY KEY (deathstar_id);


--
-- Name: galaxy galaxy_long_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_long_name_key UNIQUE (long_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_long_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_long_name_key UNIQUE (long_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_long_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_long_name_key UNIQUE (long_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_long_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_long_name_key UNIQUE (long_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

