--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: labdb
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE auth_group DISABLE TRIGGER ALL;

COPY auth_group (id, name) FROM stdin;
\.


ALTER TABLE auth_group ENABLE TRIGGER ALL;

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE django_content_type DISABLE TRIGGER ALL;

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	presupuestos	cliente
8	presupuestos	tipo
9	presupuestos	estado
10	presupuestos	presupuesto
11	presupuestos	numerador
12	presupuestos	matriz
13	presupuestos	familia
14	presupuestos	parametro
15	presupuestos	tecnica
16	presupuestos	unidades
17	presupuestos	matriztecnicalct
18	presupuestos	parametroprecio
19	presupuestos	perfilprecio
20	presupuestos	perfilprecio_parametro
21	presupuestos	item
22	presupuestos	subitem_parametro
23	presupuestos	subitem_perfil
24	presupuestos	campania
25	presupuestos	plantillas_impresion
26	presupuestos	orden_trabajo
27	presupuestos	ot_estado
28	presupuestos	ot_item
29	presupuestos	muestra_estado
30	presupuestos	muestra
31	presupuestos	analisis
\.


ALTER TABLE django_content_type ENABLE TRIGGER ALL;

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE auth_permission DISABLE TRIGGER ALL;

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add cliente	7	add_cliente
20	Can change cliente	7	change_cliente
21	Can delete cliente	7	delete_cliente
22	Can add tipo	8	add_tipo
23	Can change tipo	8	change_tipo
24	Can delete tipo	8	delete_tipo
25	Can add estado	9	add_estado
26	Can change estado	9	change_estado
27	Can delete estado	9	delete_estado
28	Can add presupuesto	10	add_presupuesto
29	Can change presupuesto	10	change_presupuesto
30	Can delete presupuesto	10	delete_presupuesto
31	Can add numerador	11	add_numerador
32	Can change numerador	11	change_numerador
33	Can delete numerador	11	delete_numerador
34	Can add matriz	12	add_matriz
35	Can change matriz	12	change_matriz
36	Can delete matriz	12	delete_matriz
37	Can add familia	13	add_familia
38	Can change familia	13	change_familia
39	Can delete familia	13	delete_familia
40	Can add parametro	14	add_parametro
41	Can change parametro	14	change_parametro
42	Can delete parametro	14	delete_parametro
43	Can add tecnica	15	add_tecnica
44	Can change tecnica	15	change_tecnica
45	Can delete tecnica	15	delete_tecnica
46	Can add unidades	16	add_unidades
47	Can change unidades	16	change_unidades
48	Can delete unidades	16	delete_unidades
49	Can add matriz tecnica lct	17	add_matriztecnicalct
50	Can change matriz tecnica lct	17	change_matriztecnicalct
51	Can delete matriz tecnica lct	17	delete_matriztecnicalct
52	Can add parametro precio	18	add_parametroprecio
53	Can change parametro precio	18	change_parametroprecio
54	Can delete parametro precio	18	delete_parametroprecio
55	Can add perfil precio	19	add_perfilprecio
56	Can change perfil precio	19	change_perfilprecio
57	Can delete perfil precio	19	delete_perfilprecio
58	Can add perfil precio_ parametro	20	add_perfilprecio_parametro
59	Can change perfil precio_ parametro	20	change_perfilprecio_parametro
60	Can delete perfil precio_ parametro	20	delete_perfilprecio_parametro
61	Can add item	21	add_item
62	Can change item	21	change_item
63	Can delete item	21	delete_item
64	Can add subitem_parametro	22	add_subitem_parametro
65	Can change subitem_parametro	22	change_subitem_parametro
66	Can delete subitem_parametro	22	delete_subitem_parametro
67	Can add subitem_perfil	23	add_subitem_perfil
68	Can change subitem_perfil	23	change_subitem_perfil
69	Can delete subitem_perfil	23	delete_subitem_perfil
70	Can add campania	24	add_campania
71	Can change campania	24	change_campania
72	Can delete campania	24	delete_campania
73	Can add plantillas_ impresion	25	add_plantillas_impresion
74	Can change plantillas_ impresion	25	change_plantillas_impresion
75	Can delete plantillas_ impresion	25	delete_plantillas_impresion
76	Can add orden_trabajo	26	add_orden_trabajo
77	Can change orden_trabajo	26	change_orden_trabajo
78	Can delete orden_trabajo	26	delete_orden_trabajo
79	Can add ot_ estado	27	add_ot_estado
80	Can change ot_ estado	27	change_ot_estado
81	Can delete ot_ estado	27	delete_ot_estado
82	Can add ot_ item	28	add_ot_item
83	Can change ot_ item	28	change_ot_item
84	Can delete ot_ item	28	delete_ot_item
85	Can add muestra_ estado	29	add_muestra_estado
86	Can change muestra_ estado	29	change_muestra_estado
87	Can delete muestra_ estado	29	delete_muestra_estado
88	Can add muestra	30	add_muestra
89	Can change muestra	30	change_muestra
90	Can delete muestra	30	delete_muestra
91	Can add analisis	31	add_analisis
92	Can change analisis	31	change_analisis
93	Can delete analisis	31	delete_analisis
\.


ALTER TABLE auth_permission ENABLE TRIGGER ALL;

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE auth_group_permissions DISABLE TRIGGER ALL;

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


ALTER TABLE auth_group_permissions ENABLE TRIGGER ALL;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_permission_id_seq', 93, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE auth_user DISABLE TRIGGER ALL;

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
7	pbkdf2_sha256$20000$bPVHqfXRt3up$EVoejnqKj7Z5auxBFbalNrmBynWosKmvuLHXNKNPExI=	\N	f	msoto				f	t	2016-02-16 06:42:50.875375-05
8	pbkdf2_sha256$20000$eUVrvLMqTQp2$kEgVEDTEAe33O/YOjAyM4Sz15cKwdm3IjhbkU48nsh0=	\N	f	pbrissio				f	t	2016-02-16 06:43:09.893159-05
9	pbkdf2_sha256$20000$5Ze2UJZ6NwyF$bQmhHAJg2x/4pEqfJo+MXxI/IdHloGyGq00hG8q7e5Q=	\N	f	cwilson				f	t	2016-02-16 06:43:21.078946-05
10	pbkdf2_sha256$20000$TXGzjEoFKCx8$pdutzI8yBwPgMxMfcQ8vBeRO6VjbleTAov/olGvaKjY=	\N	f	admin				f	t	2016-02-16 06:49:36.511938-05
6	pbkdf2_sha256$20000$6vXsglSrKYya$KDooEeivtrBmyRhekn6RaT9clFsXvrO99gTvmdanPi4=	\N	f	mdemontis				f	t	2016-02-16 06:42:37.951723-05
5	pbkdf2_sha256$20000$aHFhlEWPYbcD$KAj78TmPOs6vG/BHm9fF6e50MW6LpMMsIsJWa9Nwu9o=	\N	f	dpeleato				f	t	2016-02-16 06:42:25.397173-05
2	pbkdf2_sha256$20000$xJv21QQUpO6f$SBGmAu5kfh4+WVYZnIryZLzuSBQX1Q4FoeaOcq+j7tk=	\N	f	lpellini				f	t	2016-02-16 06:40:50.93951-05
1	pbkdf2_sha256$20000$4Zf3T0VQ22b0$jL3CWj6K0wfwLGB6YFkwikqI+vhV5bT8a+LCB4zeEYw=	2016-02-19 17:21:05.170576-05	t	edkapps			mar.ale.fer@gmail.com	t	t	2015-12-24 09:59:06.893738-05
4	pbkdf2_sha256$20000$oLmiYyqWtz7S$+9JL0OYO9YPEUie9wiPAqBwX+XdGQ3FL0Mk2gC87Uqo=	2016-02-22 07:27:50.240417-05	f	kalvarez				t	t	2016-02-16 06:41:48-05
3	pbkdf2_sha256$20000$18GqsiXgfQm5$HBi3yEmaBUr/PdTuIMlQ5T+j98AIs1sz0Q8Nx0Eg6F4=	\N	f	libarrola				f	t	2016-02-16 06:41:33.730933-05
\.


ALTER TABLE auth_user ENABLE TRIGGER ALL;

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE auth_user_groups DISABLE TRIGGER ALL;

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


ALTER TABLE auth_user_groups ENABLE TRIGGER ALL;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_user_id_seq', 10, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE auth_user_user_permissions DISABLE TRIGGER ALL;

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	4	1
2	4	2
3	4	3
4	4	4
5	4	5
6	4	6
7	4	10
8	4	11
9	4	12
\.


