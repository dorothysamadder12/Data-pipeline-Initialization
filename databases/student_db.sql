--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2026-06-03 16:08:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 226 (class 1259 OID 16806)
-- Name: attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance (
    attendance_id integer NOT NULL,
    student_id integer,
    attendance_date date,
    status character varying(10)
);


ALTER TABLE public.attendance OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16805)
-- Name: attendance_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_attendance_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 225
-- Name: attendance_attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_attendance_id_seq OWNED BY public.attendance.attendance_id;


--
-- TOC entry 238 (class 1259 OID 16883)
-- Name: certifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certifications (
    certification_id integer NOT NULL,
    user_id integer,
    certificate_name character varying(150),
    issuing_organization character varying(100),
    issue_date date
);


ALTER TABLE public.certifications OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16882)
-- Name: certifications_certification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certifications_certification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certifications_certification_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 237
-- Name: certifications_certification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certifications_certification_id_seq OWNED BY public.certifications.certification_id;


--
-- TOC entry 222 (class 1259 OID 16782)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying(100),
    credits integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16781)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 221
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- TOC entry 218 (class 1259 OID 16759)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100) NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16758)
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_department_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 217
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- TOC entry 224 (class 1259 OID 16789)
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    semester character varying(20)
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16788)
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 223
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNED BY public.enrollments.enrollment_id;


--
-- TOC entry 240 (class 1259 OID 16895)
-- Name: experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experience (
    experience_id integer NOT NULL,
    user_id integer,
    company_name character varying(100),
    role character varying(100),
    start_date date,
    end_date date,
    description text
);


ALTER TABLE public.experience OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16894)
-- Name: experience_experience_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.experience_experience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.experience_experience_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 239
-- Name: experience_experience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.experience_experience_id_seq OWNED BY public.experience.experience_id;


--
-- TOC entry 228 (class 1259 OID 16818)
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    grade_id integer NOT NULL,
    student_id integer,
    course_id integer,
    marks numeric(5,2),
    grade character varying(2)
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16817)
-- Name: grades_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grades_grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grades_grade_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 227
-- Name: grades_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grades_grade_id_seq OWNED BY public.grades.grade_id;


--
-- TOC entry 236 (class 1259 OID 16869)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    project_id integer NOT NULL,
    user_id integer,
    project_name character varying(100),
    description text,
    start_date date,
    end_date date,
    github_link character varying(255)
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16868)
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_project_id_seq OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 235
-- Name: projects_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects.project_id;


--
-- TOC entry 232 (class 1259 OID 16845)
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    skill_id integer NOT NULL,
    skill_name character varying(50)
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16844)
-- Name: skills_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skills_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.skills_skill_id_seq OWNER TO postgres;

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 231
-- Name: skills_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skills_skill_id_seq OWNED BY public.skills.skill_id;


--
-- TOC entry 220 (class 1259 OID 16768)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    phone character varying(15),
    date_of_birth date,
    department_id integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16767)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 234 (class 1259 OID 16852)
-- Name: user_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_skills (
    user_skill_id integer NOT NULL,
    user_id integer,
    skill_id integer,
    proficiency character varying(20)
);


ALTER TABLE public.user_skills OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16851)
-- Name: user_skills_user_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_skills_user_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_skills_user_skill_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 233
-- Name: user_skills_user_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_skills_user_skill_id_seq OWNED BY public.user_skills.user_skill_id;


--
-- TOC entry 230 (class 1259 OID 16836)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    full_name character varying(100),
    email character varying(100),
    phone character varying(20),
    location character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16835)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 4801 (class 2604 OID 16809)
-- Name: attendance attendance_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance ALTER COLUMN attendance_id SET DEFAULT nextval('public.attendance_attendance_id_seq'::regclass);


--
-- TOC entry 4807 (class 2604 OID 16886)
-- Name: certifications certification_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certifications ALTER COLUMN certification_id SET DEFAULT nextval('public.certifications_certification_id_seq'::regclass);


--
-- TOC entry 4799 (class 2604 OID 16785)
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 16762)
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- TOC entry 4800 (class 2604 OID 16792)
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('public.enrollments_enrollment_id_seq'::regclass);


