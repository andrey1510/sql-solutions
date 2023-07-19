CREATE TABLE a (
    min numeric,
    department_id numeric(4,0)
);


ALTER TABLE public.a OWNER TO postgres;


CREATE TABLE countries (
    country_id character varying(2) NOT NULL,
    country_name character varying(40) DEFAULT NULL::character varying,
    region_id numeric(10,0) DEFAULT NULL::numeric
);


ALTER TABLE public.countries OWNER TO postgres;

CREATE TABLE countries1 (
    country_id character varying(3),
    country_name character varying(45),
    region_id numeric(10,0)
);


ALTER TABLE public.countries1 OWNER TO postgres;

CREATE TABLE countries123 (
    country_id character varying(3),
    country_name character varying(45),
    region_id numeric(10,0)
);


ALTER TABLE public.countries123 OWNER TO postgres;

CREATE TABLE countries2 (
    country_id integer,
    country_name character varying(15),
    country_region character varying(15)
);


ALTER TABLE public.countries2 OWNER TO postgres;


CREATE TABLE country_new (
    country_id character varying(2),
    country_name character varying(40),
    region_id numeric(10,0)
);


ALTER TABLE public.country_new OWNER TO postgres;


CREATE TABLE country_new123 (
    country_id character varying(3),
    country_name character varying(45),
    region_id numeric(10,0)
);


ALTER TABLE public.country_new123 OWNER TO postgres;


CREATE TABLE departments (
    department_id numeric(4,0) NOT NULL,
    department_name character varying(30) NOT NULL,
    manager_id numeric(6,0) DEFAULT NULL::numeric,
    location_id numeric(4,0) DEFAULT NULL::numeric
);


ALTER TABLE public.departments OWNER TO postgres;


CREATE TABLE emp (
    emp_id integer,
    emp_name character(10),
    emp_city character(10)
);


ALTER TABLE public.emp OWNER TO postgres;


CREATE TABLE emp1 (
    emp_id integer,
    emp_name character(20),
    emp_city character(10)
);


ALTER TABLE public.emp1 OWNER TO postgres;


CREATE TABLE employees (
    employee_id numeric(6,0) DEFAULT (0)::numeric NOT NULL,
    first_name character varying(20) DEFAULT NULL::character varying,
    last_name character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    phone_number character varying(20) DEFAULT NULL::character varying,
    hire_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    salary numeric(8,2) DEFAULT NULL::numeric,
    commission_pct numeric(2,2) DEFAULT NULL::numeric,
    manager_id numeric(6,0) DEFAULT NULL::numeric,
    department_id numeric(4,0) DEFAULT NULL::numeric
);


ALTER TABLE public.employees OWNER TO postgres;


CREATE TABLE job_grades (
    grade_level character(2) NOT NULL,
    lowest_sal integer,
    highest_sal integer
);


ALTER TABLE public.job_grades OWNER TO postgres;


CREATE TABLE job_history (
    employee_id numeric(6,0) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    department_id numeric(4,0) DEFAULT NULL::numeric
);


ALTER TABLE public.job_history OWNER TO postgres;


CREATE TABLE jobs (
    job_id character varying(10) DEFAULT ''::character varying NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(6,0) DEFAULT NULL::numeric,
    max_salary numeric(6,0) DEFAULT NULL::numeric
);


ALTER TABLE public.jobs OWNER TO postgres;


CREATE TABLE locations (
    location_id numeric(4,0) DEFAULT (0)::numeric NOT NULL,
    street_address character varying(40) DEFAULT NULL::character varying,
    postal_code character varying(12) DEFAULT NULL::character varying,
    city character varying(30) NOT NULL,
    state_province character varying(25) DEFAULT NULL::character varying,
    country_id character varying(2) DEFAULT NULL::character varying
);


ALTER TABLE public.locations OWNER TO postgres;


CREATE VIEW max_sal AS
 SELECT employees.department_id,
    max(employees.salary) AS max_salary
   FROM employees
  GROUP BY employees.department_id;


ALTER TABLE public.max_sal OWNER TO postgres;


CREATE VIEW max_salaries AS
 SELECT employees.department_id,
    max(employees.salary) AS max_salary
   FROM employees
  GROUP BY employees.department_id;


ALTER TABLE public.max_salaries OWNER TO postgres;

--
-- Name: max_salary; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW max_salary AS
 SELECT employees.department_id,
    max(employees.salary) AS max
   FROM employees
  GROUP BY employees.department_id;


ALTER TABLE public.max_salary OWNER TO postgres;

--
-- Name: myresidents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE myresidents (
    first_name character(10),
    last_name character(10),
    unit character(10),
    status character(15),
    market_rent numeric(10,2)
);


ALTER TABLE public.myresidents OWNER TO postgres;

--
-- Name: new_table; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE new_table (
    country_id character varying(3),
    country_name character varying(45),
    region_id numeric(10,0)
);


ALTER TABLE public.new_table OWNER TO postgres;

--
-- Name: number_employees; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE number_employees (
    department_id numeric(4,0),
    no_employees bigint
);


ALTER TABLE public.number_employees OWNER TO postgres;

--
-- Name: numberofemployees; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE numberofemployees (
    department_id numeric(4,0),
    no_employees bigint
);


ALTER TABLE public.numberofemployees OWNER TO postgres;

--
-- Name: persons; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE persons (
    p_id integer NOT NULL,
    lastname character varying(255) NOT NULL,
    firstname character varying(255),
    address character varying(255),
    city character varying(255) DEFAULT 'Sandnes'::character varying
);


ALTER TABLE public.persons OWNER TO postgres;

--
-- Name: personsnotnull; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE personsnotnull (
    p_id integer NOT NULL,
    lastname character varying(255) NOT NULL,
    firstname character varying(255),
    address character varying(255),
    city character varying(255)
);


ALTER TABLE public.personsnotnull OWNER TO postgres;

--
-- Name: raster_overviews; Type: VIEW; Schema: public; Owner: postgres
--


