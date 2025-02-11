toc.dat                                                                                             0000600 0004000 0002000 00000014042 14515356173 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   /    %            	    {            colegio    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16398    colegio    DATABASE     }   CREATE DATABASE colegio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE colegio;
                postgres    false         �            1259    16399    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    matricula integer NOT NULL,
    nombre character varying(50),
    apellidos character varying(50),
    edad integer,
    aula character varying(100),
    grado integer
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false         �            1259    16402    alumnos_matricula_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.alumnos_matricula_seq;
       public          postgres    false    215         �           0    0    alumnos_matricula_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.alumnos_matricula_seq OWNED BY public.alumnos.matricula;
          public          postgres    false    216         �            1259    16403    aula    TABLE     [   CREATE TABLE public.aula (
    codigo character varying(100) NOT NULL,
    piso integer
);
    DROP TABLE public.aula;
       public         heap    postgres    false         �            1259    16406    materia    TABLE     j   CREATE TABLE public.materia (
    codigo character varying(100) NOT NULL,
    nombre character varying
);
    DROP TABLE public.materia;
       public         heap    postgres    false         �            1259    16411    profesor    TABLE     �   CREATE TABLE public.profesor (
    cedula integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    materia character varying(100),
    aula character varying(100)
);
    DROP TABLE public.profesor;
       public         heap    postgres    false         &           2604    16414    alumnos matricula    DEFAULT     v   ALTER TABLE ONLY public.alumnos ALTER COLUMN matricula SET DEFAULT nextval('public.alumnos_matricula_seq'::regclass);
 @   ALTER TABLE public.alumnos ALTER COLUMN matricula DROP DEFAULT;
       public          postgres    false    216    215         �          0    16399    alumnos 
   TABLE DATA           R   COPY public.alumnos (matricula, nombre, apellidos, edad, aula, grado) FROM stdin;
    public          postgres    false    215       4801.dat �          0    16403    aula 
   TABLE DATA           ,   COPY public.aula (codigo, piso) FROM stdin;
    public          postgres    false    217       4803.dat �          0    16406    materia 
   TABLE DATA           1   COPY public.materia (codigo, nombre) FROM stdin;
    public          postgres    false    218       4804.dat �          0    16411    profesor 
   TABLE DATA           K   COPY public.profesor (cedula, nombre, apellido, materia, aula) FROM stdin;
    public          postgres    false    219       4805.dat �           0    0    alumnos_matricula_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumnos_matricula_seq', 1, true);
          public          postgres    false    216         (           2606    16416    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    215         *           2606    16418    aula aula_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.aula
    ADD CONSTRAINT aula_pkey PRIMARY KEY (codigo);
 8   ALTER TABLE ONLY public.aula DROP CONSTRAINT aula_pkey;
       public            postgres    false    217         ,           2606    16420    materia materia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    218         .           2606    16422    profesor profesor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (cedula);
 @   ALTER TABLE ONLY public.profesor DROP CONSTRAINT profesor_pkey;
       public            postgres    false    219         0           2606    16423    profesor aula    FK CONSTRAINT     v   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aula(codigo) NOT VALID;
 7   ALTER TABLE ONLY public.profesor DROP CONSTRAINT aula;
       public          postgres    false    217    4650    219         /           2606    16428    alumnos aula    FK CONSTRAINT     u   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aula(codigo) NOT VALID;
 6   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT aula;
       public          postgres    false    217    4650    215         1           2606    16433    profesor materia    FK CONSTRAINT        ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT materia FOREIGN KEY (materia) REFERENCES public.materia(codigo) NOT VALID;
 :   ALTER TABLE ONLY public.profesor DROP CONSTRAINT materia;
       public          postgres    false    218    219    4652                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      4801.dat                                                                                            0000600 0004000 0002000 00000000074 14515356173 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4562	Jose	Murillo	15	A1	6
3452	Miguel	Murcia\n	14	B1	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                    4803.dat                                                                                            0000600 0004000 0002000 00000000036 14515356173 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        A1	1
A2	1
A3	1
B1	2
B2	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4804.dat                                                                                            0000600 0004000 0002000 00000000052 14515356173 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        M1	Matematicas
C1	Ciencias
F1	Fisica
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      4805.dat                                                                                            0000600 0004000 0002000 00000000041 14515356173 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        11234161	Carlos	Velez	F1	A1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000012540 14515356173 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE colegio;
--
-- Name: colegio; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE colegio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE colegio OWNER TO postgres;

\connect colegio

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
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    matricula integer NOT NULL,
    nombre character varying(50),
    apellidos character varying(50),
    edad integer,
    aula character varying(100),
    grado integer
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: alumnos_matricula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumnos_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumnos_matricula_seq OWNER TO postgres;

--
-- Name: alumnos_matricula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumnos_matricula_seq OWNED BY public.alumnos.matricula;


--
-- Name: aula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aula (
    codigo character varying(100) NOT NULL,
    piso integer
);


ALTER TABLE public.aula OWNER TO postgres;

--
-- Name: materia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materia (
    codigo character varying(100) NOT NULL,
    nombre character varying
);


ALTER TABLE public.materia OWNER TO postgres;

--
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    cedula integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    materia character varying(100),
    aula character varying(100)
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- Name: alumnos matricula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos ALTER COLUMN matricula SET DEFAULT nextval('public.alumnos_matricula_seq'::regclass);


--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (matricula, nombre, apellidos, edad, aula, grado) FROM stdin;
\.
COPY public.alumnos (matricula, nombre, apellidos, edad, aula, grado) FROM '$$PATH$$/4801.dat';

--
-- Data for Name: aula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aula (codigo, piso) FROM stdin;
\.
COPY public.aula (codigo, piso) FROM '$$PATH$$/4803.dat';

--
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materia (codigo, nombre) FROM stdin;
\.
COPY public.materia (codigo, nombre) FROM '$$PATH$$/4804.dat';

--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (cedula, nombre, apellido, materia, aula) FROM stdin;
\.
COPY public.profesor (cedula, nombre, apellido, materia, aula) FROM '$$PATH$$/4805.dat';

--
-- Name: alumnos_matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumnos_matricula_seq', 1, true);


--
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);


--
-- Name: aula aula_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aula
    ADD CONSTRAINT aula_pkey PRIMARY KEY (codigo);


--
-- Name: materia materia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (codigo);


--
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (cedula);


--
-- Name: profesor aula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aula(codigo) NOT VALID;


--
-- Name: alumnos aula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT aula FOREIGN KEY (aula) REFERENCES public.aula(codigo) NOT VALID;


--
-- Name: profesor materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT materia FOREIGN KEY (materia) REFERENCES public.materia(codigo) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                