ALTER TABLE auth_user_user_permissions ENABLE TRIGGER ALL;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 9, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE django_admin_log DISABLE TRIGGER ALL;

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-01-19 17:37:14.083129-05	23	0	3		28	1
2	2016-01-19 17:37:14.086072-05	22	0	3		28	1
3	2016-01-19 17:37:14.08767-05	21	0	3		28	1
4	2016-01-19 17:37:14.089068-05	20	0	3		28	1
5	2016-01-19 17:37:14.090588-05	18	0	3		28	1
6	2016-01-19 17:37:14.09189-05	17	0	3		28	1
7	2016-01-19 17:37:14.09319-05	16	0	3		28	1
8	2016-01-19 17:37:14.102114-05	15	0	3		28	1
9	2016-01-19 17:37:14.10556-05	14	0	3		28	1
10	2016-01-19 17:37:14.107169-05	13	0	3		28	1
11	2016-01-19 17:37:14.108634-05	7	0	3		28	1
12	2016-01-19 17:37:14.11023-05	6	0	3		28	1
13	2016-02-11 08:31:13.071003-05	40	Cloruro, SM 4500 Cl B	3		18	1
14	2016-02-11 08:31:52.539475-05	39	Digestión,  EPA 3005 A   EPA 6010 C	3		18	1
15	2016-02-11 08:31:52.543134-05	38	Cromo Total, EPA 3005 A / 3010 / 3015 / 3020	3		18	1
16	2016-02-11 08:31:52.544926-05	37	Cromo (VI), EPA 7196 A	3		18	1
17	2016-02-11 08:31:52.546268-05	36	Conductividad, SM 5210 B	3		18	1
18	2016-02-11 08:31:52.547626-05	35	Sólidos Volátiles, EPA 160.4/SM 2540 G	3		18	1
19	2016-02-11 08:31:52.548925-05	34	SólidosTotales, EPA 160.3/SM 2540 G	3		18	1
20	2016-02-11 08:31:52.550499-05	33	Nivel de estabilización, Manual CEAMSE Dec. 831	3		18	1
21	2016-02-11 08:31:52.551816-05	32	Líquidos Libres, Dec. 831/93	3		18	1
22	2016-02-11 08:31:52.55311-05	31	Inflamabilidad, ASTM D 93	3		18	1
23	2016-02-11 08:31:52.554401-05	29	Material particulado PM 10, EPA I.O. 2.3	3		18	1
24	2016-02-11 08:31:52.555615-05	28	Sulfuro, SM 4500 -S2 D	3		18	1
25	2016-02-11 08:31:52.556832-05	27	Sulfato, SM 4500 - SO4 E	3		18	1
26	2016-02-11 08:31:52.558031-05	26	Sólidos Suspendidos Totales, EPA 160.2 / SM 2540 D	3		18	1
27	2016-02-11 08:31:52.559215-05	25	Sólidos Sedimentables en  10 min. y 2 Hs., SM 2540 F	3		18	1
28	2016-02-11 08:31:52.560405-05	24	Sólidos Disueltos , SM 2540 C	3		18	1
29	2016-02-11 08:31:52.561555-05	23	Sustancias Solubles en Frío en Eter Etílico, OSN-Modificacion S.M. 6 Ed.	3		18	1
30	2016-02-11 08:31:52.562775-05	22	pH, SM 4500-H B	3		18	1
31	2016-02-11 08:31:52.56398-05	21	Fósforo Total, SM 4500 P E	3		18	1
32	2016-02-11 08:31:52.565166-05	20	Fluoruro Total, SM 4500 F D	3		18	1
33	2016-02-11 08:31:52.566354-05	19	Escherichia Coli, SM 9221 B/F	3		18	1
34	2016-02-11 08:31:52.567537-05	18	Dureza Total, SM 2340 C	3		18	1
35	2016-02-11 08:31:52.568695-05	17	Detergentes, SM 5540 C	3		18	1
36	2016-02-11 08:31:52.5699-05	16	DQO, SM 5220 D	3		18	1
37	2016-02-11 08:31:52.571094-05	15	DBO5, SM 5210 B	3		18	1
38	2016-02-11 08:31:52.572286-05	14	Conductividad, SM 2510 B	3		18	1
39	2016-02-11 08:31:52.57353-05	13	Color, SM 2120-B	3		18	1
40	2016-02-11 08:31:52.574769-05	12	Coliformes Totales, SM 9221 B y C	3		18	1
41	2016-02-11 08:31:52.575936-05	11	Coliformes Fecales, SM 9222	3		18	1
42	2016-02-11 08:31:52.577107-05	10	Cloruro, SM 4500 Cl B	3		18	1
43	2016-02-11 08:31:52.578282-05	9	Cloro Libre Residual, SM 4500-Cl G	3		18	1
44	2016-02-11 08:31:52.579441-05	8	Cianuros Totales, SM 4500-CN	3		18	1
45	2016-02-11 08:31:52.58062-05	7	Alcalinidad Total, SM 2320 B	3		18	1
46	2016-02-11 08:33:32.047564-05	3	Aguas, Niquel, SMWaW 2120-C	3		17	1
47	2016-02-11 08:33:32.050651-05	2	Aguas, Tolueno, SM 3400	3		17	1
48	2016-02-11 08:33:32.052059-05	1	Aguas, Benceno, SM 3400	3		17	1
49	2016-02-11 08:37:16.187426-05	121	EPA 3051 A/6010 C	3		15	1
50	2016-02-11 08:37:16.190827-05	120	SM 4500 P B C/E	3		15	1
51	2016-02-11 08:37:16.19324-05	119	SM 4500 S= D	3		15	1
52	2016-02-11 08:37:16.194786-05	118	O S N 	3		15	1
53	2016-02-11 08:37:16.196497-05	117	SM 2540 D	3		15	1
54	2016-02-11 08:37:16.198026-05	116	SM 2540 B	3		15	1
55	2016-02-11 08:37:16.199507-05	115	SM 4500 NO2 8	3		15	1
56	2016-02-11 08:37:16.200855-05	114	ISO 14911	3		15	1
57	2016-02-11 08:37:16.202279-05	113	SM 4500 H B	3		15	1
58	2016-02-11 08:37:16.203583-05	112	EPA 3015 A/6020 A	3		15	1
59	2016-02-11 08:37:16.20496-05	110	ASTM D 95/ SM 25 40 G	3		15	1
60	2016-02-11 08:37:16.206272-05	109	EPA 5021 A 8015 C	3		15	1
61	2016-02-11 08:37:16.207796-05	108	TNRCC 1005 (C5 a C35)	3		15	1
62	2016-02-11 08:37:16.20921-05	107	EPA 3010 A 7420	3		15	1
63	2016-02-11 08:37:16.210736-05	106	EPA 7470 A	3		15	1
64	2016-02-11 08:37:16.212978-05	105	EPA 7196 A	3		15	1
65	2016-02-11 08:37:16.215069-05	104	SM 4500 B B 	3		15	1
66	2016-02-11 08:37:16.216851-05	103	SM 3500 As B	3		15	1
67	2016-02-11 08:37:16.218572-05	102	EPA 3010 A 7000 B	3		15	1
68	2016-02-11 08:37:16.220659-05	101	SM 4500 CN C/E	3		15	1
69	2016-02-11 08:37:16.222693-05	100	SM 4500 Cl G	3		15	1
70	2016-02-11 08:37:16.224737-05	99	EPA 3535 A 8270 D	3		15	1
71	2016-02-11 08:37:16.226788-05	98	EPA 3535 A 8081 B	3		15	1
72	2016-02-11 08:37:16.228956-05	97	SM 4500 NORG D / SM 4500 NH3 C/F	3		15	1
73	2016-02-11 08:37:16.230676-05	96	SM 4500 NH3 B C/F	3		15	1
74	2016-02-11 08:37:16.232156-05	95	SM 5540 P B C/E	3		15	1
75	2016-02-11 08:37:16.233712-05	94	SM 4500 S D	3		15	1
76	2016-02-11 08:37:16.235315-05	93	SM 2540 F	3		15	1
77	2016-02-11 08:37:16.236894-05	92	SM 4500 H B	3		15	1
78	2016-02-11 08:37:16.23853-05	91	SM 2150 B	3		15	1
79	2016-02-11 08:37:16.240439-05	90	SM 2120 B	3		15	1
80	2016-02-11 08:37:16.242356-05	89	ASTM D 3687/7	3		15	1
81	2016-02-11 08:37:16.243882-05	88	CFR Parte 50	3		15	1
82	2016-02-11 08:37:16.245229-05	87	ASTM 2914	3		15	1
83	2016-02-11 08:37:16.246615-05	86	ASTM 3608	3		15	1
84	2016-02-11 08:37:16.248303-05	85	NIOSH 6601	3		15	1
85	2016-02-11 08:37:16.24982-05	84	EPA 1311- EPA 7000B	3		15	1
86	2016-02-11 08:37:16.25115-05	83	EPA 160.3 / SM 2540 G	3		15	1
87	2016-02-11 08:37:16.252441-05	82	EPA 9045D	3		15	1
88	2016-02-11 08:37:16.253766-05	81	EPA 3005 A / 3010 / 3015 / 3020	3		15	1
89	2016-02-11 08:37:16.255231-05	80	 EPA 3005 A   EPA 6010 C	3		15	1
90	2016-02-11 08:37:16.25654-05	79	EPA 7471 B	3		15	1
91	2016-02-11 08:37:16.257819-05	78	SM 9221 B/C / SM 9225 D	3		15	1
92	2016-02-11 08:37:16.259115-05	77	9222 D Std. Meth	3		15	1
93	2016-02-11 08:37:16.260582-05	76	HACH 8029	3		15	1
94	2016-02-11 08:37:16.262011-05	75	SM2320 B	3		15	1
95	2016-02-11 08:37:16.263211-05	74	SM 4500-NH3 B-C/F	3		15	1
96	2016-02-11 08:37:16.264357-05	73	SM 3500 Mg	3		15	1
97	2016-02-11 08:37:16.2655-05	72	SM 3500 Ca	3		15	1
98	2016-02-11 08:37:16.26682-05	71	EPA 160.4/SM 2540 G	3		15	1
99	2016-02-11 08:37:16.268036-05	70	EPA 160.3/SM 2540 G	3		15	1
100	2016-02-11 08:37:16.269214-05	69	Manual CEAMSE Dec. 831	3		15	1
101	2016-02-11 08:37:16.270423-05	68	Dec. 831/93	3		15	1
102	2016-02-11 08:37:16.271545-05	67	ASTM D 93	3		15	1
103	2016-02-11 08:37:16.272681-05	66	EPA I.O. 2.3	3		15	1
104	2016-02-11 08:37:16.273945-05	65	NIOSH 0600	3		15	1
105	2016-02-11 08:37:16.275349-05	64	ASTM 3687 D	3		15	1
106	2016-02-11 08:37:16.276567-05	63	SM 5220 D	3		15	1
107	2016-02-11 08:37:16.277872-05	62	SM 4500 Cl B	3		15	1
108	2016-02-11 08:37:16.278991-05	61	EPA 8100	3		15	1
109	2016-02-11 08:37:16.280146-05	60	SM 9213 E	3		15	1
110	2016-02-11 08:37:16.281667-05	59	SM 4500- CI B	3		15	1
111	2016-02-11 08:37:16.282842-05	58	SM 4500 -S2 D	3		15	1
112	2016-02-11 08:37:16.284097-05	57	SM 4500 - SO4 E	3		15	1
113	2016-02-11 08:37:16.285426-05	56	SM 4110 B	3		15	1
114	2016-02-11 08:37:16.28673-05	55	SM 4500-NO2-B	3		15	1
115	2016-02-11 08:37:16.287977-05	54	Oddo Thompson	3		15	1
116	2016-02-11 08:37:16.289313-05	53	SMWaW 2150-B	3		15	1
117	2016-02-11 08:37:16.290529-05	52	OSN-Modificacion S.M. 6 Ed.	3		15	1
118	2016-02-11 08:37:16.291784-05	51	SM2540B	3		15	1
119	2016-02-11 08:37:16.293071-05	50	SM 2540 F	3		15	1
120	2016-02-11 08:37:16.294312-05	49	EPA 160.2 / SM 2540 D	3		15	1
121	2016-02-11 08:37:16.295606-05	48	SM 2540 C	3		15	1
122	2016-02-11 08:37:16.296895-05	47	SM 2130 B	3		15	1
123	2016-02-11 08:37:16.298172-05	46	ISO 8467	3		15	1
124	2016-02-11 08:37:16.299437-05	45	SM 4500 O G	3		15	1
125	2016-02-11 08:37:16.300657-05	44	SM 4500-H B	3		15	1
126	2016-02-11 08:37:16.302034-05	43	SM 3500 B	3		15	1
127	2016-02-11 08:37:16.303384-05	42	HACH8120	3		15	1
128	2016-02-11 08:37:16.304598-05	41	EPA 7061A	3		15	1
129	2016-02-11 08:37:16.305925-05	40	HACH 8009	3		15	1
130	2016-02-11 08:37:16.307196-05	39	SMWaW 3500-Cr B	3		15	1
131	2016-02-11 08:37:16.308502-05	38	SM 3500-Cr B          	3		15	1
132	2016-02-11 08:37:16.309797-05	37	HACH Ditizona	3		15	1
133	2016-02-11 08:37:16.311135-05	36	HACH 8008	3		15	1
134	2016-02-11 08:37:16.312442-05	34	SM 3112 B	3		15	1
135	2016-02-11 08:37:16.313764-05	33	EPA 5021 A/ 3550 C/ 8015 C	3		15	1
136	2016-02-11 08:37:16.31531-05	32	SM 3112 B	3		15	1
137	2016-02-11 08:37:16.316623-05	30	SM 9215 B	3		15	1
138	2016-02-11 08:37:16.317989-05	29	EPA 418.1	3		15	1
139	2016-02-11 08:37:16.31934-05	28	TNRCC 1006	3		15	1
140	2016-02-11 08:37:16.32066-05	27	TNRCC 1005	3		15	1
141	2016-02-11 08:37:16.32196-05	26	SM 4500 P E	3		15	1
142	2016-02-11 08:37:16.323323-05	25	SM 4500 F D	3		15	1
143	2016-02-11 08:37:16.324626-05	24	SM 5530 B/C	3		15	1
144	2016-02-11 08:37:16.325962-05	23	SM 9221 B/F	3		15	1
145	2016-02-11 08:37:16.327283-05	22	SM 2340 C	3		15	1
146	2016-02-11 08:37:16.32865-05	21	SM 5540 C	3		15	1
147	2016-02-11 08:37:16.329989-05	20	SM 5220	3		15	1
148	2016-02-11 08:37:16.331579-05	19	SM 2350 B	3		15	1
149	2016-02-11 08:37:55.301094-05	18	SM 5210 B	3		15	1
150	2016-02-11 08:37:55.304146-05	17	SM 2510 B	3		15	1
151	2016-02-11 08:37:55.305883-05	16	SM 2120-B	3		15	1
152	2016-02-11 08:37:55.307335-05	15	SM 9221 B y C	3		15	1
153	2016-02-11 08:37:55.308647-05	14	SM 9222	3		15	1
154	2016-02-11 08:37:55.309919-05	13	SM-Cl B	3		15	1
155	2016-02-11 08:37:55.31122-05	12	SM 4500-Cl G	3		15	1
156	2016-02-11 08:37:55.312386-05	11	SM 4500-CN	3		15	1
157	2016-02-11 08:37:55.313502-05	10	EPA 8015	3		15	1
158	2016-02-11 08:37:55.314623-05	9	EPA 501	3		15	1
159	2016-02-11 08:37:55.315767-05	8	SM 2320 B	3		15	1
160	2016-02-11 08:37:55.316945-05	7	EPA 413.2	3		15	1
161	2016-02-11 08:37:55.318108-05	6	EPA 3050/7000B	3		15	1
162	2016-02-11 08:37:55.31933-05	5	EPA 8100	3		15	1
163	2016-02-11 08:37:55.320551-05	4	SMWaW 2120-C	3		15	1
164	2016-02-11 08:37:55.321705-05	3	ASTM 5504	3		15	1
165	2016-02-11 08:37:55.322889-05	2	EPA 3550/8015	3		15	1
166	2016-02-11 08:37:55.324122-05	1	SM 3400	3		15	1
167	2016-02-11 08:39:57.966912-05	103	Dioxido de Azufre	3		14	1
168	2016-02-11 08:39:57.970516-05	102	Oxído de Nitrogeno	3		14	1
169	2016-02-11 08:39:57.971986-05	101	Monóxido	3		14	1
170	2016-02-11 08:39:57.973289-05	100	Plagicidas Fosforados	3		14	1
171	2016-02-11 08:39:57.974719-05	99	Plagicidas Organoclorados	3		14	1
172	2016-02-11 08:39:57.976167-05	98	Fenoles	3		14	1
173	2016-02-11 08:39:57.977524-05	97	Nitrógeno Total	3		14	1
174	2016-02-11 08:39:57.978756-05	96	Sólidos Volátiles	3		14	1
175	2016-02-11 08:39:57.97993-05	95	SólidosTotales	3		14	1
176	2016-02-11 08:39:57.981193-05	94	Nivel de estabilización	3		14	1
177	2016-02-11 08:39:57.982564-05	93	Líquidos Libres	3		14	1
178	2016-02-11 08:39:57.983744-05	92	Inflamabilidad	3		14	1
179	2016-02-11 08:39:57.985203-05	91	Humedad	3		14	1
180	2016-02-11 08:39:57.986448-05	90	Material particulado PM 10	3		14	1
181	2016-02-11 08:39:57.988409-05	89	Digestión	3		14	1
182	2016-02-11 08:39:57.990522-05	88	Selenio	3		14	1
183	2016-02-11 08:39:57.992401-05	87	Molibdeno	3		14	1
184	2016-02-11 08:39:57.994481-05	86	Estaño	3		14	1
185	2016-02-11 08:39:57.996213-05	85	Cobalto	3		14	1
186	2016-02-11 08:39:57.998056-05	84	Berilio	3		14	1
187	2016-02-11 08:39:57.999753-05	83	Antimonio	3		14	1
188	2016-02-11 08:39:58.001309-05	82	Oxígeno Consumido	3		14	1
189	2016-02-11 08:39:58.002609-05	81	Material Particulado Respirable	3		14	1
190	2016-02-11 08:39:58.00385-05	80	Ioduro	3		14	1
191	2016-02-11 08:39:58.00504-05	79	Fosfato+Disuelto	3		14	1
192	2016-02-11 08:39:58.006379-05	78	Potasio	3		14	1
193	2016-02-11 08:39:58.00758-05	77	Alcalinidad de carbonato	3		14	1
194	2016-02-11 08:39:58.008765-05	76	Estroncio	3		14	1
195	2016-02-11 08:39:58.009934-05	75	Bario	3		14	1
196	2016-02-11 08:39:58.011196-05	74	Mesofilas totales	3		14	1
197	2016-02-11 08:39:58.012453-05	73	Pseudomona Aeuruginosa	3		14	1
198	2016-02-11 08:39:58.013604-05	72	Alcalinidad de bicarbonatos	3		14	1
199	2016-02-11 08:39:58.014965-05	70	Sólidos Disueltos 	3		14	1
200	2016-02-11 08:39:58.016252-05	69	Turbiedad	3		14	1
201	2016-02-11 08:39:58.017487-05	68	Sodio	3		14	1
202	2016-02-11 08:39:58.018701-05	67	Magnesio	3		14	1
203	2016-02-11 08:39:58.019973-05	66	Coliformes Fecales	3		14	1
204	2016-02-11 08:39:58.021306-05	65	Calcio	3		14	1
205	2016-02-11 08:39:58.022498-05	64	Alcalinidad Total	3		14	1
206	2016-02-11 08:39:58.023748-05	63	Densidad	3		14	1
207	2016-02-11 08:39:58.025133-05	62	Sustancias Solubles en Frío en Eter Etílico	3		14	1
208	2016-02-11 08:39:58.026737-05	61	Sólidos Sedimentables en  10 min. y 2 Hs.	3		14	1
209	2016-02-11 08:39:58.02834-05	60	Fósforo Total	3		14	1
210	2016-02-11 08:39:58.029544-05	59	Cromo (III)	3		14	1
211	2016-02-11 08:39:58.030744-05	58	Cromo (VI)	3		14	1
212	2016-02-11 08:39:58.031915-05	57	Compuestos Fenólicos	3		14	1
213	2016-02-11 08:39:58.033171-05	56	Hidrocarburos GRO+DRO	3		14	1
214	2016-02-11 08:39:58.034482-05	55	Cro	3		14	1
215	2016-02-11 08:39:58.035791-05	54	Campaña Catriel x día	3		14	1
216	2016-02-11 08:39:58.037534-05	53	Campaña RDLS x día	3		14	1
217	2016-02-11 08:39:58.039363-05	52	Campaña Plaza Huincul x día	3		14	1
218	2016-02-11 08:39:58.040696-05	51	Campaña Añelo x día	3		14	1
219	2016-02-11 08:39:58.041946-05	50	Campaña Neuquen x día	3		14	1
220	2016-02-11 08:39:58.043204-05	49	Conductividad	3		14	1
221	2016-02-11 08:39:58.044642-05	48	Detergentes	3		14	1
222	2016-02-11 08:39:58.046153-05	47	DBO5	3		14	1
223	2016-02-11 08:39:58.047403-05	46	DQO	3		14	1
224	2016-02-11 08:39:58.048576-05	45	Oxígeno Disuelto	3		14	1
225	2016-02-11 08:39:58.050058-05	44	Sólidos Suspendidos Totales	3		14	1
226	2016-02-11 08:39:58.051246-05	43	Pseudomona Aeruginosa	3		14	1
227	2016-02-11 08:39:58.05242-05	42	Mesófilas Totales	3		14	1
228	2016-02-11 08:39:58.053648-05	41	Escherichia Coli	3		14	1
229	2016-02-11 08:39:58.054815-05	40	Coliformes Totales	3		14	1
230	2016-02-11 08:39:58.055929-05	39	Zinc	3		14	1
231	2016-02-11 08:39:58.057151-05	38	Vanadio	3		14	1
232	2016-02-11 08:39:58.058375-05	37	Plomo	3		14	1
233	2016-02-11 08:39:58.059537-05	36	Plata	3		14	1
234	2016-02-11 08:39:58.060706-05	35	Mercurio	3		14	1
235	2016-02-11 08:39:58.061942-05	34	Manganeso	3		14	1
236	2016-02-11 08:39:58.063176-05	33	Hierro	3		14	1
237	2016-02-11 08:39:58.064365-05	32	Cromo Total	3		14	1
238	2016-02-11 08:39:58.066921-05	31	Cobre	3		14	1
239	2016-02-11 08:39:58.068787-05	30	Cadmio	3		14	1
240	2016-02-11 08:39:58.07075-05	29	Arsénico	3		14	1
241	2016-02-11 08:39:58.072615-05	28	Aluminio	3		14	1
242	2016-02-11 08:39:58.074429-05	27	Hidrocarburos Totales C5-C35	3		14	1
243	2016-02-11 08:39:58.076197-05	26	Turbidez	3		14	1
244	2016-02-11 08:39:58.078042-05	25	Sulfuro	3		14	1
245	2016-02-11 08:39:58.079823-05	24	Sulfato	3		14	1
246	2016-02-11 08:39:58.081639-05	23	Sólidos disueltos	3		14	1
247	2016-02-11 08:39:58.083481-05	22	pH	3		14	1
248	2016-02-11 08:39:58.085457-05	21	Olor	3		14	1
249	2016-02-11 08:39:58.087092-05	20	Nitrito	3		14	1
250	2016-02-11 08:39:58.088363-05	19	Nitrato	3		14	1
251	2016-02-11 08:39:58.089756-05	18	Fluoruro Total	3		14	1
252	2016-02-11 08:39:58.091071-05	17	Dureza Total	3		14	1
253	2016-02-11 08:39:58.092354-05	16	Color	3		14	1
254	2016-02-11 08:39:58.09352-05	15	Cloruro	3		14	1
255	2016-02-11 08:39:58.094703-05	14	Cloro Libre Residual	3		14	1
256	2016-02-11 08:39:58.095914-05	13	Cianuros Totales	3		14	1
257	2016-02-11 08:39:58.097148-05	12	yoduro	3		14	1
258	2016-02-11 08:39:58.098471-05	11	Bromuro	3		14	1
259	2016-02-11 08:39:58.09983-05	10	Boro	3		14	1
260	2016-02-11 08:39:58.101182-05	9	Aceites y Grasas	3		14	1
261	2016-02-11 08:39:58.102487-05	8	Amonio (como NH3)	3		14	1
262	2016-02-11 08:39:58.103655-05	7	Xileno	3		14	1
263	2016-02-11 08:39:58.104889-05	6	Etilbenceno	3		14	1
264	2016-02-11 08:39:58.106236-05	5	Niquel	3		14	1
265	2016-02-11 08:39:58.107456-05	4	Sulf Hidrogeno en Gas	3		14	1
266	2016-02-11 08:39:58.108704-05	2	Tolueno	3		14	1
267	2016-02-11 08:40:07.294488-05	1	Benceno	3		14	1
268	2016-02-16 06:40:51.039601-05	2	lpellini	1		4	1
269	2016-02-16 06:41:33.834879-05	3	libarrola	1		4	1
270	2016-02-16 06:41:48.12943-05	4	kalvarez	1		4	1
271	2016-02-16 06:42:25.518734-05	5	dpeleato	1		4	1
272	2016-02-16 06:42:38.051789-05	6	mdemontis	1		4	1
273	2016-02-16 06:42:50.973586-05	7	msoto	1		4	1
274	2016-02-16 06:43:09.992812-05	8	pbrissio	1		4	1
275	2016-02-16 06:43:21.179514-05	9	cwilson	1		4	1
276	2016-02-16 06:47:51.636013-05	4	kalvarez	2	Modifica is_staff y user_permissions.	4	1
277	2016-02-16 06:49:36.628843-05	10	admin	1		4	1
278	2016-02-19 16:09:55.225296-05	4	kalvarez	2	Modifica password.	4	1
279	2016-02-19 16:10:41.498034-05	6	mdemontis	2	Modifica password.	4	1
280	2016-02-19 16:20:20.132052-05	5	dpeleato	2	Modifica password.	4	1
281	2016-02-19 16:22:00.676338-05	2	lpellini	2	Modifica password.	4	1
282	2016-02-19 16:39:14.527302-05	98	Efluentes, Escherichia Coli, SMWaW  9221 F 	3		17	1
283	2016-02-19 17:25:23.383044-05	4	plantillas	2	Modifica presupuesto_condiciones_comerciales y presupuesto_condiciones_tecnicas.	25	1
284	2016-02-23 07:17:47.436176-05	3	libarrola	2	Modifica password.	4	1
\.


