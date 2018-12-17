--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

-- Started on 2018-12-16 23:22:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16446)
-- Name: Cuenta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cuenta" (
    descripcion character varying(30),
    categoria_balance integer,
    categoria_estado_resultado integer,
    id_cuenta integer NOT NULL
);


ALTER TABLE public."Cuenta" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16471)
-- Name: Persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Persona" (
    id_persona integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    fecha_nacimiento date
);


ALTER TABLE public."Persona" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16469)
-- Name: Persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Persona_id_persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Persona_id_persona_seq" OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 198
-- Name: Persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Persona_id_persona_seq" OWNED BY public."Persona".id_persona;


--
-- TOC entry 197 (class 1259 OID 16451)
-- Name: Registro_Cuenta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Registro_Cuenta" (
    id_registro integer NOT NULL,
    fecha_modificacion date,
    saldo double precision,
    id_cuenta integer NOT NULL,
    debe double precision,
    haber double precision
);


ALTER TABLE public."Registro_Cuenta" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16477)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    contrasenia character varying(30),
    tipo integer,
    username character varying(30),
    correo character varying
)
INHERITS (public."Persona");


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 2698 (class 2604 OID 16474)
-- Name: Persona id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona" ALTER COLUMN id_persona SET DEFAULT nextval('public."Persona_id_persona_seq"'::regclass);


--
-- TOC entry 2699 (class 2604 OID 16480)
-- Name: Usuario id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario" ALTER COLUMN id_persona SET DEFAULT nextval('public."Persona_id_persona_seq"'::regclass);


--
-- TOC entry 2828 (class 0 OID 16446)
-- Dependencies: 196
-- Data for Name: Cuenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Cuenta" (descripcion, categoria_balance, categoria_estado_resultado, id_cuenta) FROM stdin;
\.


--
-- TOC entry 2831 (class 0 OID 16471)
-- Dependencies: 199
-- Data for Name: Persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Persona" (id_persona, nombre, apellido, fecha_nacimiento) FROM stdin;
\.


--
-- TOC entry 2829 (class 0 OID 16451)
-- Dependencies: 197
-- Data for Name: Registro_Cuenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Registro_Cuenta" (id_registro, fecha_modificacion, saldo, id_cuenta, debe, haber) FROM stdin;
\.


--
-- TOC entry 2832 (class 0 OID 16477)
-- Dependencies: 200
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario" (id_persona, nombre, apellido, fecha_nacimiento, contrasenia, tipo, username, correo) FROM stdin;
\.


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 198
-- Name: Persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Persona_id_persona_seq"', 1, false);


--
-- TOC entry 2701 (class 2606 OID 16450)
-- Name: Cuenta pk_id_cuenta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cuenta"
    ADD CONSTRAINT pk_id_cuenta PRIMARY KEY (id_cuenta);


--
-- TOC entry 2705 (class 2606 OID 16476)
-- Name: Persona pk_id_persona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT pk_id_persona PRIMARY KEY (id_persona);


--
-- TOC entry 2703 (class 2606 OID 16455)
-- Name: Registro_Cuenta pk_id_registro_registro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registro_Cuenta"
    ADD CONSTRAINT pk_id_registro_registro PRIMARY KEY (id_cuenta, id_registro);


--
-- TOC entry 2706 (class 2606 OID 16456)
-- Name: Registro_Cuenta fk_cuenta_registro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registro_Cuenta"
    ADD CONSTRAINT fk_cuenta_registro FOREIGN KEY (id_cuenta) REFERENCES public."Cuenta"(id_cuenta);


-- Completed on 2018-12-16 23:22:50

--
-- PostgreSQL database dump complete
--