--
-- TOC entry 4808 (class 2604 OID 16898)
-- Name: experience experience_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experience ALTER COLUMN experience_id SET DEFAULT nextval('public.experience_experience_id_seq'::regclass);


--
-- TOC entry 4802 (class 2604 OID 16821)
-- Name: grades grade_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades ALTER COLUMN grade_id SET DEFAULT nextval('public.grades_grade_id_seq'::regclass);


--
-- TOC entry 4806 (class 2604 OID 16872)
-- Name: projects project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN project_id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);


--
-- TOC entry 4804 (class 2604 OID 16848)
-- Name: skills skill_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN skill_id SET DEFAULT nextval('public.skills_skill_id_seq'::regclass);


--
-- TOC entry 4798 (class 2604 OID 16771)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 4805 (class 2604 OID 16855)
-- Name: user_skills user_skill_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_skills ALTER COLUMN user_skill_id SET DEFAULT nextval('public.user_skills_user_skill_id_seq'::regclass);


--
-- TOC entry 4803 (class 2604 OID 16839)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 5004 (class 0 OID 16806)
-- Dependencies: 226
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance (attendance_id, student_id, attendance_date, status) FROM stdin;
1	1	2026-06-01	Present
2	2	2026-06-01	Present
3	3	2026-06-01	Absent
4	4	2026-06-01	Present
5	5	2026-06-01	Present
6	6	2026-06-01	Absent
7	7	2026-06-01	Present
8	8	2026-06-01	Present
9	9	2026-06-01	Present
10	10	2026-06-01	Absent
\.


--
-- TOC entry 5016 (class 0 OID 16883)
-- Dependencies: 238
-- Data for Name: certifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certifications (certification_id, user_id, certificate_name, issuing_organization, issue_date) FROM stdin;
1	1	Python for Everybody	Coursera	2024-06-15
2	2	Java Programming	Udemy	2024-07-10
3	3	C++ Fundamentals	Udemy	2024-08-05
4	4	Frontend Development	Coursera	2024-09-01
5	5	Web Design	Google	2024-10-20
6	6	CSS Masterclass	Udemy	2024-11-18
7	7	SQL for Data Analysis	Coursera	2024-12-10
8	8	PostgreSQL Bootcamp	Udemy	2025-01-15
9	9	React Development	Meta	2025-02-12
10	10	Machine Learning Basics	Coursera	2025-03-01
\.


--
-- TOC entry 5000 (class 0 OID 16782)
-- Dependencies: 222
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_name, credits) FROM stdin;
1	Database Management Systems	4
2	Data Structures	4
3	Operating Systems	4
4	Computer Networks	3
5	Machine Learning	4
6	Artificial Intelligence	4
7	Software Engineering	3
8	Web Development	3
9	Cyber Security Fundamentals	3
10	Cloud Computing	3
\.


--
-- TOC entry 4996 (class 0 OID 16759)
-- Dependencies: 218
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name) FROM stdin;
1	Computer Science
2	Information Technology
3	Electronics
4	Mechanical
5	Civil
6	Electrical
7	Data Science
8	Artificial Intelligence
9	Cyber Security
10	Business Administration
\.


--
-- TOC entry 5002 (class 0 OID 16789)
-- Dependencies: 224
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments (enrollment_id, student_id, course_id, semester) FROM stdin;
1	1	1	Semester 4
2	2	2	Semester 4
3	3	3	Semester 4
4	4	4	Semester 4
5	5	5	Semester 4
6	6	6	Semester 4
7	7	7	Semester 4
8	8	8	Semester 4
9	9	9	Semester 4
10	10	10	Semester 4
\.


