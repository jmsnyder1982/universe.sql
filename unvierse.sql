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
-- Name: countries; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.countries (
    countries_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    galaxy_id integer
);


ALTER TABLE public.countries OWNER TO freecodecamp;

--
-- Name: countries_country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.countries_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_country_id_seq OWNER TO freecodecamp;

--
-- Name: countries_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.countries_country_id_seq OWNED BY public.countries.countries_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_stars_in_billions integer,
    size_of_galaxy_in_kpc integer,
    age_in_billions_year_old numeric NOT NULL,
    has_life boolean
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
    name character varying(60) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    galaxy_id integer NOT NULL,
    has_life boolean,
    min_age_billion_years numeric,
    max_age_billion_years numeric
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
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer,
    has_life boolean
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
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    discovered_by text,
    year_discovered integer
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
-- Name: countries countries_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries ALTER COLUMN countries_id SET DEFAULT nextval('public.countries_country_id_seq'::regclass);


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
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.countries VALUES (1, 'USA', 3, 1);
INSERT INTO public.countries VALUES (2, 'Canada', 3, 1);
INSERT INTO public.countries VALUES (3, 'Australia', 3, 1);
INSERT INTO public.countries VALUES (4, 'Brazil', 3, 1);
INSERT INTO public.countries VALUES (5, 'Spain', 3, 1);
INSERT INTO public.countries VALUES (6, 'Ireland', 3, 1);
INSERT INTO public.countries VALUES (7, 'Germany', 3, 1);
INSERT INTO public.countries VALUES (8, 'Scottland', 3, 1);
INSERT INTO public.countries VALUES (9, 'India', 3, 1);
INSERT INTO public.countries VALUES (10, 'Japan', 3, 1);
INSERT INTO public.countries VALUES (11, 'Italy', 3, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 500, 27, 19, true);
INSERT INTO public.galaxy VALUES (2, 'Hercules A', 500000, 27000, 19, false);
INSERT INTO public.galaxy VALUES (3, 'ESO 383-76', 84, 541, 19, false);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', 30, 10, 13, false);
INSERT INTO public.galaxy VALUES (5, 'Andromeda Galaxy', 300, 765, 10, false);
INSERT INTO public.galaxy VALUES (7, 'Sextans A', 0, 300, 1, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 3, 1, false, 1, 4);
INSERT INTO public.moon VALUES ('Europa', 2, 5, 1, false, 1, 4);
INSERT INTO public.moon VALUES ('Ganymede', 3, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Lo', 4, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 5, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 6, 6, 1, false, 0.01, 0.01);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Lapetus', 8, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Mimas', 9, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 10, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 11, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Epimetheus', 12, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Triton', 13, 8, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Amalthea', 14, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalia', 15, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Tethys', 16, 6, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Adrastea', 17, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Thebe', 18, 5, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Oberon', 19, 7, 1, false, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 20, 4, 1, false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, false);
INSERT INTO public.planet VALUES (9, 'PA-99-N2', 5, NULL, false);
INSERT INTO public.planet VALUES (10, 'Haumea', 1, NULL, false);
INSERT INTO public.planet VALUES (11, 'Makemake', 1, NULL, false);
INSERT INTO public.planet VALUES (12, 'Eris', 1, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sextans A 10', 7, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sextans A 5', 7, NULL, NULL);
INSERT INTO public.star VALUES (3, 'LGGS J004514.91+413735.0', 5, NULL, NULL);
INSERT INTO public.star VALUES (4, 'WOH G64', 4, 'Bengt Westerlund', 1970);
INSERT INTO public.star VALUES (5, 'Stephenson 2 DFK 1', 1, 'Charles Bruce Stephenson', 1990);
INSERT INTO public.star VALUES (6, 'AH Scorpii', 1, NULL, NULL);


--
-- Name: countries_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.countries_country_id_seq', 11, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: countries countries_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_id_unique UNIQUE (countries_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: countries pk_country_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT pk_country_id PRIMARY KEY (countries_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- Name: planet fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: countries fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: countries fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