CREATE TABLE regions (
    region_id numeric(10,0) NOT NULL,
    region_name character(25)
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: residents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE residents (
    first_name character(10),
    last_name character(10),
    unit character(10),
    status character(15),
    market_rent numeric(10,2)
);


ALTER TABLE public.residents OWNER TO postgres;

--
-- Name: school; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE school (
    emp_name character varying(20),
    age integer,
    salary integer,
    class integer
);


ALTER TABLE public.school OWNER TO postgres;

--
-- Name: temp_1; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW temp_1 AS
 SELECT max(employees.salary) AS max
   FROM employees
  GROUP BY employees.department_id;


ALTER TABLE public.temp_1 OWNER TO postgres;

--
-- Name: temp_employee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temp_employee (
    employee_id numeric(6,0),
    first_name character varying(20),
    last_name character varying(25),
    email character varying(25),
    phone_number character varying(20),
    hire_date date,
    job_id character varying(10),
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id numeric(6,0),
    department_id numeric(4,0)
);


ALTER TABLE public.temp_employee OWNER TO postgres;

--
-- Name: temptable; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temptable (
    employee_id numeric(6,0),
    first_name character varying(20),
    last_name character varying(25),
    email character varying(25),
    phone_number character varying(20),
    hire_date date,
    job_id character varying(10),
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id numeric(6,0),
    department_id numeric(4,0)
);


ALTER TABLE public.temptable OWNER TO postgres;

--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE test (
    name character varying(10)
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Data for Name: a; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY a (min, department_id) FROM stdin;
10000.00	70
6000.00	20
6500.00	40
2500.00	30
4200.00	60
4400.00	10
6100.00	80
2100.00	50
17000.00	90
8300.00	110
6900.00	100
7000.00	0
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries (country_id, country_name, region_id) FROM stdin;
AR	Argentina	2
AU	Australia	3
BE	Belgium	1
BR	Brazil	2
CA	Canada	2
CH	Switzerland	1
CN	China	3
DE	Germany	1
DK	Denmark	1
EG	Egypt	4
FR	France	1
HK	HongKong	3
IL	Israel	4
IN	India	3
IT	Italy	1
JP	Japan	3
KW	Kuwait	4
MX	Mexico	2
NG	Nigeria	4
NL	Netherlands	1
SG	Singapore	3
UK	United Kingdom	1
US	United States of America	2
ZM	Zambia	4
ZW	Zimbabwe	4
12	Belgia	\N
RO	Romania	\N
BG	Romania	\N
\.


--
-- Data for Name: countries1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries1 (country_id, country_name, region_id) FROM stdin;
C1	India	1002
C2	USA	\N
\N	UK	\N
C4	India	1001
C5	USA	1007
C6	UK	1003
\.


--
-- Data for Name: countries123; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries123 (country_id, country_name, region_id) FROM stdin;
\.


--
-- Data for Name: countries2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries2 (country_id, country_name, country_region) FROM stdin;
12	Germany	123
\.


--
-- Data for Name: country_new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY country_new (country_id, country_name, region_id) FROM stdin;
AR	Argentina	2
AU	Australia	3
BE	Belgium	1
BR	Brazil	2
CA	Canada	2
CH	Switzerland	1
CN	China	3
DE	Germany	1
DK	Denmark	1
EG	Egypt	4
FR	France	1
HK	HongKong	3
IL	Israel	4
IN	India	3
IT	Italy	1
JP	Japan	3
KW	Kuwait	4
MX	Mexico	2
NG	Nigeria	4
NL	Netherlands	1
SG	Singapore	3
UK	United Kingdom	1
US	United States of America	2
ZM	Zambia	4
ZW	Zimbabwe	4
12	Belgia	\N
\.


--
-- Data for Name: country_new123; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY country_new123 (country_id, country_name, region_id) FROM stdin;
C1	India	1002
C2	USA	\N
\N	UK	\N
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departments (department_id, department_name, manager_id, location_id) FROM stdin;
10	Administration	200	1700
20	Marketing	201	1800
30	Purchasing	114	1700
40	Human Resources	203	2400
50	Shipping	121	1500
60	IT	103	1400
70	Public Relations	204	2700
80	Sales	145	2500
90	Executive	100	1700
100	Finance	108	1700
110	Accounting	205	1700
120	Treasury	0	1700
130	Corporate Tax	0	1700
140	Control And Credit	0	1700
150	Shareholder Services	0	1700
160	Benefits	0	1700
170	Manufacturing	0	1700
180	Construction	0	1700
190	Contracting	0	1700
200	Operations	0	1700
210	IT Support	0	1700
220	NOC	0	1700
230	IT Helpdesk	0	1700
240	Government Sales	0	1700
250	Retail Sales	0	1700
260	Recruiting	0	1700
270	Payroll	0	1700
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp (emp_id, emp_name, emp_city) FROM stdin;
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
101	abc       	pune      
\.


--
-- Data for Name: emp1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY emp1 (emp_id, emp_name, emp_city) FROM stdin;
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) FROM stdin;
100	Steven	King	SKING	515.123.4567	1987-06-17	AD_PRES	24000.00	0.00	0	90
101	Neena	Kochhar	SKING	515.123.4568	1987-06-18	AD_VP	17000.00	0.00	100	90
102	Lex	De Haan	SKING	515.123.4569	1987-06-19	AD_VP	17000.00	0.00	100	90
103	Alexander	Hunold	SKING	590.423.4567	1987-06-20	IT_PROG	9000.00	0.00	102	60
104	Bruce	Ernst	SKING	590.423.4568	1987-06-21	IT_PROG	6000.00	0.00	103	60
105	David	Austin	SKING	590.423.4569	1987-06-22	IT_PROG	4800.00	0.00	103	60
106	Valli	Pataballa	SKING	590.423.4560	1987-06-23	IT_PROG	4800.00	0.00	103	60
107	Diana	Lorentz	SKING	590.423.5567	1987-06-24	IT_PROG	4200.00	0.00	103	60
114	Den	Raphaely	SKING	515.127.4561	1987-07-01	PU_MAN	11000.00	0.00	100	30
115	Alexander	Khoo	SKING	515.127.4562	1987-07-02	PU_CLERK	3100.00	0.00	114	30
116	Shelli	Baida	SKING	515.127.4563	1987-07-03	PU_CLERK	2900.00	0.00	114	30
117	Sigal	Tobias	SKING	515.127.4564	1987-07-04	PU_CLERK	2800.00	0.00	114	30
108	Nancy	Greenberg	SKING	515.999.4569	1987-06-25	FI_MGR	12000.00	0.00	101	100
109	Daniel	Faviet	SKING	515.999.4169	1987-06-26	FI_ACCOUNT	9000.00	0.00	108	100
110	John	Chen	SKING	515.999.4269	1987-06-27	FI_ACCOUNT	8200.00	0.00	108	100
111	Ismael	Sciarra	SKING	515.999.4369	1987-06-28	FI_ACCOUNT	7700.00	0.00	108	100
112	Jose Manuel	Urman	SKING	515.999.4469	1987-06-29	FI_ACCOUNT	7800.00	0.00	108	100
113	Luis	Popp	SKING	515.999.4567	1987-06-30	FI_ACCOUNT	6900.00	0.00	108	100
133	Jason	Mallin	SKING	650.127.1934	1987-07-20	ST_CLERK	3300.00	0.00	122	50
134	Michael	Rogers	SKING	650.127.1834	1987-07-21	ST_CLERK	2900.00	0.00	122	50
135	Ki	Gee	SKING	650.127.1734	1987-07-22	ST_CLERK	2400.00	0.00	122	50
136	Hazel	Philtanker	SKING	650.127.1634	1987-07-23	ST_CLERK	2200.00	0.00	122	50
137	Renske	Ladwig	SKING	650.121.1234	1987-07-24	ST_CLERK	3600.00	0.00	123	50
138	Stephen	Stiles	SKING	650.121.2034	1987-07-25	ST_CLERK	3200.00	0.00	123	50
139	John	Seo	SKING	650.121.2019	1987-07-26	ST_CLERK	2700.00	0.00	123	50
140	Joshua	Patel	SKING	650.121.1834	1987-07-27	ST_CLERK	2500.00	0.00	123	50
129	Laura	Bissot	SKING	650.999.5234	1987-07-16	ST_CLERK	3300.00	0.00	121	50
130	Mozhe	Atkinson	SKING	650.999.6234	1987-07-17	ST_CLERK	2800.00	0.00	121	50
131	James	Marlow	SKING	650.999.7234	1987-07-18	ST_CLERK	2500.00	0.00	121	50
132	TJ	Olson	SKING	650.999.8234	1987-07-19	ST_CLERK	2100.00	0.00	121	50
141	Trenna	Rajs	SKING	650.121.8009	1987-07-28	ST_CLERK	3500.00	0.00	124	50
142	Curtis	Davies	SKING	650.121.2994	1987-07-29	ST_CLERK	3100.00	0.00	124	50
143	Randall	Matos	SKING	650.121.2874	1987-07-30	ST_CLERK	2600.00	0.00	124	50
144	Peter	Vargas	SKING	650.121.2004	1987-07-31	ST_CLERK	2500.00	0.00	124	50
145	John	Russell	SKING	011.44.1344.429268	1987-08-01	SA_MAN	14000.00	0.40	100	80
146	Karen	Partners	SKING	011.44.1344.467268	1987-08-02	SA_MAN	13500.00	0.30	100	80
147	Alberto	Errazuriz	SKING	011.44.1344.429278	1987-08-03	SA_MAN	12000.00	0.30	100	80
148	Gerald	Cambrault	SKING	011.44.1344.619268	1987-08-04	SA_MAN	11000.00	0.30	100	80
149	Eleni	Zlotkey	SKING	011.44.1344.429018	1987-08-05	SA_MAN	10500.00	0.20	100	80
150	Peter	Tucker	SKING	011.44.1344.129268	1987-08-06	SA_REP	10000.00	0.30	145	80
118	Guy	Himuro	SKING	515.127.4565	1987-07-05	PU_CLERK	2600.00	0.00	114	30
119	Karen	Colmenares	SKING	515.127.4566	1987-07-06	PU_CLERK	2500.00	0.00	114	30
120	Matthew	Weiss	SKING	650.123.1234	1987-07-07	ST_MAN	8000.00	0.00	100	50
121	Adam	Fripp	SKING	650.123.2234	1987-07-08	ST_MAN	8200.00	0.00	100	50
122	Payam	Kaufling	SKING	650.123.3234	1987-07-09	ST_MAN	7900.00	0.00	100	50
123	Shanta	Vollman	SKING	650.123.4234	1987-07-10	ST_MAN	6500.00	0.00	100	50
124	Kevin	Mourgos	SKING	650.123.5234	1987-07-11	ST_MAN	5800.00	0.00	100	50
151	David	Bernstein	SKING	011.44.1344.345268	1987-08-07	SA_REP	9500.00	0.25	145	80
152	Peter	Hall	SKING	011.44.1344.478968	1987-08-08	SA_REP	9000.00	0.25	145	80
153	Christopher	Olsen	SKING	011.44.1344.498718	1987-08-09	SA_REP	8000.00	0.20	145	80
154	Nanette	Cambrault	SKING	011.44.1344.987668	1987-08-10	SA_REP	7500.00	0.20	145	80
155	Oliver	Tuvault	SKING	011.44.1344.486508	1987-08-11	SA_REP	7000.00	0.15	145	80
156	Janette	King	SKING	011.44.1345.429268	1987-08-12	SA_REP	10000.00	0.35	146	80
157	Patrick	Sully	SKING	011.44.1345.929268	1987-08-13	SA_REP	9500.00	0.35	146	80
158	Allan	McEwen	SKING	011.44.1345.829268	1987-08-14	SA_REP	9000.00	0.35	146	80
159	Lindsey	Smith	SKING	011.44.1345.729268	1987-08-15	SA_REP	8000.00	0.30	146	80
125	Julia	Nayer	SKING	650.999.1214	1987-07-12	ST_CLERK	3200.00	0.00	120	50
126	Irene	Mikkilineni	SKING	650.999.1224	1987-07-13	ST_CLERK	2700.00	0.00	120	50
127	James	Landry	SKING	650.999.1334	1987-07-14	ST_CLERK	2400.00	0.00	120	50
128	Steven	Markle	SKING	650.999.1434	1987-07-15	ST_CLERK	2200.00	0.00	120	50
160	Louise	Doran	SKING	011.44.1345.629268	1987-08-16	SA_REP	7500.00	0.30	146	80
161	Sarath	Sewall	SKING	011.44.1345.529268	1987-08-17	SA_REP	7000.00	0.25	146	80
162	Clara	Vishney	SKING	011.44.1346.129268	1987-08-18	SA_REP	10500.00	0.25	147	80
163	Danielle	Greene	SKING	011.44.1346.229268	1987-08-19	SA_REP	9500.00	0.15	147	80
164	Mattea	Marvins	SKING	011.44.1346.329268	1987-08-20	SA_REP	7200.00	0.10	147	80
165	David	Lee	SKING	011.44.1346.529268	1987-08-21	SA_REP	6800.00	0.10	147	80
166	Sundar	Ande	SKING	011.44.1346.629268	1987-08-22	SA_REP	6400.00	0.10	147	80
167	Amit	Banda	SKING	011.44.1346.729268	1987-08-23	SA_REP	6200.00	0.10	147	80
168	Lisa	Ozer	SKING	011.44.1343.929268	1987-08-24	SA_REP	11500.00	0.25	148	80
169	Harrison	Bloom	SKING	011.44.1343.829268	1987-08-25	SA_REP	10000.00	0.20	148	80
170	Tayler	Fox	SKING	011.44.1343.729268	1987-08-26	SA_REP	9600.00	0.20	148	80
171	William	Smith	SKING	011.44.1343.629268	1987-08-27	SA_REP	7400.00	0.15	148	80
172	Elizabeth	Bates	SKING	011.44.1343.529268	1987-08-28	SA_REP	7300.00	0.15	148	80
173	Sundita	Kumar	SKING	011.44.1343.329268	1987-08-29	SA_REP	6100.00	0.10	148	80
174	Ellen	Abel	SKING	011.44.1644.429267	1987-08-30	SA_REP	11000.00	0.30	149	80
175	Alyssa	Hutton	SKING	011.44.1644.429266	1987-08-31	SA_REP	8800.00	0.25	149	80
176	Jonathon	Taylor	SKING	011.44.1644.429265	1987-09-01	SA_REP	8600.00	0.20	149	80
177	Jack	Livingston	SKING	011.44.1644.429264	1987-09-02	SA_REP	8400.00	0.20	149	80
178	Kimberely	Grant	SKING	011.44.1644.429263	1987-09-03	SA_REP	7000.00	0.15	149	0
179	Charles	Johnson	SKING	011.44.1644.429262	1987-09-04	SA_REP	6200.00	0.10	149	80
180	Winston	Taylor	SKING	650.507.9876	1987-09-05	SH_CLERK	3200.00	0.00	120	50
181	Jean	Fleaur	SKING	650.507.9877	1987-09-06	SH_CLERK	3100.00	0.00	120	50
182	Martha	Sullivan	SKING	650.507.9878	1987-09-07	SH_CLERK	2500.00	0.00	120	50
183	Girard	Geoni	SKING	650.507.9879	1987-09-08	SH_CLERK	2800.00	0.00	120	50
184	Nandita	Sarchand	SKING	650.509.1876	1987-09-09	SH_CLERK	4200.00	0.00	121	50
185	Alexis	Bull	SKING	650.509.2876	1987-09-10	SH_CLERK	4100.00	0.00	121	50
186	Julia	Dellinger	SKING	650.509.3876	1987-09-11	SH_CLERK	3400.00	0.00	121	50
187	Anthony	Cabrio	SKING	650.509.4876	1987-09-12	SH_CLERK	3000.00	0.00	121	50
188	Kelly	Chung	SKING	650.505.1876	1987-09-13	SH_CLERK	3800.00	0.00	122	50
189	Jennifer	Dilly	SKING	650.505.2876	1987-09-14	SH_CLERK	3600.00	0.00	122	50
190	Timothy	Gates	SKING	650.505.3876	1987-09-15	SH_CLERK	2900.00	0.00	122	50
191	Randall	Perkins	SKING	650.505.4876	1987-09-16	SH_CLERK	2500.00	0.00	122	50
192	Sarah	Bell	SKING	650.501.1876	1987-09-17	SH_CLERK	4000.00	0.00	123	50
193	Britney	Everett	SKING	650.501.2876	1987-09-18	SH_CLERK	3900.00	0.00	123	50
194	Samuel	McCain	SKING	650.501.3876	1987-09-19	SH_CLERK	3200.00	0.00	123	50
195	Vance	Jones	SKING	650.501.4876	1987-09-20	SH_CLERK	2800.00	0.00	123	50
196	Alana	Walsh	SKING	650.507.9811	1987-09-21	SH_CLERK	3100.00	0.00	124	50
197	Kevin	Feeney	SKING	650.507.9822	1987-09-22	SH_CLERK	3000.00	0.00	124	50
198	Donald	OConnell	SKING	650.507.9833	1987-09-23	SH_CLERK	2600.00	0.00	124	50
199	Douglas	Grant	SKING	650.507.9844	1987-09-24	SH_CLERK	2600.00	0.00	124	50
200	Jennifer	Whalen	SKING	515.123.4444	1987-09-25	AD_ASST	4400.00	0.00	101	10
201	Michael	Hartstein	SKING	515.123.5555	1987-09-26	MK_MAN	13000.00	0.00	100	20
202	Pat	Fay	SKING	603.123.6666	1987-09-27	MK_REP	6000.00	0.00	201	20
203	Susan	Mavris	SKING	515.123.7777	1987-09-28	HR_REP	6500.00	0.00	101	40
204	Hermann	Baer	SKING	515.123.8888	1987-09-29	PR_REP	10000.00	0.00	101	70
205	Shelley	Higgins	SKING	515.123.8080	1987-09-30	AC_MGR	12000.00	0.00	101	110
206	William	Gietz	SKING	515.123.8181	1987-10-01	AC_ACCOUNT	8300.00	0.00	205	110
\.


--
-- Data for Name: job_grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY job_grades (grade_level, lowest_sal, highest_sal) FROM stdin;
A 	1000	2999
B 	3000	5999
C 	6000	9999
D 	10000	14999
E 	15000	24999
F 	25000	40000
\.


--
-- Data for Name: job_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY job_history (employee_id, start_date, end_date, job_id, department_id) FROM stdin;
102	1993-01-13	1998-07-24	IT_PROG	60
101	1989-09-21	1993-10-27	AC_ACCOUNT	110
101	1993-10-28	1997-03-15	AC_MGR	110
201	1996-02-17	1999-12-19	MK_REP	20
114	1998-03-24	1999-12-31	ST_CLERK	50
122	1999-01-01	1999-12-31	ST_CLERK	50
200	1987-09-17	1993-06-17	AD_ASST	90
176	1998-03-24	1998-12-31	SA_REP	80
176	1999-01-01	1999-12-31	SA_MAN	80
200	1994-07-01	1998-12-31	AC_ACCOUNT	90
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
AD_PRES	President	20000	40000
AD_VP	Administration Vice President	15000	30000
AD_ASST	Administration Assistant	3000	6000
FI_MGR	Finance Manager	8200	16000
FI_ACCOUNT	Accountant	4200	9000
AC_MGR	Accounting Manager	8200	16000
AC_ACCOUNT	Public Accountant	4200	9000
SA_MAN	Sales Manager	10000	20000
SA_REP	Sales Representative	6000	12000
PU_MAN	Purchasing Manager	8000	15000
PU_CLERK	Purchasing Clerk	2500	5500
ST_MAN	Stock Manager	5500	8500
ST_CLERK	Stock Clerk	2000	5000
SH_CLERK	Shipping Clerk	2500	5500
IT_PROG	Programmer	4000	10000
MK_MAN	Marketing Manager	9000	15000
MK_REP	Marketing Representative	4000	9000
HR_REP	Human Resources Representative	4000	9000
PR_REP	Public Relations Representative	4500	10500
\.


COPY locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
1000	1297 Via Cola di Rie	989	Roma		IT
1100	93091 Calle della Testa	10934	Venice		IT
1200	2017 Shinjuku-ku	1689	Tokyo	Tokyo Prefecture	JP
1300	9450 Kamiya-cho	6823	Hiroshima		JP
1400	2014 Jabberwocky Rd	26192	Southlake	Texas	US
1500	2011 Interiors Blvd	99236	South San Francisco	California	US
1600	2007 Zagora St	50090	South Brunswick	New Jersey	US
1700	2004 Charade Rd	98199	Seattle	Washington	US
1800	147 Spadina Ave	M5V 2L7	Toronto	Ontario	CA
1900	6092 Boxwood St	YSW 9T2	Whitehorse	Yukon	CA
2000	40-5-12 Laogianggen	190518	Beijing		CN
2100	1298 Vileparle (E)	490231	Bombay	Maharashtra	IN
2200	12-98 Victoria Street	2901	Sydney	New South Wales	AU
2300	198 Clementi North	540198	Singapore		SG
2400	8204 Arthur St		London		UK
2500	"Magdalen Centre	 The Oxford 	OX9 9ZB	Oxford	Ox
2600	9702 Chester Road	9629850293	Stretford	Manchester	UK
2700	Schwanthalerstr. 7031	80925	Munich	Bavaria	DE
2800	Rua Frei Caneca 1360	01307-002	Sao Paulo	Sao Paulo	BR
2900	20 Rue des Corps-Saints	1730	Geneva	Geneve	CH
3000	Murtenstrasse 921	3095	Bern	BE	CH
3100	Pieter Breughelstraat 837	3029SK	Utrecht	Utrecht	NL
3200	Mariano Escobedo 9991	11932	Mexico City	"Distrito Federal	
\.


COPY myresidents (first_name, last_name, unit, status, market_rent) FROM stdin;
frank     	william   	10        	Current        	1500.00
frank     	william   	10        	Current        	1500.00
james     	leed      	20        	current        	1600.00
\.


COPY new_table (country_id, country_name, region_id) FROM stdin;
C1	India	1002
C2	USA	\N
\N	UK	\N
C4	India	1001
C5	USA	1007
C6	UK	1003
\.


COPY number_employees (department_id, no_employees) FROM stdin;
70	1
20	2
40	1
30	6
60	4
10	1
80	34
50	45
90	2
110	2
100	6
\.


COPY numberofemployees (department_id, no_employees) FROM stdin;
70	1
20	2
40	1
30	6
60	4
10	1
80	34
50	45
90	2
110	2
100	6
\.


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persons (p_id, lastname, firstname, address, city) FROM stdin;
105	sh	mn	154 street	sandnes
\.


--
-- Data for Name: personsnotnull; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personsnotnull (p_id, lastname, firstname, address, city) FROM stdin;
100	james	syed	252 street	pune
12	nick	ritch	150 street	New York
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY regions (region_id, region_name) FROM stdin;
1	Europe                   
2	Americas                 
3	Asia                     
4	Middle East and Africa   
\.


--
-- Data for Name: residents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY residents (first_name, last_name, unit, status, market_rent) FROM stdin;
frank     	william   	10        	Current        	1500.00
frank     	william   	10        	Current        	1500.00
james     	leed      	20        	current        	1600.00
frank     	william   	10        	Current        	1500.00
frank     	william   	10        	Current        	1500.00
james     	leed      	20        	current        	1600.00
\.


--
-- Data for Name: school; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY school (emp_name, age, salary, class) FROM stdin;
sarita	25	24000	1
vineeta	35	29000	2
varun	30	40000	3
\.


--
-- Data for Name: temp_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temp_employee (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) FROM stdin;
101	Neena	Kochhar	not 	515.123.4568	1987-06-18	AD_VP	17000.00	0.31	100	90
102	Lex	De Haan	not 	515.123.4569	1987-06-19	AD_VP	17000.00	0.31	100	90
177	Jack	Livingston	not 	011.44.1644.429264	1987-09-02	SA_REP	8400.00	0.31	149	80
178	Kimberely	Grant	not 	011.44.1644.429263	1987-09-03	SA_REP	7000.00	0.31	149	0
179	Charles	Johnson	not 	011.44.1644.429262	1987-09-04	SA_REP	6200.00	0.31	149	80
180	Winston	Taylor	not 	650.507.9876	1987-09-05	SH_CLERK	3200.00	0.31	120	50
181	Jean	Fleaur	not 	650.507.9877	1987-09-06	SH_CLERK	3100.00	0.31	120	50
182	Martha	Sullivan	not 	650.507.9878	1987-09-07	SH_CLERK	2500.00	0.31	120	50
103	Alexander	Hunold	not 	590.423.4567	1987-06-20	IT_PROG	9000.00	0.31	102	60
104	Bruce	Ernst	not 	590.423.4568	1987-06-21	IT_PROG	6000.00	0.31	103	60
106	Valli	Pataballa	not 	590.423.4560	1987-06-23	IT_PROG	4800.00	0.31	103	60
107	Diana	Lorentz	not 	590.423.5567	1987-06-24	IT_PROG	4200.00	0.31	103	60
108	Nancy	Greenberg	not 	515.124.4569	1987-06-25	FI_MGR	12000.00	0.31	101	100
109	Daniel	Faviet	not 	515.124.4169	1987-06-26	FI_ACCOUNT	9000.00	0.31	108	100
110	John	Chen	not 	515.124.4269	1987-06-27	FI_ACCOUNT	8200.00	0.31	108	100
111	Ismael	Sciarra	not 	515.124.4369	1987-06-28	FI_ACCOUNT	7700.00	0.31	108	100
112	Jose Manuel	Urman	not 	515.124.4469	1987-06-29	FI_ACCOUNT	7800.00	0.31	108	100
113	Luis	Popp	not 	515.124.4567	1987-06-30	FI_ACCOUNT	6900.00	0.31	108	100
114	Den	Raphaely	not 	515.127.4561	1987-07-01	PU_MAN	11000.00	0.31	100	30
115	Alexander	Khoo	not 	515.127.4562	1987-07-02	PU_CLERK	3100.00	0.31	114	30
116	Shelli	Baida	not 	515.127.4563	1987-07-03	PU_CLERK	2900.00	0.31	114	30
117	Sigal	Tobias	not 	515.127.4564	1987-07-04	PU_CLERK	2800.00	0.31	114	30
119	Karen	Colmenares	not 	515.127.4566	1987-07-06	PU_CLERK	2500.00	0.31	114	30
120	Matthew	Weiss	not 	650.123.1234	1987-07-07	ST_MAN	8000.00	0.31	100	50
121	Adam	Fripp	not 	650.123.2234	1987-07-08	ST_MAN	8200.00	0.31	100	50
122	Payam	Kaufling	not 	650.123.3234	1987-07-09	ST_MAN	7900.00	0.31	100	50
123	Shanta	Vollman	not 	650.123.4234	1987-07-10	ST_MAN	6500.00	0.31	100	50
118	Guy	Himuro	not 	515.127.4565	1987-07-05	SH_CLERK	2600.00	0.31	114	30
124	Kevin	Mourgos	not 	650.123.5234	1987-07-11	ST_MAN	5800.00	0.31	100	50
125	Julia	Nayer	not 	650.124.1214	1987-07-12	ST_CLERK	3200.00	0.31	120	50
126	Irene	Mikkilineni	not 	650.124.1224	1987-07-13	ST_CLERK	2700.00	0.31	120	50
127	James	Landry	not 	650.124.1334	1987-07-14	ST_CLERK	2400.00	0.31	120	50
128	Steven	Markle	not 	650.124.1434	1987-07-15	ST_CLERK	2200.00	0.31	120	50
129	Laura	Bissot	not 	650.124.5234	1987-07-16	ST_CLERK	3300.00	0.31	121	50
130	Mozhe	Atkinson	not 	650.124.6234	1987-07-17	ST_CLERK	2800.00	0.31	121	50
131	James	Marlow	not 	650.124.7234	1987-07-18	ST_CLERK	2500.00	0.31	121	50
132	TJ	Olson	not 	650.124.8234	1987-07-19	ST_CLERK	2100.00	0.31	121	50
133	Jason	Mallin	not 	650.127.1934	1987-07-20	ST_CLERK	3300.00	0.31	122	50
134	Michael	Rogers	not 	650.127.1834	1987-07-21	ST_CLERK	2900.00	0.31	122	50
135	Ki	Gee	not 	650.127.1734	1987-07-22	ST_CLERK	2400.00	0.31	122	50
136	Hazel	Philtanker	not 	650.127.1634	1987-07-23	ST_CLERK	2200.00	0.31	122	50
137	Renske	Ladwig	not 	650.121.1234	1987-07-24	ST_CLERK	3600.00	0.31	123	50
138	Stephen	Stiles	not 	650.121.2034	1987-07-25	ST_CLERK	3200.00	0.31	123	50
139	John	Seo	not 	650.121.2019	1987-07-26	ST_CLERK	2700.00	0.31	123	50
140	Joshua	Patel	not 	650.121.1834	1987-07-27	ST_CLERK	2500.00	0.31	123	50
141	Trenna	Rajs	not 	650.121.8009	1987-07-28	ST_CLERK	3500.00	0.31	124	50
142	Curtis	Davies	not 	650.121.2994	1987-07-29	ST_CLERK	3100.00	0.31	124	50
202	Pat	Fay	not 	603.123.6666	1987-09-27	MK_REP	6000.00	0.31	201	20
143	Randall	Matos	not 	650.121.2874	1987-07-30	ST_CLERK	2600.00	0.31	124	50
144	Peter	Vargas	not 	650.121.2004	1987-07-31	ST_CLERK	2500.00	0.31	124	50
145	John	Russell	not 	011.44.1344.429268	1987-08-01	SA_MAN	14000.00	0.31	100	80
146	Karen	Partners	not 	011.44.1344.467268	1987-08-02	SA_MAN	13500.00	0.31	100	80
147	Alberto	Errazuriz	not 	011.44.1344.429278	1987-08-03	SA_MAN	12000.00	0.31	100	80
148	Gerald	Cambrault	not 	011.44.1344.619268	1987-08-04	SA_MAN	11000.00	0.31	100	80
149	Eleni	Zlotkey	not 	011.44.1344.429018	1987-08-05	SA_MAN	10500.00	0.31	100	80
150	Peter	Tucker	not 	011.44.1344.129268	1987-08-06	SA_REP	10000.00	0.31	145	80
151	David	Bernstein	not 	011.44.1344.345268	1987-08-07	SA_REP	9500.00	0.31	145	80
152	Peter	Hall	not 	011.44.1344.478968	1987-08-08	SA_REP	9000.00	0.31	145	80
153	Christopher	Olsen	not 	011.44.1344.498718	1987-08-09	SA_REP	8000.00	0.31	145	80
154	Nanette	Cambrault	not 	011.44.1344.987668	1987-08-10	SA_REP	7500.00	0.31	145	80
155	Oliver	Tuvault	not 	011.44.1344.486508	1987-08-11	SA_REP	7000.00	0.31	145	80
156	Janette	King	not 	011.44.1345.429268	1987-08-12	SA_REP	10000.00	0.31	146	80
157	Patrick	Sully	not 	011.44.1345.929268	1987-08-13	SA_REP	9500.00	0.31	146	80
158	Allan	McEwen	not 	011.44.1345.829268	1987-08-14	SA_REP	9000.00	0.31	146	80
159	Lindsey	Smith	not 	011.44.1345.729268	1987-08-15	SA_REP	8000.00	0.31	146	80
160	Louise	Doran	not 	011.44.1345.629268	1987-08-16	SA_REP	7500.00	0.31	146	80
161	Sarath	Sewall	not 	011.44.1345.529268	1987-08-17	SA_REP	7000.00	0.31	146	80
162	Clara	Vishney	not 	011.44.1346.129268	1987-08-18	SA_REP	10500.00	0.31	147	80
163	Danielle	Greene	not 	011.44.1346.229268	1987-08-19	SA_REP	9500.00	0.31	147	80
164	Mattea	Marvins	not 	011.44.1346.329268	1987-08-20	SA_REP	7200.00	0.31	147	80
165	David	Lee	not 	011.44.1346.529268	1987-08-21	SA_REP	6800.00	0.31	147	80
166	Sundar	Ande	not 	011.44.1346.629268	1987-08-22	SA_REP	6400.00	0.31	147	80
167	Amit	Banda	not 	011.44.1346.729268	1987-08-23	SA_REP	6200.00	0.31	147	80
168	Lisa	Ozer	not 	011.44.1343.929268	1987-08-24	SA_REP	11500.00	0.31	148	80
169	Harrison	Bloom	not 	011.44.1343.829268	1987-08-25	SA_REP	10000.00	0.31	148	80
170	Tayler	Fox	not 	011.44.1343.729268	1987-08-26	SA_REP	9600.00	0.31	148	80
171	William	Smith	not 	011.44.1343.629268	1987-08-27	SA_REP	7400.00	0.31	148	80
172	Elizabeth	Bates	not 	011.44.1343.529268	1987-08-28	SA_REP	7300.00	0.31	148	80
173	Sundita	Kumar	not 	011.44.1343.329268	1987-08-29	SA_REP	6100.00	0.31	148	80
174	Ellen	Abel	not 	011.44.1644.429267	1987-08-30	SA_REP	11000.00	0.31	149	80
175	Alyssa	Hutton	not 	011.44.1644.429266	1987-08-31	SA_REP	8800.00	0.31	149	80
176	Jonathon	Taylor	not 	011.44.1644.429265	1987-09-01	SA_REP	8600.00	0.31	149	80
183	Girard	Geoni	not 	650.507.9879	1987-09-08	SH_CLERK	2800.00	0.31	120	50
184	Nandita	Sarchand	not 	650.509.1876	1987-09-09	SH_CLERK	4200.00	0.31	121	50
185	Alexis	Bull	not 	650.509.2876	1987-09-10	SH_CLERK	4100.00	0.31	121	50
186	Julia	Dellinger	not 	650.509.3876	1987-09-11	SH_CLERK	3400.00	0.31	121	50
187	Anthony	Cabrio	not 	650.509.4876	1987-09-12	SH_CLERK	3000.00	0.31	121	50
188	Kelly	Chung	not 	650.505.1876	1987-09-13	SH_CLERK	3800.00	0.31	122	50
189	Jennifer	Dilly	not 	650.505.2876	1987-09-14	SH_CLERK	3600.00	0.31	122	50
190	Timothy	Gates	not 	650.505.3876	1987-09-15	SH_CLERK	2900.00	0.31	122	50
191	Randall	Perkins	not 	650.505.4876	1987-09-16	SH_CLERK	2500.00	0.31	122	50
192	Sarah	Bell	not 	650.501.1876	1987-09-17	SH_CLERK	4000.00	0.31	123	50
193	Britney	Everett	not 	650.501.2876	1987-09-18	SH_CLERK	3900.00	0.31	123	50
194	Samuel	McCain	not 	650.501.3876	1987-09-19	SH_CLERK	3200.00	0.31	123	50
195	Vance	Jones	not 	650.501.4876	1987-09-20	SH_CLERK	2800.00	0.31	123	50
196	Alana	Walsh	not 	650.507.9811	1987-09-21	SH_CLERK	3100.00	0.31	124	50
197	Kevin	Feeney	not 	650.507.9822	1987-09-22	SH_CLERK	3000.00	0.31	124	50
198	Donald	OConnell	not 	650.507.9833	1987-09-23	SH_CLERK	2600.00	0.31	124	50
199	Douglas	Grant	not 	650.507.9844	1987-09-24	SH_CLERK	2600.00	0.31	124	50
200	Jennifer	Whalen	not 	515.123.4444	1987-09-25	AD_ASST	4400.00	0.31	101	10
201	Michael	Hartstein	not 	515.123.5555	1987-09-26	MK_MAN	13000.00	0.31	100	20
203	Susan	Mavris	not 	515.123.7777	1987-09-28	HR_REP	6500.00	0.31	101	40
204	Hermann	Baer	not 	515.123.8888	1987-09-29	PR_REP	10000.00	0.31	101	70
205	Shelley	Higgins	not available	515.123.8080	1987-09-30	AC_MGR	12000.00	0.10	101	110
206	William	Gietz	not available	515.123.8181	1987-10-01	AC_ACCOUNT	8300.00	0.10	205	110
\.


--
-- Data for Name: temptable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temptable (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) FROM stdin;
101	Neena	Kochhar	not 	515.123.4568	1987-06-18	AD_VP	17000.00	0.31	100	90
102	Lex	De Haan	not 	515.123.4569	1987-06-19	AD_VP	17000.00	0.31	100	90
177	Jack	Livingston	not 	011.44.1644.429264	1987-09-02	SA_REP	8400.00	0.31	149	80
178	Kimberely	Grant	not 	011.44.1644.429263	1987-09-03	SA_REP	7000.00	0.31	149	0
179	Charles	Johnson	not 	011.44.1644.429262	1987-09-04	SA_REP	6200.00	0.31	149	80
180	Winston	Taylor	not 	650.507.9876	1987-09-05	SH_CLERK	3200.00	0.31	120	50
181	Jean	Fleaur	not 	650.507.9877	1987-09-06	SH_CLERK	3100.00	0.31	120	50
182	Martha	Sullivan	not 	650.507.9878	1987-09-07	SH_CLERK	2500.00	0.31	120	50
103	Alexander	Hunold	not 	590.423.4567	1987-06-20	IT_PROG	9000.00	0.31	102	60
104	Bruce	Ernst	not 	590.423.4568	1987-06-21	IT_PROG	6000.00	0.31	103	60
106	Valli	Pataballa	not 	590.423.4560	1987-06-23	IT_PROG	4800.00	0.31	103	60
107	Diana	Lorentz	not 	590.423.5567	1987-06-24	IT_PROG	4200.00	0.31	103	60
108	Nancy	Greenberg	not 	515.124.4569	1987-06-25	FI_MGR	12000.00	0.31	101	100
109	Daniel	Faviet	not 	515.124.4169	1987-06-26	FI_ACCOUNT	9000.00	0.31	108	100
110	John	Chen	not 	515.124.4269	1987-06-27	FI_ACCOUNT	8200.00	0.31	108	100
111	Ismael	Sciarra	not 	515.124.4369	1987-06-28	FI_ACCOUNT	7700.00	0.31	108	100
112	Jose Manuel	Urman	not 	515.124.4469	1987-06-29	FI_ACCOUNT	7800.00	0.31	108	100
113	Luis	Popp	not 	515.124.4567	1987-06-30	FI_ACCOUNT	6900.00	0.31	108	100
114	Den	Raphaely	not 	515.127.4561	1987-07-01	PU_MAN	11000.00	0.31	100	30
115	Alexander	Khoo	not 	515.127.4562	1987-07-02	PU_CLERK	3100.00	0.31	114	30
116	Shelli	Baida	not 	515.127.4563	1987-07-03	PU_CLERK	2900.00	0.31	114	30
117	Sigal	Tobias	not 	515.127.4564	1987-07-04	PU_CLERK	2800.00	0.31	114	30
119	Karen	Colmenares	not 	515.127.4566	1987-07-06	PU_CLERK	2500.00	0.31	114	30
120	Matthew	Weiss	not 	650.123.1234	1987-07-07	ST_MAN	8000.00	0.31	100	50
121	Adam	Fripp	not 	650.123.2234	1987-07-08	ST_MAN	8200.00	0.31	100	50
122	Payam	Kaufling	not 	650.123.3234	1987-07-09	ST_MAN	7900.00	0.31	100	50
123	Shanta	Vollman	not 	650.123.4234	1987-07-10	ST_MAN	6500.00	0.31	100	50
118	Guy	Himuro	not 	515.127.4565	1987-07-05	SH_CLERK	2600.00	0.31	114	30
124	Kevin	Mourgos	not 	650.123.5234	1987-07-11	ST_MAN	5800.00	0.31	100	50
125	Julia	Nayer	not 	650.124.1214	1987-07-12	ST_CLERK	3200.00	0.31	120	50
126	Irene	Mikkilineni	not 	650.124.1224	1987-07-13	ST_CLERK	2700.00	0.31	120	50
127	James	Landry	not 	650.124.1334	1987-07-14	ST_CLERK	2400.00	0.31	120	50
128	Steven	Markle	not 	650.124.1434	1987-07-15	ST_CLERK	2200.00	0.31	120	50
129	Laura	Bissot	not 	650.124.5234	1987-07-16	ST_CLERK	3300.00	0.31	121	50
130	Mozhe	Atkinson	not 	650.124.6234	1987-07-17	ST_CLERK	2800.00	0.31	121	50
131	James	Marlow	not 	650.124.7234	1987-07-18	ST_CLERK	2500.00	0.31	121	50
132	TJ	Olson	not 	650.124.8234	1987-07-19	ST_CLERK	2100.00	0.31	121	50
133	Jason	Mallin	not 	650.127.1934	1987-07-20	ST_CLERK	3300.00	0.31	122	50
134	Michael	Rogers	not 	650.127.1834	1987-07-21	ST_CLERK	2900.00	0.31	122	50
135	Ki	Gee	not 	650.127.1734	1987-07-22	ST_CLERK	2400.00	0.31	122	50
136	Hazel	Philtanker	not 	650.127.1634	1987-07-23	ST_CLERK	2200.00	0.31	122	50
137	Renske	Ladwig	not 	650.121.1234	1987-07-24	ST_CLERK	3600.00	0.31	123	50
138	Stephen	Stiles	not 	650.121.2034	1987-07-25	ST_CLERK	3200.00	0.31	123	50
139	John	Seo	not 	650.121.2019	1987-07-26	ST_CLERK	2700.00	0.31	123	50
140	Joshua	Patel	not 	650.121.1834	1987-07-27	ST_CLERK	2500.00	0.31	123	50
141	Trenna	Rajs	not 	650.121.8009	1987-07-28	ST_CLERK	3500.00	0.31	124	50
142	Curtis	Davies	not 	650.121.2994	1987-07-29	ST_CLERK	3100.00	0.31	124	50
202	Pat	Fay	not 	603.123.6666	1987-09-27	MK_REP	6000.00	0.31	201	20
143	Randall	Matos	not 	650.121.2874	1987-07-30	ST_CLERK	2600.00	0.31	124	50
144	Peter	Vargas	not 	650.121.2004	1987-07-31	ST_CLERK	2500.00	0.31	124	50
145	John	Russell	not 	011.44.1344.429268	1987-08-01	SA_MAN	14000.00	0.31	100	80
146	Karen	Partners	not 	011.44.1344.467268	1987-08-02	SA_MAN	13500.00	0.31	100	80
147	Alberto	Errazuriz	not 	011.44.1344.429278	1987-08-03	SA_MAN	12000.00	0.31	100	80
148	Gerald	Cambrault	not 	011.44.1344.619268	1987-08-04	SA_MAN	11000.00	0.31	100	80
149	Eleni	Zlotkey	not 	011.44.1344.429018	1987-08-05	SA_MAN	10500.00	0.31	100	80
150	Peter	Tucker	not 	011.44.1344.129268	1987-08-06	SA_REP	10000.00	0.31	145	80
151	David	Bernstein	not 	011.44.1344.345268	1987-08-07	SA_REP	9500.00	0.31	145	80
152	Peter	Hall	not 	011.44.1344.478968	1987-08-08	SA_REP	9000.00	0.31	145	80
153	Christopher	Olsen	not 	011.44.1344.498718	1987-08-09	SA_REP	8000.00	0.31	145	80
154	Nanette	Cambrault	not 	011.44.1344.987668	1987-08-10	SA_REP	7500.00	0.31	145	80
155	Oliver	Tuvault	not 	011.44.1344.486508	1987-08-11	SA_REP	7000.00	0.31	145	80
156	Janette	King	not 	011.44.1345.429268	1987-08-12	SA_REP	10000.00	0.31	146	80
157	Patrick	Sully	not 	011.44.1345.929268	1987-08-13	SA_REP	9500.00	0.31	146	80
158	Allan	McEwen	not 	011.44.1345.829268	1987-08-14	SA_REP	9000.00	0.31	146	80
159	Lindsey	Smith	not 	011.44.1345.729268	1987-08-15	SA_REP	8000.00	0.31	146	80
160	Louise	Doran	not 	011.44.1345.629268	1987-08-16	SA_REP	7500.00	0.31	146	80
161	Sarath	Sewall	not 	011.44.1345.529268	1987-08-17	SA_REP	7000.00	0.31	146	80
162	Clara	Vishney	not 	011.44.1346.129268	1987-08-18	SA_REP	10500.00	0.31	147	80
163	Danielle	Greene	not 	011.44.1346.229268	1987-08-19	SA_REP	9500.00	0.31	147	80
164	Mattea	Marvins	not 	011.44.1346.329268	1987-08-20	SA_REP	7200.00	0.31	147	80
165	David	Lee	not 	011.44.1346.529268	1987-08-21	SA_REP	6800.00	0.31	147	80
166	Sundar	Ande	not 	011.44.1346.629268	1987-08-22	SA_REP	6400.00	0.31	147	80
167	Amit	Banda	not 	011.44.1346.729268	1987-08-23	SA_REP	6200.00	0.31	147	80
168	Lisa	Ozer	not 	011.44.1343.929268	1987-08-24	SA_REP	11500.00	0.31	148	80
169	Harrison	Bloom	not 	011.44.1343.829268	1987-08-25	SA_REP	10000.00	0.31	148	80
170	Tayler	Fox	not 	011.44.1343.729268	1987-08-26	SA_REP	9600.00	0.31	148	80
171	William	Smith	not 	011.44.1343.629268	1987-08-27	SA_REP	7400.00	0.31	148	80
172	Elizabeth	Bates	not 	011.44.1343.529268	1987-08-28	SA_REP	7300.00	0.31	148	80
173	Sundita	Kumar	not 	011.44.1343.329268	1987-08-29	SA_REP	6100.00	0.31	148	80
174	Ellen	Abel	not 	011.44.1644.429267	1987-08-30	SA_REP	11000.00	0.31	149	80
175	Alyssa	Hutton	not 	011.44.1644.429266	1987-08-31	SA_REP	8800.00	0.31	149	80
176	Jonathon	Taylor	not 	011.44.1644.429265	1987-09-01	SA_REP	8600.00	0.31	149	80
183	Girard	Geoni	not 	650.507.9879	1987-09-08	SH_CLERK	2800.00	0.31	120	50
184	Nandita	Sarchand	not 	650.509.1876	1987-09-09	SH_CLERK	4200.00	0.31	121	50
185	Alexis	Bull	not 	650.509.2876	1987-09-10	SH_CLERK	4100.00	0.31	121	50
186	Julia	Dellinger	not 	650.509.3876	1987-09-11	SH_CLERK	3400.00	0.31	121	50
187	Anthony	Cabrio	not 	650.509.4876	1987-09-12	SH_CLERK	3000.00	0.31	121	50
188	Kelly	Chung	not 	650.505.1876	1987-09-13	SH_CLERK	3800.00	0.31	122	50
189	Jennifer	Dilly	not 	650.505.2876	1987-09-14	SH_CLERK	3600.00	0.31	122	50
190	Timothy	Gates	not 	650.505.3876	1987-09-15	SH_CLERK	2900.00	0.31	122	50
191	Randall	Perkins	not 	650.505.4876	1987-09-16	SH_CLERK	2500.00	0.31	122	50
192	Sarah	Bell	not 	650.501.1876	1987-09-17	SH_CLERK	4000.00	0.31	123	50
193	Britney	Everett	not 	650.501.2876	1987-09-18	SH_CLERK	3900.00	0.31	123	50
194	Samuel	McCain	not 	650.501.3876	1987-09-19	SH_CLERK	3200.00	0.31	123	50
195	Vance	Jones	not 	650.501.4876	1987-09-20	SH_CLERK	2800.00	0.31	123	50
196	Alana	Walsh	not 	650.507.9811	1987-09-21	SH_CLERK	3100.00	0.31	124	50
197	Kevin	Feeney	not 	650.507.9822	1987-09-22	SH_CLERK	3000.00	0.31	124	50
198	Donald	OConnell	not 	650.507.9833	1987-09-23	SH_CLERK	2600.00	0.31	124	50
199	Douglas	Grant	not 	650.507.9844	1987-09-24	SH_CLERK	2600.00	0.31	124	50
200	Jennifer	Whalen	not 	515.123.4444	1987-09-25	AD_ASST	4400.00	0.31	101	10
201	Michael	Hartstein	not 	515.123.5555	1987-09-26	MK_MAN	13000.00	0.31	100	20
203	Susan	Mavris	not 	515.123.7777	1987-09-28	HR_REP	6500.00	0.31	101	40
204	Hermann	Baer	not 	515.123.8888	1987-09-29	PR_REP	10000.00	0.31	101	70
205	Shelley	Higgins	not available	515.123.8080	1987-09-30	AC_MGR	12000.00	0.10	101	110
206	William	Gietz	not available	515.123.8181	1987-10-01	AC_ACCOUNT	8300.00	0.10	205	110
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY test (name) FROM stdin;
\.


--
-- Name: countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);