--
-- TOC entry 5018 (class 0 OID 16895)
-- Dependencies: 240
-- Data for Name: experience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.experience (experience_id, user_id, company_name, role, start_date, end_date, description) FROM stdin;
1	1	TechNova	Python Intern	2024-06-01	2024-08-31	Developed automation scripts
2	2	CodeCraft	Java Intern	2024-06-01	2024-08-31	Worked on backend modules
3	3	SoftEdge	Software Intern	2024-07-01	2024-09-30	Implemented database features
4	4	WebWorks	Frontend Intern	2024-06-15	2024-09-15	Built responsive web pages
5	5	ShopEase	UI Developer Intern	2024-07-01	2024-09-01	Designed user interfaces
6	6	ChatFlow	Backend Intern	2024-08-01	2024-10-31	Developed APIs
7	7	BookHub	Database Intern	2024-06-01	2024-08-31	Managed PostgreSQL databases
8	8	TaskPro	Software Intern	2024-09-01	2024-11-30	Developed task management features
9	9	AI Labs	ML Intern	2024-07-01	2024-12-31	Built recommendation models
10	10	QuizTech	Full Stack Intern	2024-08-01	2024-12-01	Developed quiz platform modules
\.


--
-- TOC entry 5006 (class 0 OID 16818)
-- Dependencies: 228
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (grade_id, student_id, course_id, marks, grade) FROM stdin;
1	1	1	91.50	A
2	2	2	87.00	A
3	3	3	79.50	B
4	4	4	75.00	B
5	5	5	94.00	A
6	6	6	68.00	C
7	7	7	82.50	B
8	8	8	96.00	A
9	9	9	73.00	B
10	10	10	65.50	C
\.


--
-- TOC entry 5014 (class 0 OID 16869)
-- Dependencies: 236
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (project_id, user_id, project_name, description, start_date, end_date, github_link) FROM stdin;
1	1	Expense Tracker	Python application for tracking expenses	2025-01-10	2025-02-15	https://github.com/rahul/expense-tracker
2	2	Weather App	Weather forecast application using APIs	2025-02-01	2025-03-01	https://github.com/priya/weather-app
3	3	Student Management System	Database project for managing students	2025-03-01	2025-04-10	https://github.com/amit/student-management
4	4	Portfolio Website	Personal portfolio website	2025-01-15	2025-02-20	https://github.com/sneha/portfolio
5	5	E-Commerce Frontend	Responsive online shopping UI	2025-02-10	2025-03-20	https://github.com/arjun/ecommerce
6	6	Chat Application	Real-time messaging application	2025-01-05	2025-02-28	https://github.com/neha/chatapp
7	7	Library Management	Library record management system	2025-03-05	2025-04-15	https://github.com/karan/library
8	8	Task Manager	Task planning and management tool	2025-02-15	2025-03-30	https://github.com/ananya/taskmanager
9	9	Movie Recommendation System	ML-based recommendation engine	2025-01-20	2025-04-01	https://github.com/rohan/movies
10	10	Online Quiz Platform	Quiz and assessment system	2025-03-10	2025-04-25	https://github.com/pooja/quizplatform
\.


--
-- TOC entry 5010 (class 0 OID 16845)
-- Dependencies: 232
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skills (skill_id, skill_name) FROM stdin;
1	Python
2	Java
3	C++
4	JavaScript
5	HTML
6	CSS
7	SQL
8	PostgreSQL
9	React
10	Machine Learning
\.


--
-- TOC entry 4998 (class 0 OID 16768)
-- Dependencies: 220
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, email, phone, date_of_birth, department_id) FROM stdin;
1	Rahul	Sharma	rahul.sharma@email.com	9876543210	2004-01-15	1
2	Priya	Das	priya.das@email.com	9876543211	2003-05-21	2
3	Amit	Roy	amit.roy@email.com	9876543212	2004-03-10	3
4	Sneha	Mukherjee	sneha.m@email.com	9876543213	2003-09-12	4
5	Arjun	Singh	arjun.s@email.com	9876543214	2004-07-25	5
6	Neha	Verma	neha.v@email.com	9876543215	2003-11-18	6
7	Karan	Patel	karan.p@email.com	9876543216	2004-02-28	7
8	Ananya	Ghosh	ananya.g@email.com	9876543217	2003-08-06	8
9	Rohan	Sen	rohan.s@email.com	9876543218	2004-04-14	9
10	Pooja	Agarwal	pooja.a@email.com	9876543219	2003-12-30	10
\.