ALTER TABLE django_admin_log ENABLE TRIGGER ALL;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 284, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('django_content_type_id_seq', 31, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE django_migrations DISABLE TRIGGER ALL;

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-12-24 09:54:42.653242-05
2	auth	0001_initial	2015-12-24 09:54:42.766021-05
3	admin	0001_initial	2015-12-24 09:54:42.809053-05
4	contenttypes	0002_remove_content_type_name	2015-12-24 09:54:42.886176-05
5	auth	0002_alter_permission_name_max_length	2015-12-24 09:54:42.912119-05
6	auth	0003_alter_user_email_max_length	2015-12-24 09:54:42.934112-05
7	auth	0004_alter_user_username_opts	2015-12-24 09:54:42.951897-05
8	auth	0005_alter_user_last_login_null	2015-12-24 09:54:42.972191-05
9	auth	0006_require_contenttypes_0002	2015-12-24 09:54:42.974493-05
10	presupuestos	0001_initial	2015-12-24 09:54:43.577263-05
11	sessions	0001_initial	2015-12-24 09:54:43.600476-05
12	presupuestos	0002_plantillas_impresion	2015-12-24 09:57:26.86984-05
13	presupuestos	0003_auto_20160106_1934	2016-01-06 17:34:11.205165-05
14	presupuestos	0004_auto_20160119_1905	2016-01-19 17:06:05.600017-05
15	presupuestos	0005_auto_20160119_1936	2016-01-19 17:36:20.53248-05
16	presupuestos	0006_analisis	2016-01-26 17:36:40.740505-05
17	presupuestos	0007_auto_20160219_1825	2016-02-19 16:25:50.113056-05
\.


ALTER TABLE django_migrations ENABLE TRIGGER ALL;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE django_session DISABLE TRIGGER ALL;

COPY django_session (session_key, session_data, expire_date) FROM stdin;
39loekn3rwqm4w0l5yoou2sxdhwjunik	YTI0ZmE3NjlhODNkY2Y3NTdjMTYyNDJjMzQyOTYyNWEyZDMwMzEyMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZTM0OWVkYjdiOGQyN2Q1ZWIzMmNkM2NiMDZmNjkyMzc3NjMxMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-01-07 11:59:03.787209-05
n9u9gq4869o6qftmqr01rtgv7h7f4ksg	YTI0ZmE3NjlhODNkY2Y3NTdjMTYyNDJjMzQyOTYyNWEyZDMwMzEyMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZTM0OWVkYjdiOGQyN2Q1ZWIzMmNkM2NiMDZmNjkyMzc3NjMxMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-02-02 17:25:23.823929-05
idw316om9mr9dj0lkix0h3x6m2bhaz3m	YTI0ZmE3NjlhODNkY2Y3NTdjMTYyNDJjMzQyOTYyNWEyZDMwMzEyMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZTM0OWVkYjdiOGQyN2Q1ZWIzMmNkM2NiMDZmNjkyMzc3NjMxMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-03-04 16:33:32.045087-05
gpsd0y6ofw5u8bqnhu5w8vming2ijp84	YTI0ZmE3NjlhODNkY2Y3NTdjMTYyNDJjMzQyOTYyNWEyZDMwMzEyMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVkZTM0OWVkYjdiOGQyN2Q1ZWIzMmNkM2NiMDZmNjkyMzc3NjMxMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-03-04 17:21:05.173086-05
mrxk07l32tloemve68949kni2fosrbjb	MDg4YWU3ZjNkYjZhYjlmOTQ2OWU2MmNlN2M3NGQ5N2E5YzAxNGM4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM2ZWQ5Nzk4MTJkOTRhMjNkZmZkZDAxNzUyNjE4ZDg3MWZkMTk2NmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-03-07 07:27:50.24302-05
\.


ALTER TABLE django_session ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_cliente; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_cliente DISABLE TRIGGER ALL;

COPY presupuestos_cliente (id, empresa, contacto, funcion, domicilio, localidad, telefono_fijo, telefono_movil, email, cuit, nota) FROM stdin;
3	Pan American Energy	Maria Eugenia Barbero	Coordinadora Medio Ambiente	ALEM LEANDRO	CABA	(54-299) 489 5500		mbarbero@pan-energy.com		
\.


ALTER TABLE presupuestos_cliente ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_estado; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_estado DISABLE TRIGGER ALL;

COPY presupuestos_estado (id, estado_actual) FROM stdin;
2	enviado
3	aprobado
4	suspendido
5	rechazado
1	pendiente
\.


ALTER TABLE presupuestos_estado ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_familia; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_familia DISABLE TRIGGER ALL;

COPY presupuestos_familia (id, nombre) FROM stdin;
12	Otros
13	Microbiologico
11	Físico-Químico
9	Metales
10	Metales Generales
14	Hidrocarburos Totales
\.


ALTER TABLE presupuestos_familia ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_matriz; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_matriz DISABLE TRIGGER ALL;

COPY presupuestos_matriz (id, nombre_matriz) FROM stdin;
4	Suelo
1	Aguas
5	Efluentes
6	Barros/Lodos
2	Calidad de Aire
7	Emisiones Gaseosas
8	Ambiente Laboral
9	Lixiviados
10	Hidrocarburos Líquidos
11	Gas
\.


ALTER TABLE presupuestos_matriz ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_tipo; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_tipo DISABLE TRIGGER ALL;

COPY presupuestos_tipo (id, nombre_tipo) FROM stdin;
1	industrial
2	ambiental
\.


ALTER TABLE presupuestos_tipo ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_presupuesto; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_presupuesto DISABLE TRIGGER ALL;

COPY presupuestos_presupuesto (id, referencia_clave, referencia, fecha_solicitud, fecha_vencimiento, fecha_envio, fecha_aprobacion, descripcion, observacion, descuento, cliente_id, estado_id, tipo_id, impresion_condiciones_comerciales, impresion_condiciones_tecnicas, impresion_introduccion, impresion_nota_muestreo) FROM stdin;
\.


ALTER TABLE presupuestos_presupuesto ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_item; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_item DISABLE TRIGGER ALL;

COPY presupuestos_item (id, numero, descripcion, "cantidadMuestra", matriz_id, presupuesto_id, descuento, seleccionado, total_con_descuento, total_sin_descuento) FROM stdin;
\.


ALTER TABLE presupuestos_item ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_muestra_estado; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_muestra_estado DISABLE TRIGGER ALL;

COPY presupuestos_muestra_estado (id, estado_actual) FROM stdin;
\.


ALTER TABLE presupuestos_muestra_estado ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_orden_trabajo DISABLE TRIGGER ALL;

COPY presupuestos_orden_trabajo (id, referencia_clave, referencia, descripcion, prioridad, fecha_creacion, presupuesto_id) FROM stdin;
\.


ALTER TABLE presupuestos_orden_trabajo ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_ot_estado; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_ot_estado DISABLE TRIGGER ALL;

COPY presupuestos_ot_estado (id, estado_actual) FROM stdin;
1	pendiente
2	realizado
\.


ALTER TABLE presupuestos_ot_estado ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_ot_item; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_ot_item DISABLE TRIGGER ALL;

COPY presupuestos_ot_item (id, numero, cantidad, estado_id, item_id, orden_trabajo_id, muestreo_propio, nota_muestreo) FROM stdin;
\.


ALTER TABLE presupuestos_ot_item ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_muestra; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_muestra DISABLE TRIGGER ALL;

COPY presupuestos_muestra (id, referencia_clave, referencia, ingreso_muestra, fecha_ingreso, cadena_custodia, rotulo, ubicacion, sitio_muestreo, muestreador, peso, volumen, caudal, preservacion, fecha_muestreo, coordenada, sistema_coordenada, observacion, estado_id, ot_item_id) FROM stdin;
\.


ALTER TABLE presupuestos_muestra ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_parametro; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_parametro DISABLE TRIGGER ALL;

COPY presupuestos_parametro (id, nombre_par, familia_id) FROM stdin;
104	Absorción atómica x metal	10
105	Aceites y Grasas	11
106	Acidez	11
107	Aluminio (Al)	9
108	Antimonio (Sb)	9
109	Arsenico (As)	9
110	Bario (Ba)	9
111	Berilio (Be)                       	9
112	Bifenilos Policlorados	12
113	Bromuro	11
114	Cadmio (Cd)	9
115	Cianuros destruíbles por cloro	11
116	Cloro Libre 	11
118	Cloruro	11
119	Cobalto (Co)                                    	9
120	Cobre (Cu)	9
121	Coliformes Fecales	13
122	Coliformes Totales	13
124	Color	11
125	Conductividad	11
126	Cromo Total (Cr)	9
127	D.B.O.5	11
128	D.Q.O.	11
129	Demanda de cloro	11
130	Detergentes (S.A.A.M)	11
131	Digestión (Exluyendo Hg)	9
132	DRO (C10-C28)	14
133	Escherichia Coli	13
134	Estaño (Sn)	9
135	Estroncio (Sr)	9
136	Fenoles Totales	11
137	Fluoruro	11
138	Fosforo como Ortofosfato  	11
139	Fósforo inorgánico	11
140	Fósforo orgánico	11
141	Fósforo reactivo soluble	11
142	Fósforo Total	11
143	GRO (C6-C10)	14
144	Hidrocarburos Discriminados Fr. Alifáticos y Arómaticos	14
145	Hidrocarburos Totales de C6-C35	14
146	Hierro (Fe) Total	9
147	Ioduro	9
148	Manganeso (Mn)	9
149	Mercurio (Hg)	9
150	Molibdeno (Mb)                                	9
152	Niquel  (Ni)	9
153	Nitrito	9
154	Nitrógeno amoniacal	11
155	Nitrógeno Total Kjeldahl	11
157	Oxidabilidad	11
158	Oxigeno Disuelto	11
159	pH	11
160	pH de Saturacion	11
161	Plata (Ag)	9
162	Plomo (Pb)	9
163	Potasio (K)	9
164	Pseudomona Aeuriginosa	13
165	S.S.E.E.	11
166	Selenio (Se)	9
167	Sodio (Na)	9
168	Sólidos Disueltos Totales	11
169	Sólidos Fijos 	11
170	Sólidos Suspendidos Totales	11
171	Sulfato	11
172	Sulfuro Total	11
173	Talio (Tl)	9
174	TOC	11
175	Vanadio (V)	9
176	Zinc (Zn)	9
\.


ALTER TABLE presupuestos_parametro ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_tecnica; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_tecnica DISABLE TRIGGER ALL;

COPY presupuestos_tecnica (id, nombre_tec, derivacion, link, observacion) FROM stdin;
122	A.A. Hidruros			
123	A.A. llama aire acetileno			
124	A.A. llama Oxido Nitroso			
125	A.A. Vapor frio			
126	EPA  3510 C/ 8015 C			
127	EPA 1664 A			
128	EPA 3005 A / 3010 / 3015 / 3020 A/SMWaW 3030			
129	EPA 3510 C/ 8082 A			
130	EPA 5021 A/  8015 C			
131	EPA 7090 	CROMAQUIN		
132	EPA 7200 / EPA 3050 B	CROMAQUIN		
133	EPA 7480 / EPA 3050 B	CROMAQUIN		
134	EPA 7741 / EPA 3050 B	CROMAQUIN		
135	EPA 7840	CROMAQUIN		
136	EPA 7870 / EPA 3050 B	CROMAQUIN		
137	Hach Method 8031			
138	OSN Modificacion SMWaW 6 Ed. 			
139	SMWaW  2120 B			
140	SMWaW  2330 B			
141	SMWaW  2510 B			
142	SMWaW  3030 E/ EPA 7462			
143	SMWaW  3500 Cr B          			
144	SMWaW  4500 Cl  B			
145	SMWaW  4500 O G 			
146	SMWaW  5210 B			
147	SMWaW  5220 D			
148	SMWaW  5540 C			
149	SMWaW  9213 F			
150	SMWaW  9221 B			
151	SMWaW  9221 E			
152	SMWaW  9221 F 			
153	SMWaW 2310 B			
154	SMWaW 2350 B/ 4500 Cl G			
155	SMWaW 2540 C			
156	SMWaW 2540 D			
157	SMWaW 2540 E			
158	SMWaW 3030 E/ 3114 B/C			
159	SMWaW 3030 E/ EPA 7000 B			
160	SMWaW 3112 B			
161	SMWaW 4500 Br  B			
162	SMWaW 4500 Cl G			
163	SMWaW 4500 CN G			
164	SMWaW 4500 F D			
165	SMWaW 4500 H B			
169	SMWaW 4500 S D			
171	SMWaW 5310 B			
172	SMWaW 5520 B C			
173	SMWaW 5530 B C			
177	TNRCC 1005			
178	TNRCC 1006			
174	SMWaW 4500 P B C			
168	SMWaW 4500 Norg C/ NH³ F	IDAC		
175	SMWaW 4500 N H³ C F			
167	SMWaW 4500 NO² B			
170	SMWaW 4500 SO₄ ²  E			
166	SMWaW 4500 KMnO₄			
\.


ALTER TABLE presupuestos_tecnica ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_analisis; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_analisis DISABLE TRIGGER ALL;

COPY presupuestos_analisis (id, lct, valor, verificacion, observacion, muestra_id, parametro_id, tecnica_id, unidades) FROM stdin;
\.


ALTER TABLE presupuestos_analisis ENABLE TRIGGER ALL;

--
-- Name: presupuestos_analisis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_analisis_id_seq', 1, false);


--
-- Data for Name: presupuestos_campania; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_campania DISABLE TRIGGER ALL;

COPY presupuestos_campania (id, numero, descripcion, cantidad, unidad_medida, valor_unitario, valor_total_con_descuento, descuento, presupuesto_id, valor_total_sin_descuento) FROM stdin;
\.


ALTER TABLE presupuestos_campania ENABLE TRIGGER ALL;

--
-- Name: presupuestos_campania_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_campania_id_seq', 2, true);


--
-- Name: presupuestos_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_cliente_id_seq', 4, true);


--
-- Name: presupuestos_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_estado_id_seq', 5, true);


--
-- Name: presupuestos_familia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_familia_id_seq', 14, true);


--
-- Name: presupuestos_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_item_id_seq', 12, true);


--
-- Name: presupuestos_matriz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_matriz_id_seq', 11, true);


--
-- Data for Name: presupuestos_unidades; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_unidades DISABLE TRIGGER ALL;

COPY presupuestos_unidades (id, nombre_unidad) FROM stdin;
3	mg/L
5	µg/L
7	µS/cm
8	Ausencia/ Presencia
9	como mg CaCO3/L
1	NMP/100 ml
2	SI
4	U Pt-Co
10	Unidad de PH
\.


ALTER TABLE presupuestos_unidades ENABLE TRIGGER ALL;

--
-- Data for Name: presupuestos_matriztecnicalct; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_matriztecnicalct DISABLE TRIGGER ALL;

COPY presupuestos_matriztecnicalct (id, lct, matriz_id, parametro_id, tecnica_id, unidad_id) FROM stdin;
4	0.060000	1	107	159	3
5	0.060000	5	107	159	3
6	0.005000	1	108	142	3
7	0.005000	5	108	142	3
8	0.010000	1	109	158	3
9	0.010000	5	109	158	3
10	0.002200	1	110	159	3
11	0.002200	5	110	159	3
12	0.003000	1	114	159	3
13	0.003000	5	114	159	3
14	0.018000	1	120	159	3
15	0.018000	5	120	159	3
16	0.050000	5	135	159	3
17	0.050000	1	146	159	3
18	0.078000	5	146	159	3
19	0.020000	1	148	159	3
20	0.020000	5	148	159	3
21	0.020000	1	152	159	3
22	0.020000	5	152	159	3
23	0.005000	1	161	159	3
24	0.005000	5	161	159	3
25	0.027000	1	162	159	3
26	0.027000	5	162	159	3
27	0.200000	1	163	159	3
28	0.200000	5	163	159	3
29	0.440000	1	167	159	3
30	0.440000	5	167	159	3
31	0.015000	5	175	160	3
32	0.050000	1	149	159	3
33	0.050000	5	149	159	3
34	0.019000	1	126	143	3
35	0.019000	5	126	143	3
36	0.004000	1	176	159	3
37	0.004000	5	176	159	3
38	0.100000	1	159	165	10
39	0.100000	5	159	165	10
40	1.000000	1	125	141	7
41	1.000000	5	125	141	7
42	0.500000	5	158	145	3
43	5.000000	5	127	146	3
44	5.000000	5	128	147	3
45	5.000000	1	124	139	4
46	5.000000	5	124	139	4
47	5.000000	5	165	138	3
48	0.025000	1	130	148	3
49	0.025000	5	130	148	3
50	0.016000	1	154	175	3
51	0.016000	5	154	175	3
52	0.006000	1	153	167	3
53	0.006000	5	153	167	3
54	5.000000	5	105	172	3
55	5.000000	5	105	127	3
56	0.020000	1	116	162	3
57	0.020000	5	116	162	3
58	0.010000	5	172	169	3
59	1.000000	5	106	153	9
60	1.000000	1	118	144	3
61	1.000000	5	118	144	3
62	0.020000	1	137	164	3
63	0.020000	5	137	164	3
64	1.000000	1	171	170	3
65	1.000000	5	171	170	3
66	0.100000	1	113	161	3
67	0.100000	5	113	161	3
68	0.050000	1	115	163	3
69	0.050000	5	115	163	3
70	0.100000	1	129	154	3
71	0.100000	5	129	154	3
72	0.010000	1	136	173	3
73	0.010000	5	136	173	3
74	0.010000	1	138	174	3
75	0.010000	5	138	174	3
76	0.010000	1	139	174	3
77	0.010000	5	139	174	3
78	0.010000	1	140	174	3
79	0.010000	5	140	174	3
80	0.010000	1	142	174	3
81	0.010000	5	142	174	3
82	0.010000	1	141	174	3
83	0.010000	5	141	174	3
84	0.500000	5	147	137	3
85	0.500000	5	157	166	3
86	1.000000	1	168	155	3
87	1.000000	5	168	155	3
88	0.500000	1	170	156	3
89	0.500000	5	170	156	3
90	1.000000	5	169	157	3
91	2.000000	5	174	171	3
92	3.000000	1	122	150	1
94	3.000000	1	121	151	1
95	3.000000	5	121	151	1
93	3.000000	5	122	150	1
96	0.000000	1	133	152	8
99	0.000000	1	164	149	8
100	3.000000	5	164	149	1
101	0.200000	5	144	178	3
102	0.200000	5	145	177	3
97	3.000000	5	133	152	1
\.


ALTER TABLE presupuestos_matriztecnicalct ENABLE TRIGGER ALL;

--
-- Name: presupuestos_matriztecnicalct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_matriztecnicalct_id_seq', 102, true);


--
-- Name: presupuestos_muestra_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_muestra_estado_id_seq', 1, false);


--
-- Name: presupuestos_muestra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_muestra_id_seq', 1, false);


--
-- Data for Name: presupuestos_numerador; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_numerador DISABLE TRIGGER ALL;

COPY presupuestos_numerador (id, nombre, ultimo_valor) FROM stdin;
3	orden_trabajo_referencia	7
1	presupuesto_referencia	15
\.


ALTER TABLE presupuestos_numerador ENABLE TRIGGER ALL;

--
-- Name: presupuestos_numerador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_numerador_id_seq', 3, true);


--
-- Name: presupuestos_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_orden_trabajo_id_seq', 7, true);


--
-- Name: presupuestos_ot_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_ot_estado_id_seq', 2, true);


--
-- Name: presupuestos_ot_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_ot_item_id_seq', 25, true);


--
-- Name: presupuestos_parametro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_parametro_id_seq', 176, true);


--
-- Data for Name: presupuestos_parametroprecio; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_parametroprecio DISABLE TRIGGER ALL;

COPY presupuestos_parametroprecio (id, precio_parametro, fecha_precio, seleccionado, matriz_id, parametro_id, tecnica_id, fuente_precio) FROM stdin;
95	841.00	2015-12-23	f	5	160	140	CEMA- 5%
96	135.00	2015-12-23	f	1	125	141	CEMA- 5%
45	335.00	2015-12-23	f	5	108	142	CEMA- 5%
97	135.00	2015-12-23	f	5	125	141	CEMA- 5%
98	185.00	2015-12-23	f	5	158	145	CEMA- 5%
44	335.00	2015-12-23	f	1	108	142	CEMA- 5%
46	335.00	2015-12-23	f	1	109	158	CEMA- 5%
43	252.00	2015-12-23	f	5	107	159	CEMA- 5%
47	335.00	2015-12-23	f	5	109	158	CEMA- 5%
48	252.00	2015-12-23	f	1	110	159	CEMA- 5%
49	525.00	2015-12-23	f	5	110	159	CEMA- 5%
50	219.00	2015-12-23	f	1	114	159	CEMA- 5%
51	219.00	2015-12-23	f	5	114	159	CEMA- 5%
52	219.00	2015-12-23	f	1	120	159	CEMA- 5%
53	219.00	2015-12-23	f	5	120	159	CEMA- 5%
54	219.00	2015-12-23	f	5	135	159	CEMA- 5%
55	219.00	2015-12-23	f	1	146	159	CEMA- 5%
56	219.00	2015-12-23	f	5	146	159	CEMA- 5%
57	219.00	2015-12-23	f	1	148	159	CEMA- 5%
58	219.00	2015-12-23	f	5	148	159	CEMA- 5%
59	219.00	2015-12-23	f	1	152	159	CEMA- 5%
60	219.00	2015-12-23	f	5	152	159	CEMA- 5%
61	219.00	2015-12-23	f	1	161	159	CEMA- 5%
62	219.00	2015-12-23	f	5	161	159	CEMA- 5%
63	219.00	2015-12-23	f	1	162	159	CEMA- 5%
64	219.00	2015-12-23	f	5	162	159	CEMA- 5%
65	219.00	2015-12-23	f	1	163	159	CEMA- 5%
66	219.00	2015-12-23	f	5	163	159	CEMA- 5%
67	219.00	2015-12-23	f	1	167	159	CEMA- 5%
68	219.00	2015-12-23	f	5	167	159	CEMA- 5%
69	252.00	2015-12-23	f	5	175	160	CEMA- 5%
70	371.00	2015-12-23	f	5	149	159	CEMA- 5%
71	371.00	2015-12-23	f	1	149	159	CEMA- 5%
74	219.00	2015-12-23	f	1	126	143	CEMA- 5%
75	219.00	2015-12-23	f	5	126	143	CEMA- 5%
76	219.00	2015-12-23	f	1	176	159	CEMA- 5%
77	219.00	2015-12-23	f	5	176	159	CEMA- 5%
78	203.00	2015-12-16	f	5	111	131	CROMAQUIN
79	176.00	2015-12-16	f	5	119	132	CROMAQUIN
80	214.00	2015-12-16	f	5	134	136	CROMAQUIN
81	203.00	2015-12-16	f	5	150	133	CROMAQUIN
83	271.00	2015-12-16	f	1	166	134	CROMAQUIN
84	271.00	2016-02-12	f	5	166	134	CROMAQUIN
85	176.00	2015-12-16	f	5	173	135	CROMAQUIN
88	219.00	2015-12-23	f	5	104	123	CEMA- 5%
89	252.00	2015-12-23	f	5	104	124	CEMA- 5%
86	135.00	2015-12-23	f	5	131	128	CEMA- 5%
90	335.00	2015-12-23	f	5	104	122	CROMAQUIN
91	371.00	2015-12-23	f	5	104	125	CEMA- 5%
92	84.00	2015-12-23	f	1	159	165	CEMA- 5%
93	84.00	2015-12-23	f	5	159	165	CEMA- 5%
94	841.00	2015-12-23	f	1	160	140	CROMAQUIN
99	504.00	2015-12-23	f	5	127	146	CEMA- 5%
100	352.00	2015-12-23	f	5	128	147	CEMA- 5%
101	67.00	2015-12-23	f	1	124	139	CEMA- 5%
102	67.00	2015-12-23	f	5	124	139	67
103	252.00	2015-12-23	f	5	165	138	CEMA- 5%
104	252.00	2015-12-23	f	1	130	148	CEMA- 5%
105	252.00	2015-12-23	f	5	130	148	CEMA- 5%
106	234.00	2015-06-01	f	5	155	168	IDAC
107	135.00	2015-12-23	f	1	154	175	CEMA- 5%
108	135.00	2015-12-23	f	5	154	175	CEMA- 5%
109	151.00	2015-12-23	f	1	153	167	CEMA- 5%
110	151.00	2015-12-23	f	5	153	167	CEMA- 5%
111	462.00	2015-12-23	f	5	105	172	CEMA- 5%
112	753.00	2015-12-23	f	5	105	127	CEMA- 5%
113	135.00	2015-12-23	f	1	116	162	CEMA- 5%
114	135.00	2015-12-23	f	5	116	162	CEMA- 5%
115	335.00	2015-12-23	f	5	172	169	CEMA- 5%
116	168.00	2015-12-23	f	5	106	153	CEMA- 5%
117	201.00	2015-12-23	f	1	118	144	CEMA- 5%
118	201.00	2015-12-23	f	5	118	144	CEMA- 5%
119	168.00	2015-12-23	f	1	137	164	CEMA- 5%
120	168.00	2015-12-23	f	5	137	164	CEMA- 5%
121	201.00	2015-12-23	f	1	171	170	CEMA- 5%
122	201.00	2015-12-23	f	5	171	170	201
124	270.00	2015-07-07	f	5	113	161	INDUSER
123	270.00	2015-07-07	f	1	113	161	INDUSER
125	739.00	2015-12-23	f	1	115	163	CEMA- 5%
126	739.00	2015-12-23	f	5	115	163	CEMA- 5%
127	252.00	2015-12-23	f	1	129	154	CEMA- 5%
128	252.00	2015-12-23	f	5	129	154	CEMA- 5%
129	319.00	2015-12-23	f	1	136	173	CEMA- 5%
130	319.00	2015-12-23	f	5	136	173	CEMA- 5%
131	248.00	2015-12-23	f	1	138	174	CEMA- 5%
132	248.00	2015-12-23	f	5	138	174	CEMA- 5%
133	248.00	2015-12-23	f	1	139	174	CEMA- 5%
134	248.00	2015-12-23	f	5	139	174	CEMA- 5%
135	504.00	2015-12-23	f	1	140	174	CEMA- 5%
136	504.00	2015-12-23	f	5	140	174	CEMA- 5%
137	269.00	2015-12-23	f	1	142	174	CEMA- 5%
138	269.00	2015-12-23	f	5	142	174	CEMA- 5%
139	248.00	2015-12-23	f	1	141	174	CEMA- 5%
140	248.00	2015-12-23	f	5	141	174	CEMA- 5%
141	1804.00	2015-07-07	f	5	147	137	INDUSER
142	236.00	2015-12-23	f	5	157	166	CEMA- 5%
143	236.00	2015-12-23	f	1	168	155	CEMA- 5%
144	236.00	2015-12-23	f	5	168	155	CEMA- 5%
145	236.00	2015-12-23	f	1	170	156	CEMA- 5%
146	236.00	2015-12-23	f	5	170	156	CEMA- 5%
147	252.00	2015-12-23	f	5	169	157	CEMA- 5%
148	772.00	2015-12-23	f	5	174	171	CEMA- 5%
150	1026.00	2015-12-23	f	5	112	129	CEMA- 5%
151	236.00	2015-12-23	f	1	122	150	CEMA- 5%
152	236.00	2015-12-23	f	5	122	150	CEMA- 5%
87	135.00	2015-12-23	f	1	131	128	CEMA- 5%
153	236.00	2015-12-23	f	1	121	151	CEMA- 5%
154	236.00	2015-12-23	f	5	121	151	CEMA- 5%
42	252.00	2015-12-23	f	1	107	159	CEMA- 5%
155	269.00	2015-12-23	f	1	133	152	CEMA- 5%
156	269.00	2015-12-23	f	5	133	152	CEMA- 5%
157	236.00	2015-12-23	f	1	164	149	CEMA- 5%
158	236.00	2015-12-23	f	5	164	149	CEMA- 5%
159	1512.00	2015-12-23	f	5	144	178	CEMA- 5%
160	874.00	2015-12-23	f	5	145	177	CEMA- 5%
161	673.00	2015-12-23	f	5	143	130	CEMA- 5%
162	874.00	2015-12-23	f	5	132	126	CEMA- 5%
\.


ALTER TABLE presupuestos_parametroprecio ENABLE TRIGGER ALL;

--
-- Name: presupuestos_parametroprecio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_parametroprecio_id_seq', 162, true);


--
-- Data for Name: presupuestos_perfilprecio; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_perfilprecio DISABLE TRIGGER ALL;

COPY presupuestos_perfilprecio (id, nombre, precio, fecha_precio, matriz_id, fuente_precio, seleccionado) FROM stdin;
\.


ALTER TABLE presupuestos_perfilprecio ENABLE TRIGGER ALL;

--
-- Name: presupuestos_perfilprecio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_perfilprecio_id_seq', 7, true);


--
-- Data for Name: presupuestos_perfilprecio_parametro; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_perfilprecio_parametro DISABLE TRIGGER ALL;

COPY presupuestos_perfilprecio_parametro (id, parametro_id, "perfilPrecio_id", tecnica_id) FROM stdin;
\.


ALTER TABLE presupuestos_perfilprecio_parametro ENABLE TRIGGER ALL;

--
-- Name: presupuestos_perfilprecio_parametro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_perfilprecio_parametro_id_seq', 12, true);


--
-- Data for Name: presupuestos_plantillas_impresion; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_plantillas_impresion DISABLE TRIGGER ALL;

COPY presupuestos_plantillas_impresion (id, presupuesto_condiciones_comerciales, presupuesto_condiciones_tecnicas) FROM stdin;
4	Los costos no incluyen IVA (21%), el mismo deberá ser adicionado.\r\nLos valores cotizados se rigen por los aranceles mínimos profesionales establecidos en el nomenclador de servicios de la Cámara Empresaria de Medio Ambiente (CEMA) y la Cámara Argentina de Laboratorios Industriales, Bromatológicos y ambientales (CALIBA).\r\n\r\nPara la realización de los análisis se requiere aprobación formal del presente presupuesto.\r\nPasados los 15 días desde la recepción de la muestras, se podría disponer las mismas de acuerdo a la legislación vigente.\r\nPor favor, incluir el número de esta cotización con cada envío de muestras a nuestro laboratorio.\r\nEn caso de enviar las muestras sin referenciar número de presupuesto alguno, se procederá a la posterior facturación con la lista de precios vigente.	Realizar los análisis de los parámetros descriptos para cada caso.\r\n\r\nPresentación de protocolos de análisis conteniendo:\r\n    - Resultados analíticos.\r\n    - Unidades de medición.\r\n    - Metodología empleada.\r\n    - Firma del profesional con incumbencia.\r\n\r\nQA/AC (Aseguramiento de la Calidad del Laboratorio)\r\nControles de Calidad que se lleven a cabo en la rutina de análisis químicos del Laboratorio:\r\n    - Calibración de Equipos y Mantenimiento de la Calibración.\r\n    - Uso de estándares de Calibración trazables a patrones internacionales (NISTM-BAM) u otro organismo de referencia internacional.\r\n    - Blancos y Muestras Control de Laboratorio.\r\n\r\nSe realizará un (1) solo protocolo de análisis, en caso de requerirse duplicados, triplicados, etc., se deberá aclarar y solicitar con anticipación.
\.


ALTER TABLE presupuestos_plantillas_impresion ENABLE TRIGGER ALL;

--
-- Name: presupuestos_plantillas_impresion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_plantillas_impresion_id_seq', 4, true);


--
-- Name: presupuestos_presupuesto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_presupuesto_id_seq', 11, true);


--
-- Data for Name: presupuestos_subitem_parametro; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_subitem_parametro DISABLE TRIGGER ALL;

COPY presupuestos_subitem_parametro (id, item_id, itemparametro_id, precio) FROM stdin;
\.


ALTER TABLE presupuestos_subitem_parametro ENABLE TRIGGER ALL;

--
-- Name: presupuestos_subitem_parametro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_subitem_parametro_id_seq', 21, true);


--
-- Data for Name: presupuestos_subitem_perfil; Type: TABLE DATA; Schema: public; Owner: labdb
--

ALTER TABLE presupuestos_subitem_perfil DISABLE TRIGGER ALL;

COPY presupuestos_subitem_perfil (id, item_id, itemperfil_id, precio) FROM stdin;
\.


ALTER TABLE presupuestos_subitem_perfil ENABLE TRIGGER ALL;

--
-- Name: presupuestos_subitem_perfil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_subitem_perfil_id_seq', 7, true);


--
-- Name: presupuestos_tecnica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_tecnica_id_seq', 178, true);


--
-- Name: presupuestos_tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_tipo_id_seq', 2, true);


--
-- Name: presupuestos_unidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labdb
--

SELECT pg_catalog.setval('presupuestos_unidades_id_seq', 10, true);


--
-- PostgreSQL database dump complete
--

