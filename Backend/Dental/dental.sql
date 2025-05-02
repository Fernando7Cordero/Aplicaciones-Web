--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: articulos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulos (
    arti_id_articulo integer NOT NULL,
    arti_nombre character varying,
    arti_descrip character varying,
    arti_id_material integer,
    arti_id_prove integer,
    arti_fecha date,
    arti_nacionalidad character varying
);


ALTER TABLE public.articulos OWNER TO postgres;

--
-- Name: articulos_arti_id_articulo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articulos_arti_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_arti_id_articulo_seq OWNER TO postgres;

--
-- Name: articulos_arti_id_articulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articulos_arti_id_articulo_seq OWNED BY public.articulos.arti_id_articulo;


--
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    mate_id_material integer NOT NULL,
    mate_descrip character varying
);


ALTER TABLE public.material OWNER TO postgres;

--
-- Name: material_mate_id_material_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_mate_id_material_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_mate_id_material_seq OWNER TO postgres;

--
-- Name: material_mate_id_material_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_mate_id_material_seq OWNED BY public.material.mate_id_material;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    pers_id_pers integer NOT NULL,
    pers_nombre character varying(30) NOT NULL,
    pers_primer_ape character varying(20) NOT NULL,
    pers_segundo_ape character varying(20),
    pers_nacimiento date,
    pers_genero integer,
    pers_curp character varying(40),
    pers_rfc character varying(40)
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- Name: persona_pers_id_pers_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_pers_id_pers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_pers_id_pers_seq OWNER TO postgres;

--
-- Name: persona_pers_id_pers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_pers_id_pers_seq OWNED BY public.persona.pers_id_pers;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    prove_id_prove integer NOT NULL,
    prove_descrip character varying
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: proveedor_prove_id_prove_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedor_prove_id_prove_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_prove_id_prove_seq OWNER TO postgres;

--
-- Name: proveedor_prove_id_prove_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedor_prove_id_prove_seq OWNED BY public.proveedor.prove_id_prove;


--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    rol_id_rol integer NOT NULL,
    rol_nombre character varying(20) NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: rol_rol_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rol_rol_id_rol_seq OWNER TO postgres;

--
-- Name: rol_rol_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_rol_id_rol_seq OWNED BY public.rol.rol_id_rol;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    usua_id_usua integer NOT NULL,
    usua_id_preg integer NOT NULL,
    usua_id_pers integer NOT NULL,
    usua_id_rol integer NOT NULL,
    usua_nombre character varying(20) NOT NULL,
    usua_contra character varying(30) NOT NULL,
    usua_respuesta character varying(30) NOT NULL,
    usua_estado boolean NOT NULL,
    usua_sesion boolean
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_usua_id_usua_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usua_id_usua_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usua_id_usua_seq OWNER TO postgres;

--
-- Name: usuario_usua_id_usua_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usua_id_usua_seq OWNED BY public.usuario.usua_id_usua;


--
-- Name: articulos arti_id_articulo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulos ALTER COLUMN arti_id_articulo SET DEFAULT nextval('public.articulos_arti_id_articulo_seq'::regclass);


--
-- Name: material mate_id_material; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN mate_id_material SET DEFAULT nextval('public.material_mate_id_material_seq'::regclass);


--
-- Name: persona pers_id_pers; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN pers_id_pers SET DEFAULT nextval('public.persona_pers_id_pers_seq'::regclass);


--
-- Name: proveedor prove_id_prove; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN prove_id_prove SET DEFAULT nextval('public.proveedor_prove_id_prove_seq'::regclass);


--
-- Name: rol rol_id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN rol_id_rol SET DEFAULT nextval('public.rol_rol_id_rol_seq'::regclass);


--
-- Name: usuario usua_id_usua; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN usua_id_usua SET DEFAULT nextval('public.usuario_usua_id_usua_seq'::regclass);



SELECT pg_catalog.setval('public.articulos_arti_id_articulo_seq', 17, true);


--
-- Name: material_mate_id_material_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_mate_id_material_seq', 3, true);


--
-- Name: persona_pers_id_pers_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_pers_id_pers_seq', 1, true);


--
-- Name: proveedor_prove_id_prove_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedor_prove_id_prove_seq', 3, true);


--
-- Name: rol_rol_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_rol_id_rol_seq', 5, true);


--
-- Name: usuario_usua_id_usua_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usua_id_usua_seq', 1, true);


--
-- Name: articulos articulos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (arti_id_articulo);


--
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (mate_id_material);


--
-- Name: persona pk_persona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (pers_id_pers);


--
-- Name: rol pk_rol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT pk_rol PRIMARY KEY (rol_id_rol);


--
-- Name: usuario pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (usua_id_usua);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (prove_id_prove);


--
-- Name: fk_persona_usuario_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_persona_usuario_fk ON public.usuario USING btree (usua_id_pers);


--
-- Name: fk_usuario_pregunta_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_usuario_pregunta_fk ON public.usuario USING btree (usua_id_preg);


--
-- Name: fk_usuario_rol_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fk_usuario_rol_fk ON public.usuario USING btree (usua_id_rol);


--
-- Name: rol_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rol_pk ON public.rol USING btree (rol_id_rol);


--
-- Name: usuario_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuario_pk ON public.usuario USING btree (usua_id_usua);


--
-- Name: usuario fk_usuario_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_rol FOREIGN KEY (usua_id_rol) REFERENCES public.rol(rol_id_rol) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--