--
-- TOC entry 5012 (class 0 OID 16852)
-- Dependencies: 234
-- Data for Name: user_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_skills (user_skill_id, user_id, skill_id, proficiency) FROM stdin;
1	1	1	Advanced
2	2	2	Intermediate
3	3	3	Advanced
4	4	4	Intermediate
5	5	5	Advanced
6	6	6	Intermediate
7	7	7	Advanced
8	8	8	Intermediate
9	9	9	Advanced
10	10	10	Intermediate
\.


--
-- TOC entry 5008 (class 0 OID 16836)
-- Dependencies: 230
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, full_name, email, phone, location) FROM stdin;
1	Rahul Sharma	rahul@gmail.com	9876543210	Kolkata
2	Priya Das	priya@gmail.com	9876543211	Durgapur
3	Amit Roy	amit@gmail.com	9876543212	Asansol
4	Sneha Mukherjee	sneha@gmail.com	9876543213	Kolkata
5	Arjun Singh	arjun@gmail.com	9876543214	Delhi
6	Neha Verma	neha@gmail.com	9876543215	Mumbai
7	Karan Patel	karan@gmail.com	9876543216	Ahmedabad
8	Ananya Ghosh	ananya@gmail.com	9876543217	Durgapur
9	Rohan Sen	rohan@gmail.com	9876543218	Bangalore
10	Pooja Agarwal	pooja@gmail.com	9876543219	Hyderabad
\.


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 225
-- Name: attendance_attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendance_attendance_id_seq', 10, true);


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 237
-- Name: certifications_certification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.certifications_certification_id_seq', 10, true);


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 221
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 10, true);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 217
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 10, true);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 223
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrollments_enrollment_id_seq', 10, true);


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 239
-- Name: experience_experience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.experience_experience_id_seq', 10, true);


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 227
-- Name: grades_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grades_grade_id_seq', 10, true);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 235
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 10, true);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 231
-- Name: skills_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skills_skill_id_seq', 10, true);


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 10, true);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 233
-- Name: user_skills_user_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_skills_user_skill_id_seq', 10, true);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- TOC entry 4822 (class 2606 OID 16811)
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id);


--
-- TOC entry 4836 (class 2606 OID 16888)
-- Name: certifications certifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certifications
    ADD CONSTRAINT certifications_pkey PRIMARY KEY (certification_id);


--
-- TOC entry 4818 (class 2606 OID 16787)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4810 (class 2606 OID 16766)
-- Name: departments departments_department_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_department_name_key UNIQUE (department_name);


--
-- TOC entry 4812 (class 2606 OID 16764)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- TOC entry 4820 (class 2606 OID 16794)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- TOC entry 4838 (class 2606 OID 16902)
-- Name: experience experience_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_pkey PRIMARY KEY (experience_id);


--
-- TOC entry 4824 (class 2606 OID 16823)
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);


--
-- TOC entry 4834 (class 2606 OID 16876)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);


--
-- TOC entry 4830 (class 2606 OID 16850)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (skill_id);


--
-- TOC entry 4814 (class 2606 OID 16775)
-- Name: students students_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- TOC entry 4816 (class 2606 OID 16773)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4832 (class 2606 OID 16857)
-- Name: user_skills user_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_pkey PRIMARY KEY (user_skill_id);


--
-- TOC entry 4826 (class 2606 OID 16843)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4828 (class 2606 OID 16841)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4842 (class 2606 OID 16812)
-- Name: attendance attendance_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 4848 (class 2606 OID 16889)
-- Name: certifications certifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certifications
    ADD CONSTRAINT certifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 4840 (class 2606 OID 16800)
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 4841 (class 2606 OID 16795)
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 4849 (class 2606 OID 16903)
-- Name: experience experience_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 4843 (class 2606 OID 16829)
-- Name: grades grades_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 4844 (class 2606 OID 16824)
-- Name: grades grades_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 4847 (class 2606 OID 16877)
-- Name: projects projects_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 4839 (class 2606 OID 16776)
-- Name: students students_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- TOC entry 4845 (class 2606 OID 16863)
-- Name: user_skills user_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(skill_id);


--
-- TOC entry 4846 (class 2606 OID 16858)
-- Name: user_skills user_skills_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_skills
    ADD CONSTRAINT user_skills_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


-- Completed on 2026-06-03 16:08:52

--
-- PostgreSQL database dump complete
--