--
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: job_grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY job_grades
    ADD CONSTRAINT job_grades_pkey PRIMARY KEY (grade_level);


--
-- Name: job_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY job_history
    ADD CONSTRAINT job_history_pkey PRIMARY KEY (employee_id, start_date);


--
-- Name: jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);


--
-- Name: p1index; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX p1index ON persons USING btree (lastname, firstname);


--
-- Name: pindex; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pindex ON persons USING btree (lastname, firstname);


--
-- Name: countries_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_region_id_fkey FOREIGN KEY (region_id) REFERENCES regions(region_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT USAGE ON SCHEMA public TO user3;


--
-- Name: a; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE a FROM PUBLIC;
REVOKE ALL ON TABLE a FROM postgres;
GRANT ALL ON TABLE a TO postgres;
GRANT SELECT ON TABLE a TO user3;


--
-- Name: countries; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE countries FROM PUBLIC;
REVOKE ALL ON TABLE countries FROM postgres;
GRANT ALL ON TABLE countries TO postgres;
GRANT SELECT ON TABLE countries TO user3;


--
-- Name: countries1; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE countries1 FROM PUBLIC;
REVOKE ALL ON TABLE countries1 FROM postgres;
GRANT ALL ON TABLE countries1 TO postgres;
GRANT SELECT ON TABLE countries1 TO user3;


--
-- Name: countries123; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE countries123 FROM PUBLIC;
REVOKE ALL ON TABLE countries123 FROM postgres;
GRANT ALL ON TABLE countries123 TO postgres;
GRANT SELECT ON TABLE countries123 TO user3;


--
-- Name: countries2; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE countries2 FROM PUBLIC;
REVOKE ALL ON TABLE countries2 FROM postgres;
GRANT ALL ON TABLE countries2 TO postgres;
GRANT SELECT ON TABLE countries2 TO user3;


--
-- Name: country_new; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE country_new FROM PUBLIC;
REVOKE ALL ON TABLE country_new FROM postgres;
GRANT ALL ON TABLE country_new TO postgres;
GRANT SELECT ON TABLE country_new TO user3;


--
-- Name: country_new123; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE country_new123 FROM PUBLIC;
REVOKE ALL ON TABLE country_new123 FROM postgres;
GRANT ALL ON TABLE country_new123 TO postgres;
GRANT SELECT ON TABLE country_new123 TO user3;


--
-- Name: departments; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE departments FROM PUBLIC;
REVOKE ALL ON TABLE departments FROM postgres;
GRANT ALL ON TABLE departments TO postgres;
GRANT SELECT ON TABLE departments TO user3;


--
-- Name: emp; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE emp FROM PUBLIC;
REVOKE ALL ON TABLE emp FROM postgres;
GRANT ALL ON TABLE emp TO postgres;
GRANT SELECT ON TABLE emp TO user3;


--
-- Name: emp1; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE emp1 FROM PUBLIC;
REVOKE ALL ON TABLE emp1 FROM postgres;
GRANT ALL ON TABLE emp1 TO postgres;
GRANT SELECT ON TABLE emp1 TO user3;


--
-- Name: employees; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE employees FROM PUBLIC;
REVOKE ALL ON TABLE employees FROM postgres;
GRANT ALL ON TABLE employees TO postgres;
GRANT SELECT ON TABLE employees TO user3;


--
-- Name: job_grades; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE job_grades FROM PUBLIC;
REVOKE ALL ON TABLE job_grades FROM postgres;
GRANT ALL ON TABLE job_grades TO postgres;
GRANT SELECT ON TABLE job_grades TO user3;


--
-- Name: job_history; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE job_history FROM PUBLIC;
REVOKE ALL ON TABLE job_history FROM postgres;
GRANT ALL ON TABLE job_history TO postgres;
GRANT SELECT ON TABLE job_history TO user3;


--
-- Name: jobs; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE jobs FROM PUBLIC;
REVOKE ALL ON TABLE jobs FROM postgres;
GRANT ALL ON TABLE jobs TO postgres;
GRANT SELECT ON TABLE jobs TO user3;


--
-- Name: locations; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE locations FROM PUBLIC;
REVOKE ALL ON TABLE locations FROM postgres;
GRANT ALL ON TABLE locations TO postgres;
GRANT SELECT ON TABLE locations TO user3;


--
-- Name: max_sal; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE max_sal FROM PUBLIC;
REVOKE ALL ON TABLE max_sal FROM postgres;
GRANT ALL ON TABLE max_sal TO postgres;
GRANT SELECT ON TABLE max_sal TO user3;


--
-- Name: max_salaries; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE max_salaries FROM PUBLIC;
REVOKE ALL ON TABLE max_salaries FROM postgres;
GRANT ALL ON TABLE max_salaries TO postgres;
GRANT SELECT ON TABLE max_salaries TO user3;


--
-- Name: max_salary; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE max_salary FROM PUBLIC;
REVOKE ALL ON TABLE max_salary FROM postgres;
GRANT ALL ON TABLE max_salary TO postgres;
GRANT SELECT ON TABLE max_salary TO user3;


--
-- Name: myresidents; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE myresidents FROM PUBLIC;
REVOKE ALL ON TABLE myresidents FROM postgres;
GRANT ALL ON TABLE myresidents TO postgres;
GRANT SELECT ON TABLE myresidents TO user3;


--
-- Name: new_table; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE new_table FROM PUBLIC;
REVOKE ALL ON TABLE new_table FROM postgres;
GRANT ALL ON TABLE new_table TO postgres;
GRANT SELECT ON TABLE new_table TO user3;


--
-- Name: number_employees; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE number_employees FROM PUBLIC;
REVOKE ALL ON TABLE number_employees FROM postgres;
GRANT ALL ON TABLE number_employees TO postgres;
GRANT SELECT ON TABLE number_employees TO user3;


--
-- Name: numberofemployees; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE numberofemployees FROM PUBLIC;
REVOKE ALL ON TABLE numberofemployees FROM postgres;
GRANT ALL ON TABLE numberofemployees TO postgres;
GRANT SELECT ON TABLE numberofemployees TO user3;


--
-- Name: persons; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE persons FROM PUBLIC;
REVOKE ALL ON TABLE persons FROM postgres;
GRANT ALL ON TABLE persons TO postgres;
GRANT SELECT ON TABLE persons TO user3;


--
-- Name: personsnotnull; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE personsnotnull FROM PUBLIC;
REVOKE ALL ON TABLE personsnotnull FROM postgres;
GRANT ALL ON TABLE personsnotnull TO postgres;
GRANT SELECT ON TABLE personsnotnull TO user3;


--
-- Name: raster_overviews; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE raster_overviews FROM PUBLIC;
REVOKE ALL ON TABLE raster_overviews FROM postgres;
GRANT ALL ON TABLE raster_overviews TO postgres;
GRANT SELECT ON TABLE raster_overviews TO user3;


--
-- Name: regions; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE regions FROM PUBLIC;
REVOKE ALL ON TABLE regions FROM postgres;
GRANT ALL ON TABLE regions TO postgres;
GRANT SELECT ON TABLE regions TO user3;


--
-- Name: residents; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE residents FROM PUBLIC;
REVOKE ALL ON TABLE residents FROM postgres;
GRANT ALL ON TABLE residents TO postgres;
GRANT SELECT ON TABLE residents TO user3;


--
-- Name: school; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE school FROM PUBLIC;
REVOKE ALL ON TABLE school FROM postgres;
GRANT ALL ON TABLE school TO postgres;
GRANT SELECT ON TABLE school TO user3;


--
-- Name: temp_1; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE temp_1 FROM PUBLIC;
REVOKE ALL ON TABLE temp_1 FROM postgres;
GRANT ALL ON TABLE temp_1 TO postgres;
GRANT SELECT ON TABLE temp_1 TO user3;


--
-- Name: temp_employee; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE temp_employee FROM PUBLIC;
REVOKE ALL ON TABLE temp_employee FROM postgres;
GRANT ALL ON TABLE temp_employee TO postgres;
GRANT SELECT ON TABLE temp_employee TO user3;


--
-- Name: temptable; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE temptable FROM PUBLIC;
REVOKE ALL ON TABLE temptable FROM postgres;
GRANT ALL ON TABLE temptable TO postgres;
GRANT SELECT ON TABLE temptable TO user3;


--
-- Name: test; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE test FROM PUBLIC;
REVOKE ALL ON TABLE test FROM postgres;
GRANT ALL ON TABLE test TO postgres;
GRANT SELECT ON TABLE test TO user3;