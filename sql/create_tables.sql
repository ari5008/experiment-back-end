--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Debian 14.7-1.pgdg110+1)

-- Name: genres; Type: TABLE; Schema: public; Owner: -
--  

CREATE TABLE public.genres (
    id          serial primary key,
    genre       character varying(255),
    created_at  timestamp with time zone,
    updated_at  timestamp with time zone
);

--
-- Name: movies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.movies (
    id              serial primary key,
    title           character varying(512),
    release_date    date,
    runtime         integer,
    mpaa_rating     character varying(10),
    description     text,
    image character varying(255),
    created_at      timestamp with time zone,
    updated_at      timestamp with time zone
);


--
-- Name: movies_genres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.movies_genres (
    id          serial primary key,
    movie_id    integer references public.movies(id),
    genre_id    integer references public.genres(id)
);

--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id          serial primary key,
    first_name  character varying(255),
    last_name   character varying(255),
    email       character varying(255),
    password    character varying(255),
    created_at  timestamp with time zone,
    updated_at  timestamp with time zone
);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genres (id, genre, created_at, updated_at) FROM stdin;
1	Comedy	2022-09-23 00:00:00	2022-09-23 00:00:00
2	Sci-Fi	2022-09-23 00:00:00	2022-09-23 00:00:00
3	Horror	2022-09-23 00:00:00	2022-09-23 00:00:00
4	Romance	2022-09-23 00:00:00	2022-09-23 00:00:00
5	Action	2022-09-23 00:00:00	2022-09-23 00:00:00
6	Thriller	2022-09-23 00:00:00	2022-09-23 00:00:00
7	Drama	2022-09-23 00:00:00	2022-09-23 00:00:00
8	Mystery	2022-09-23 00:00:00	2022-09-23 00:00:00
9	Crime	2022-09-23 00:00:00	2022-09-23 00:00:00
10	Animation	2022-09-23 00:00:00	2022-09-23 00:00:00
11	Adventure	2022-09-23 00:00:00	2022-09-23 00:00:00
12	Fantasy	2022-09-23 00:00:00	2022-09-23 00:00:00
13	Superhero	2022-09-23 00:00:00	2022-09-23 00:00:00
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.movies (id, title, release_date, runtime, mpaa_rating, description, image, created_at, updated_at) FROM stdin;
1	Highlander	1986-03-07	116	R	He fought his first battle on the Scottish Highlands in 1536. He will fight his greatest battle on the streets of New York City in 1986. His name is Connor MacLeod. He is immortal.	/8Z8dptJEypuLoOQro1WugD855YE.jpg	2022-09-23 00:00:00	2022-09-23 00:00:00
2	Raiders of the Lost Ark	1981-06-12	115	PG-13	Archaeology professor Indiana Jones ventures to seize a biblical artefact known as the Ark of the Covenant. While doing so, he puts up a fight against Renee and a troop of Nazis.	/ceG9VzoRAVGwivFU403Wc3AHRys.jpg	2022-09-23 00:00:00	2022-09-23 00:00:00
3	The Godfather	1972-03-24	175	18A	The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.	/3bhkrj58Vtu7enYsRolD1fZdja1.jpg	2022-09-23 00:00:00	2022-09-23 00:00:00
\.


--
-- Data for Name: movies_genres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.movies_genres (id, movie_id, genre_id) FROM stdin;
1	1	5
2	1	12
3	2	5
4	2	11
5	3	9
6	3	7
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, first_name, last_name, email, password, created_at, updated_at) FROM stdin;
1	Admin	User	admin@example.com	$2a$14$wVsaPvJnJJsomWArouWCtusem6S/.Gauq/GjOIEHpyh2DAMmso1wy	2022-09-23 00:00:00	2022-09-23 00:00:00
\.
