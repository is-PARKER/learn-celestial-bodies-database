--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    contstraint name,
    mass numeric(20,1),
    has_arms boolean,
    CONSTRAINT galaxy_id CHECK ((NOT NULL::boolean))
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
    name character varying(30) NOT NULL,
    shape character varying(30),
    planet_id integer,
    contstraint name,
    mass numeric(20,2),
    CONSTRAINT moon_id CHECK ((NOT NULL::boolean)),
    CONSTRAINT name CHECK ((NOT NULL::boolean))
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
    name character varying(30) NOT NULL,
    type text,
    has_life boolean,
    number_of_moons integer,
    orbit_days integer,
    diameter_km numeric(9,2),
    star_id integer,
    contstraint name,
    CONSTRAINT name CHECK ((NOT NULL::boolean)),
    CONSTRAINT planet_id CHECK ((NOT NULL::boolean))
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
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    satelites_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    contstraint name,
    country character varying(30),
    mass numeric(5,3),
    CONSTRAINT name CHECK ((NOT NULL::boolean)),
    CONSTRAINT satelite_id CHECK ((NOT NULL::boolean))
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_sat_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_sat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_sat_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_sat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_sat_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(30),
    galaxy_id integer,
    contstraint name,
    mass numeric(20,2),
    CONSTRAINT name CHECK ((NOT NULL::boolean)),
    CONSTRAINT star_id CHECK ((NOT NULL::boolean))
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
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_sat_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Adronicus', false, NULL, 4409999944.0, true);
INSERT INTO public.galaxy VALUES (5, 'Doghead', false, NULL, 63453425345.0, true);
INSERT INTO public.galaxy VALUES (6, 'Elephant', false, NULL, 23535234.0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'round', 3, NULL, 345.00);
INSERT INTO public.moon VALUES (2, 'circa', 'sphere', 1, NULL, 121.00);
INSERT INTO public.moon VALUES (3, 'ceres', 'football', 4, NULL, 45.00);
INSERT INTO public.moon VALUES (4, 'tonka', 'round', 2, NULL, 20.00);
INSERT INTO public.moon VALUES (5, 'truco', 'rectangle', 2, NULL, 400.00);
INSERT INTO public.moon VALUES (6, 'Sessi', 'round', 4, NULL, 50.00);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, 9, NULL, 560.00);
INSERT INTO public.moon VALUES (8, 'texa', NULL, 6, NULL, 409.00);
INSERT INTO public.moon VALUES (9, 'titan', NULL, 5, NULL, 500.00);
INSERT INTO public.moon VALUES (10, 'beta', NULL, 7, NULL, 240.00);
INSERT INTO public.moon VALUES (11, 'revel', NULL, 4, NULL, 220.00);
INSERT INTO public.moon VALUES (12, 'gamma', NULL, 8, NULL, 230.00);
INSERT INTO public.moon VALUES (13, 'sidney', NULL, 5, NULL, 400.00);
INSERT INTO public.moon VALUES (14, 'xena', NULL, 6, NULL, 230.00);
INSERT INTO public.moon VALUES (15, 'Ixus', NULL, 7, NULL, 343.00);
INSERT INTO public.moon VALUES (16, 'nexus', NULL, 7, NULL, 233.00);
INSERT INTO public.moon VALUES (17, 'Delta', NULL, 7, NULL, 234.00);
INSERT INTO public.moon VALUES (18, 'ralph', NULL, 5, NULL, 234.00);
INSERT INTO public.moon VALUES (19, 'chara', NULL, 7, NULL, 234.00);
INSERT INTO public.moon VALUES (20, 'secno', NULL, 7, NULL, 634.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'solid', false, 0, 124, 6000.00, 3, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'solid', false, 2, 274, 12004.40, 3, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'solid', true, 1, 365, 12034.00, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'solid', false, 2, 450, 11095.00, 3, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 'gas', false, 9, 540, 30000.00, 3, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'gas', false, 12, 670, 40000.00, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'gas', false, 3, 730, 30000.00, 3, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'gas', false, 4, 790, 40000.00, 3, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'ice', false, 1, 820, 5000.00, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Planet x', 'solid', false, 0, 0, 0.00, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Alpha Prime', 'unknown', false, NULL, NULL, 50000.00, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Beta Secundus', 'gas', false, NULL, NULL, 60000.00, 2, NULL);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES (1, 'Voyager', 'deep probe', NULL, 'USA', NULL);
INSERT INTO public.satelites VALUES (2, 'Sputnik', 'First in Space', NULL, 'USSR', NULL);
INSERT INTO public.satelites VALUES (3, 'Discovery', 'Mars Rover', NULL, 'USA', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpha', 'blue-white', 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'beta', 'yellow', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'sun', 'yellow', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'asdf-3', 'red', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'xxcf-3', 'blue', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'asd-2', 'green', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelites_sat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_sat_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_contstraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_contstraint_key UNIQUE (contstraint);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_contstraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_contstraint_key UNIQUE (contstraint);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_contstraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_contstraint_key UNIQUE (contstraint);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelites satelites_contstraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_contstraint_key UNIQUE (contstraint);


--
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: star star_contstraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_contstraint_key UNIQUE (contstraint);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

