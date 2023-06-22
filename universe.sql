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
-- Name: astronomers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomers (
    astronomers_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_objects_discovered integer
);


ALTER TABLE public.astronomers OWNER TO freecodecamp;

--
-- Name: astronomers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomers_id_seq OWNER TO freecodecamp;

--
-- Name: astronomers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomers_id_seq OWNED BY public.astronomers.astronomers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    distance_from_earth numeric,
    stars_contained integer,
    speed_moving_away numeric
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
    size numeric,
    planet_id integer,
    potentially_livable boolean,
    atmosphere text
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
    size numeric,
    star_id integer,
    distance_from_star numeric,
    habitable_zone boolean,
    number_moons integer
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
    name character varying(30) NOT NULL,
    size numeric,
    galaxy_id integer,
    columnis_twin boolean,
    age numeric
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
-- Name: astronomers astronomers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers ALTER COLUMN astronomers_id SET DEFAULT nextval('public.astronomers_id_seq'::regclass);


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
-- Data for Name: astronomers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomers VALUES (1, 'James', 5);
INSERT INTO public.astronomers VALUES (2, 'Liam', 6);
INSERT INTO public.astronomers VALUES (3, 'Sam', 100);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 50, 0, 100000, 0);
INSERT INTO public.galaxy VALUES (2, 'Canis Major', 100, 25000, 50000, 0.4);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 75, 2363000, 75000, 0.8);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 1000, 160000, 1000000, 0.6);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 200, 190000, 250000, 0.5);
INSERT INTO public.galaxy VALUES (6, 'Sextans Dwarf', 25, 257500, 20000, 0.7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 1, false, 'None');
INSERT INTO public.moon VALUES (2, 'Q', 2, 4, false, 'N');
INSERT INTO public.moon VALUES (3, 'W', 5, 3, true, 'O');
INSERT INTO public.moon VALUES (4, 'R', 0.5, 7, false, 'None');
INSERT INTO public.moon VALUES (5, 'T', 3.5, 8, false, 'None');
INSERT INTO public.moon VALUES (6, 'Y', 6, 3, false, 'None');
INSERT INTO public.moon VALUES (7, 'U', 2, 4, false, 'N');
INSERT INTO public.moon VALUES (8, 'I', 5, 7, true, 'O');
INSERT INTO public.moon VALUES (9, 'O', 0.5, 11, false, 'None');
INSERT INTO public.moon VALUES (10, 'P', 3.5, 12, false, 'None');
INSERT INTO public.moon VALUES (11, 'X', 6, 2, false, 'None');
INSERT INTO public.moon VALUES (12, 'V', 2, 9, false, 'N');
INSERT INTO public.moon VALUES (13, 'N', 5, 10, true, 'O');
INSERT INTO public.moon VALUES (14, 'M', 0.5, 12, false, 'None');
INSERT INTO public.moon VALUES (15, 'PO', 3.5, 4, false, 'None');
INSERT INTO public.moon VALUES (16, 'XQ', 6, 5, false, 'None');
INSERT INTO public.moon VALUES (17, 'VW', 3, 6, false, 'N');
INSERT INTO public.moon VALUES (18, 'NW', 4, 9, true, 'O');
INSERT INTO public.moon VALUES (19, 'MW', 0.7, 5, false, 'None');
INSERT INTO public.moon VALUES (20, 'PE', 3, 6, false, 'None');
INSERT INTO public.moon VALUES (21, 'XT', 7, 7, false, 'None');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 50, 1, 1000, false, 12);
INSERT INTO public.planet VALUES (3, 'A', 20, 3, 50, true, 3);
INSERT INTO public.planet VALUES (4, 'B', 30, 2, 4, false, 5);
INSERT INTO public.planet VALUES (5, 'C', 645, 4, 32, false, 4);
INSERT INTO public.planet VALUES (6, 'D', 6543, 3, 6789324, false, 6);
INSERT INTO public.planet VALUES (7, 'E', 50, 6, 100, false, 15);
INSERT INTO public.planet VALUES (8, 'F', 40, 5, 50, false, 8);
INSERT INTO public.planet VALUES (9, 'G', 35, 2, 100, false, 9);
INSERT INTO public.planet VALUES (10, 'H', 64, 1, 32, false, 18);
INSERT INTO public.planet VALUES (11, 'I', 654, 3, 67894, true, 2);
INSERT INTO public.planet VALUES (12, 'J', 2, 4, 2, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 864000, 1, false, 6.4);
INSERT INTO public.star VALUES (2, 'Sirius', 1000000, 1, false, 8);
INSERT INTO public.star VALUES (3, 'Andron', 800000, 4, true, 5);
INSERT INTO public.star VALUES (4, 'Acrux', 1500000, 6, false, 3);
INSERT INTO public.star VALUES (5, 'Andron 2', 750000, 4, true, 5.2);
INSERT INTO public.star VALUES (6, 'Hephaestus', 500000, 3, false, 9);


--
-- Name: astronomers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomers_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomers astronomers_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT astronomers_id_key UNIQUE (astronomers_id);


--
-- Name: astronomers astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT astronomers_pkey PRIMARY KEY (astronomers_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star in_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT in_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_orbit_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbit_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbit_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbit_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

