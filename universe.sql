--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    is_active boolean
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    length integer NOT NULL,
    width integer NOT NULL,
    area numeric(10,2),
    is_active boolean,
    description text
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
    name character varying(30),
    length integer NOT NULL,
    width integer NOT NULL,
    area numeric(10,2),
    is_active boolean,
    planet_id integer,
    description text
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
    name character varying(30),
    length integer NOT NULL,
    width integer NOT NULL,
    area numeric(10,2),
    is_active boolean,
    galaxy_id integer,
    star_id integer,
    description text
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
    name character varying(30),
    length integer NOT NULL,
    width integer NOT NULL,
    area numeric(10,2),
    is_active boolean,
    galaxy_id integer,
    description text
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'haileys', 'comet', false);
INSERT INTO public.extra VALUES (2, 'second moon', 'moon', true);
INSERT INTO public.extra VALUES (3, 'pluto', 'planet', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 200, 200, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 300, 300, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 400, 400, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 500, 500, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 600, 600, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 1, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 2, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 3, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 4, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 5, 5, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 6, 6, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 7, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 8, 8, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 9, 9, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 10, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 11, 11, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 12, 12, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 13, 13, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 14, 14, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 15, 15, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 16, 16, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 17, 17, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 18, 18, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 19, 19, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 20, 20, NULL, NULL, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 10, 10, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 12, 12, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 13, 13, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 14, 14, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 15, 15, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 16, 16, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 17, 17, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 18, 18, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 19, 19, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 20, 20, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 21, 21, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 22, 22, NULL, NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 11, 11, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'star4', 44, 44, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', 22, 22, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (5, 'star5', 55, 55, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (3, 'star3', 33, 33, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES (6, 'star6', 66, 66, NULL, NULL, 3, NULL);


--
-- Name: extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: extra extranameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extranameunique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: star fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

