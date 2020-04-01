--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: sslinfo; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS sslinfo WITH SCHEMA public;


--
-- Name: EXTENSION sslinfo; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION sslinfo IS 'information about SSL certificates';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET search_path = public, pg_catalog;

--
-- Name: fn_checkaccess(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_checkaccess(_grp character varying, _account character varying) RETURNS integer
    LANGUAGE sql
    AS $$


SELECT CASE WHEN COALESCE((SELECT SUM(A.A)
FROM
(
SELECT 1::integer A, GRP FROM  t_AccessReport  WHERE GRP = _GRP AND ACCOUNT = _Account
UNION
SELECT 1::integer A, A1.GRP FROM  t_AccessReport A1
INNER JOIN 
(
SELECT O.ObjectName GRP, COALESCE(A2.Account, '')  Account
 FROM
 v_Object O INNER JOIN  t_AccessReport A2 
 ON A2.GRP = O.ObjectName AND A2.Account = _Account
) OO
ON 
(OO.GRP = A1.Account)
WHERE A1.GRP = _GRP
) A), 0) > 0 THEN 1 ELSE 0 END;

$$;


ALTER FUNCTION public.fn_checkaccess(_grp character varying, _account character varying) OWNER TO postgres;

--
-- Name: fn_cur_dates(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_cur_dates(OUT cr_date character varying, OUT cr_cur character varying) RETURNS SETOF record
    LANGUAGE plpgsql
    AS $$
declare
  _n integer;
  _i integer;
begin
  select n from v_cur_interval into _n;
  /*_n := _n + 1;*/
  _i := 1;
  if (_n > 50) then
    _n := 50;
  end if;
  while _i <= _n loop
      return query select to_char((current_date::date - _n +_i) , 'DD.MM.YYYY')::varchar(10) cr_date, ''::varchar(3) cr_cur; 
     _i := _i + 1;
  end loop; 
end;
$$;


ALTER FUNCTION public.fn_cur_dates(OUT cr_date character varying, OUT cr_cur character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: t_rpdeclareedit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_rpdeclareedit (
    de_pk uuid DEFAULT uuid_generate_v1() NOT NULL,
    de_de uuid,
    dlevel integer,
    dord integer,
    decname character varying(256),
    caption character varying(256),
    keyfield character varying(256),
    srckeyfield character varying(256),
    dispfield character varying(256),
    srcdispfield character varying(256),
    iddeclare integer,
    classname character varying(256),
    color integer
);


ALTER TABLE t_rpdeclareedit OWNER TO postgres;

--
-- Name: v_rpdeclareedit; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_rpdeclareedit AS
 SELECT t_rpdeclareedit.caption,
    t_rpdeclareedit.keyfield,
    t_rpdeclareedit.srckeyfield,
    t_rpdeclareedit.dispfield,
    t_rpdeclareedit.srcdispfield,
    t_rpdeclareedit.iddeclare,
    t_rpdeclareedit.classname,
    NULL::character varying(255) AS keyvalue,
    ''::character varying(255) AS dispvalue,
    t_rpdeclareedit.de_pk AS id,
    t_rpdeclareedit.de_de AS parent,
    t_rpdeclareedit.dlevel,
    t_rpdeclareedit.dord,
    t_rpdeclareedit.decname,
    t_rpdeclareedit.color
   FROM t_rpdeclareedit;


ALTER TABLE v_rpdeclareedit OWNER TO postgres;

--
-- Name: fn_decedit(character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_decedit(editlist character varying, fieldlist character varying, decname_ character varying) RETURNS SETOF v_rpdeclareedit
    LANGUAGE sql
    AS $$

select
F.VAL Caption,
E.ID KeyField,
C.srcKeyField,
COALESCE(C.DispField, E.ID) DispField,
C.srcDispField,
C.IdDeclare,
C.ClassName,
NULL::varchar(255) KeyValue,
''::varchar(255) DispValue,
uuid_generate_v1() ID,
null::uuid Parent,
null::int DLevel,
null::int DOrd,
null::varchar(256) DecName,
null::int Color


from
fn_split (EditList, ',') E

LEFT JOIN
(
select
A.DecName,
A.KeyField,
A.srcKeyField,
B.DispField,
B.srcDispField,
B.IdDeclare,
B.ClassName
from
(
select
A.DecName,
A.dstField  KeyField,
A.srcField srcKeyField,
A.GroupDec
from
t_sysFieldMap A
where   A.KeyField = 1 AND
        A.DecName = DecName_
) A
INNER JOIN
(
select
A.DecName,
A.dstField  DispField,
A.srcField srcDispField,
A.idDeclare,
A.ClassName,
A.GroupDec
from
t_sysFieldMap A
where coalesce(A.idDeclare, 0) <> 0
	  AND A.DecName = DecName_
) B on A.DecName = B.DecName and A.GroupDec = B.GroupDec
) C ON lower(E.ID) = lower(C.KeyField)

inner join
fn_WebParser (FieldList) F
on lower(coalesce(C.DispField, E.ID)) = lower(F.ID)

order by F.NN;
$$;


ALTER FUNCTION public.fn_decedit(editlist character varying, fieldlist character varying, decname_ character varying) OWNER TO postgres;

--
-- Name: fn_findtable(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_findtable(_columns character varying) RETURNS character varying
    LANGUAGE sql
    AS $$
select c.table_name::varchar(255) from 
fn_split(_columns, ';') a inner join information_schema.columns c on a.id = c.column_name and c.table_schema='public'
inner join information_schema.tables t on c.table_name = t.table_name and t.table_schema='public' and t.table_type = 'BASE TABLE'
group by c.table_name
having count(*) = (select count(*) from fn_split(_columns, ';'))
order by 1
limit 1
$$;


ALTER FUNCTION public.fn_findtable(_columns character varying) OWNER TO postgres;

--
-- Name: fn_formatn(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_formatn(n integer, l integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare 
	res varchar(10);
begin
res := N::varchar(10);
while char_length(res) < L loop
  res := '0' || res;
end loop;  
return res;  
end;
$$;


ALTER FUNCTION public.fn_formatn(n integer, l integer) OWNER TO postgres;

--
-- Name: fn_freeaccount(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_freeaccount(_grp character varying, OUT account character varying, OUT fullname character varying, OUT email character varying, OUT type integer) RETURNS SETOF record
    LANGUAGE sql
    AS $$

SELECT 
UserName Account, 
FULLNAME,
Description EMAIL,
0 as TYPE FROM t_NTUsers
WHERE UserName NOT IN (SELECT Account FROM t_AccessReport WHERE GRP = _GRP)
UNION ALL
SELECT 	ObjectName Account,
	ObjectName  FULLNAME,
	ObjectType EMAIL,
	ObjCod as TYPE
FROM v_Object WHERE 
ObjectName NOT IN (SELECT Account FROM t_AccessReport WHERE GRP = _GRP)
AND ObjectName <> _GRP AND ObjCod = 4;

$$;


ALTER FUNCTION public.fn_freeaccount(_grp character varying, OUT account character varying, OUT fullname character varying, OUT email character varying, OUT type integer) OWNER TO postgres;

--
-- Name: fn_getcur(timestamp with time zone, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_getcur(_cr_date timestamp with time zone, _cr_cur character varying) RETURNS numeric
    LANGUAGE sql
    AS $$
select COALESCE((select cr_rate
from currate 
where 
cr_date <= _cr_date
and cr_cur = _cr_cur
order by cr_date desc limit 1
), 1.0)
$$;


ALTER FUNCTION public.fn_getcur(_cr_date timestamp with time zone, _cr_cur character varying) OWNER TO postgres;

--
-- Name: fn_getmenuimage(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_getmenuimage(caption_ character varying) RETURNS character varying
    LANGUAGE sql
    AS $$
select COALESCE((select image_bmp from v_sysMenuImage
where Caption = Caption_
order by TypeImg, ICaption desc  LIMIT 1), '-')
$$;


ALTER FUNCTION public.fn_getmenuimage(caption_ character varying) OWNER TO postgres;

--
-- Name: fn_getmenuimageid(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_getmenuimageid(caption_ character varying) RETURNS integer
    LANGUAGE sql
    AS $$
select COALESCE((select idimage from v_sysmenuimage
where Caption = Caption_
order by typeimg, icaption desc  limit 1), 0)
$$;


ALTER FUNCTION public.fn_getmenuimageid(caption_ character varying) OWNER TO postgres;

--
-- Name: fn_getuniq(timestamp with time zone, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_getuniq(_date timestamp with time zone, _i integer) RETURNS character varying
    LANGUAGE sql
    AS $$

	select _Date::varchar(19) || ' ' || fn_formatN(_I, 8);
$$;


ALTER FUNCTION public.fn_getuniq(_date timestamp with time zone, _i integer) OWNER TO postgres;

--
-- Name: fn_mainmenu(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_mainmenu(app_ character varying, account_ character varying, OUT idmenu integer, OUT ordmenu integer, OUT caption character varying, OUT link character varying, OUT link1 character varying, OUT mnemo character varying, OUT params character varying) RETURNS SETOF record
    LANGUAGE sql
    AS $$
SELECT  
IDMenu,
ORDMEnu,
'Root/' || Caption Caption,
Link,
Link1,
mnemo,
Params
FROM t_mnMainMenu WHERE (App = App_  or App = 'ALL' or (App_ = 'ALL' and App <> 'TRAN')) 
and fn_CheckAccess (mnemo, Account_) > 0
$$;


ALTER FUNCTION public.fn_mainmenu(app_ character varying, account_ character varying, OUT idmenu integer, OUT ordmenu integer, OUT caption character varying, OUT link character varying, OUT link1 character varying, OUT mnemo character varying, OUT params character varying) OWNER TO postgres;

--
-- Name: fn_split(text, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_split(parstring text, sep character varying, OUT nn integer, OUT id text) RETURNS SETOF record
    LANGUAGE plpgsql
    AS $$
DECLARE
   str text[];  
   n int;
BEGIN
   str := regexp_split_to_array(ParString, Sep);
   n := array_length(str, 1);
   FOR i IN 1..n LOOP
      NN := i;
      ID := str[i];
      RETURN NEXT;
   END LOOP;
END;
$$;


ALTER FUNCTION public.fn_split(parstring text, sep character varying, OUT nn integer, OUT id text) OWNER TO postgres;

--
-- Name: fn_webparser(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION fn_webparser(parstring text, OUT nn integer, OUT id character varying, OUT val character varying) RETURNS SETOF record
    LANGUAGE sql
    AS $$
select NN, split_part(ID, '=', 1) ID, split_part(ID, '=', 2) VAL   from fn_split(ParString, '&');
$$;


ALTER FUNCTION public.fn_webparser(parstring text, OUT nn integer, OUT id character varying, OUT val character varying) OWNER TO postgres;

--
-- Name: getdate(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION getdate() RETURNS timestamp with time zone
    LANGUAGE sql
    AS $$select current_timestamp$$;


ALTER FUNCTION public.getdate() OWNER TO postgres;

--
-- Name: isnull(anyelement, anyelement); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "isnull"(anyelement, anyelement) RETURNS anyelement
    LANGUAGE sql
    AS $_$
SELECT COALESCE($1, $2);
$_$;


ALTER FUNCTION public."isnull"(anyelement, anyelement) OWNER TO postgres;

--
-- Name: newid(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION newid() RETURNS uuid
    LANGUAGE sql
    AS $$
SELECT uuid_generate_v1();
$$;


ALTER FUNCTION public.newid() OWNER TO postgres;

--
-- Name: p_articles_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_articles_del(_ar_pk integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
   delete from articles where ar_pk = _ar_pk;
end;
$$;


ALTER FUNCTION public.p_articles_del(_ar_pk integer) OWNER TO postgres;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE articles (
    ar_pk integer NOT NULL,
    ar_name character varying(256),
    ar_desc character varying,
    ar_image character varying(256),
    ar_manaf character varying(50)
);


ALTER TABLE articles OWNER TO postgres;

--
-- Name: p_articles_edit(integer, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_articles_edit(_ar_pk integer, _ar_name character varying DEFAULT NULL::character varying, _ar_desc character varying DEFAULT NULL::character varying, _ar_image character varying DEFAULT NULL::character varying) RETURNS SETOF articles
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select ar_pk from articles where ar_pk = _ar_pk) then
    update articles
	set 
        ar_name = _ar_name 
        ,ar_desc = _ar_desc
        ,ar_image = _ar_image
            
    where	
	    ar_pk = _ar_pk;
 else
	if (_ar_pk is null ) then
		_ar_pk := nextval('articles_ar_pk_seq'::regclass);
	end if;   
   insert into articles(
        ar_pk
        ,ar_name 
        ,ar_desc 
        ,ar_image 
            
	) 
   values (
        _ar_pk
        ,_ar_name
        ,_ar_desc
        ,_ar_image
             
	  );
 end if;
  return query select * from articles where ar_pk = _ar_pk;
end;
$$;


ALTER FUNCTION public.p_articles_edit(_ar_pk integer, _ar_name character varying, _ar_desc character varying, _ar_image character varying) OWNER TO postgres;

--
-- Name: p_articles_edit(integer, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_articles_edit(_ar_pk integer, _ar_name character varying DEFAULT NULL::character varying, _ar_desc character varying DEFAULT NULL::character varying, _ar_image character varying DEFAULT NULL::character varying, _ar_manaf character varying DEFAULT NULL::character varying) RETURNS SETOF articles
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select ar_pk from articles where ar_pk = _ar_pk) then
    update articles
	set 
        ar_name = _ar_name 
        ,ar_desc = _ar_desc
        ,ar_image = _ar_image
        ,ar_manaf = _ar_manaf
            
    where	
	    ar_pk = _ar_pk;
 else
	if (_ar_pk is null ) then
		_ar_pk := nextval('articles_ar_pk_seq'::regclass);
	end if;   
   insert into articles(
        ar_pk
        ,ar_name 
        ,ar_desc 
        ,ar_image 
        ,ar_manaf 
            
	) 
   values (
        _ar_pk
        ,_ar_name
        ,_ar_desc
        ,_ar_image
        ,_ar_manaf
             
	  );
 end if;
  return query select * from articles where ar_pk = _ar_pk;
end;
$$;


ALTER FUNCTION public.p_articles_edit(_ar_pk integer, _ar_name character varying, _ar_desc character varying, _ar_image character varying, _ar_manaf character varying) OWNER TO postgres;

--
-- Name: p_currate_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_currate_del(_cr_pk integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin
   delete from currate where cr_pk = _cr_pk;
   return 0;
end;
$$;


ALTER FUNCTION public.p_currate_del(_cr_pk integer) OWNER TO postgres;

--
-- Name: currate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE currate (
    cr_pk integer NOT NULL,
    cr_date timestamp with time zone,
    cr_cur character varying(3),
    cr_rate numeric
);


ALTER TABLE currate OWNER TO postgres;

--
-- Name: p_currate_edit(integer, timestamp with time zone, character varying, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_currate_edit(_cr_pk integer, _cr_date timestamp with time zone DEFAULT NULL::timestamp with time zone, _cr_cur character varying DEFAULT NULL::character varying, _cr_rate numeric DEFAULT NULL::numeric) RETURNS SETOF currate
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select cr_pk from currate where cr_pk = _cr_pk) then
    update currate
	set 
        cr_date = _cr_date 
        ,cr_cur = _cr_cur
        ,cr_rate = _cr_rate
            
    where	
	    cr_pk = _cr_pk;
 else
	if (_cr_pk is null ) then
		_cr_pk := nextval('currate_cr_pk_seq'::regclass);
	end if;   
   insert into currate(
        cr_pk
        ,cr_date 
        ,cr_cur 
        ,cr_rate 
            
	) 
   values (
        _cr_pk
        ,_cr_date
        ,_cr_cur
        ,_cr_rate
             
	  );
 end if;
  return query select * from currate where cr_pk = _cr_pk;
end;
$$;


ALTER FUNCTION public.p_currate_edit(_cr_pk integer, _cr_date timestamp with time zone, _cr_cur character varying, _cr_rate numeric) OWNER TO postgres;

--
-- Name: p_lbrsetparam(character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_lbrsetparam(_paramname character varying, _paramvalue character varying, _paramdescription character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
IF EXISTS(SELECT ParamName FROM t_sysParams 
			WHERE ParamName = _ParamName) THEN
UPDATE t_sysParams
SET ParamValue = _ParamValue,
	ParamDescription = _ParamDescription,
	DateParam = GetDate()
WHERE ParamName = _ParamName;
ELSE
INSERT INTO t_sysParams (ParamName, ParamValue, ParamDescription, DateParam)
VALUES (_ParamName, _ParamValue, _ParamDescription, GetDate());
END IF;
END;
$$;


ALTER FUNCTION public.p_lbrsetparam(_paramname character varying, _paramvalue character varying, _paramdescription character varying) OWNER TO postgres;

--
-- Name: p_ntusers_del(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_ntusers_del(_username character varying) RETURNS void
    LANGUAGE sql
    AS $$
DELETE FROM t_AccessReport WHERE Account = _UserName;
DELETE FROM t_NTUsers WHERE UserName = _UserName;
$$;


ALTER FUNCTION public.p_ntusers_del(_username character varying) OWNER TO postgres;

--
-- Name: p_ntusers_edit(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_ntusers_edit(_username character varying, _fullname character varying, _description character varying, _orgs character varying, _pass character varying, _email character varying, _icq character varying, _skype character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
IF EXISTS(SELECT UserName FROM t_NTUsers WHERE UserName = _UserName) THEN
UPDATE t_NTUsers 
SET 
FullName = _FullName,
Description = _Description,
ORGS = _ORGS,
Pass = case ISNULL(_Pass, '') when '' then Pass else _Pass end,
Email=_Email,
Icq=_Icq,
Skype=_Skype
WHERE UserName = _UserName;
ELSE
INSERT INTO t_NTUsers
(
UserName,
FullName,
Description,
ORGS,
Pass,
Email,
Icq,
Skype
)
VALUES
(
_UserName,
_FullName,
_Description,
_ORGS,
_Pass,
_Email,
_Icq,
_Skype
);
END IF;
END;
$$;


ALTER FUNCTION public.p_ntusers_edit(_username character varying, _fullname character varying, _description character varying, _orgs character varying, _pass character varying, _email character varying, _icq character varying, _skype character varying) OWNER TO postgres;

--
-- Name: p_porderd_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_porderd_del(_pd_pk integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
   delete from porderd where pd_pk = _pd_pk;
end;
$$;


ALTER FUNCTION public.p_porderd_del(_pd_pk integer) OWNER TO postgres;

--
-- Name: porderd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE porderd (
    pd_pk integer NOT NULL,
    pd_po integer NOT NULL,
    pd_ar integer NOT NULL,
    pd_qty integer,
    pd_price integer
);


ALTER TABLE porderd OWNER TO postgres;

--
-- Name: t_sysstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_sysstatus (
    idstatus integer NOT NULL,
    statustype character varying(50),
    statusname character varying(50),
    color integer,
    sortorder integer,
    comment character varying,
    image_bmp character varying
);


ALTER TABLE t_sysstatus OWNER TO postgres;

--
-- Name: v_porderd; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_porderd AS
 SELECT d.pd_pk,
    d.pd_po,
    d.pd_ar,
    a.ar_name,
    d.pd_qty,
    d.pd_price,
    (d.pd_qty * d.pd_price) AS total,
    s.color
   FROM ((porderd d
     JOIN articles a ON ((d.pd_ar = a.ar_pk)))
     LEFT JOIN t_sysstatus s ON ((((a.ar_manaf)::text = (s.statusname)::text) AND ((s.statustype)::text = 'manaf'::text))))
  ORDER BY d.pd_pk;


ALTER TABLE v_porderd OWNER TO postgres;

--
-- Name: p_porderd_edit(integer, integer, integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_porderd_edit(_pd_pk integer, _pd_po integer DEFAULT NULL::integer, _pd_ar integer DEFAULT NULL::integer, _pd_qty integer DEFAULT NULL::integer, _pd_price integer DEFAULT NULL::integer) RETURNS SETOF v_porderd
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select pd_pk from porderd where pd_pk = _pd_pk) then
    update porderd
	set 
        pd_po = _pd_po 
        ,pd_ar = _pd_ar
        ,pd_qty = _pd_qty
        ,pd_price = _pd_price
            
    where	
	    pd_pk = _pd_pk;
 else
	if (_pd_pk is null ) then
		_pd_pk := nextval('porderd_pd_pk_seq'::regclass);
	end if;   
   insert into porderd(
        pd_pk
        ,pd_po 
        ,pd_ar 
        ,pd_qty 
        ,pd_price 
            
	) 
   values (
        _pd_pk
        ,_pd_po
        ,_pd_ar
        ,_pd_qty
        ,_pd_price
             
	  );
 end if;
  return query select * from v_porderd where pd_pk = _pd_pk;
end;
$$;


ALTER FUNCTION public.p_porderd_edit(_pd_pk integer, _pd_po integer, _pd_ar integer, _pd_qty integer, _pd_price integer) OWNER TO postgres;

--
-- Name: p_porderh_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_porderh_del(_po_pk integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
   delete from porderh where po_pk = _po_pk;
end;
$$;


ALTER FUNCTION public.p_porderh_del(_po_pk integer) OWNER TO postgres;

--
-- Name: porderh; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE porderh (
    po_pk integer NOT NULL,
    po_date timestamp with time zone,
    po_vendor character varying(50),
    po_cur character varying(3),
    po_inco character varying(3),
    po_due date,
    po_plandate date
);


ALTER TABLE porderh OWNER TO postgres;

--
-- Name: v_pototal; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_pototal AS
 SELECT h.po_pk,
    sum((d.pd_qty * d.pd_price)) AS total,
    (fn_getcur(h.po_date, h.po_cur) * (sum((d.pd_qty * d.pd_price)))::numeric) AS totalrur
   FROM (porderh h
     JOIN porderd d ON ((h.po_pk = d.pd_po)))
  GROUP BY h.po_pk, h.po_date, h.po_cur;


ALTER TABLE v_pototal OWNER TO postgres;

--
-- Name: v_porderh; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_porderh AS
 SELECT h.po_pk,
    h.po_date,
    h.po_vendor,
    h.po_cur,
    h.po_inco,
    h.po_due,
    h.po_plandate,
    t.total AS totalcur,
    t.totalrur,
    s.color,
    (('<a href="/po/print/'::text || (h.po_pk)::text) || '"><img src="easyui/theme/icons/printer.png"/></a>'::text) AS prnlink
   FROM ((porderh h
     LEFT JOIN v_pototal t ON ((h.po_pk = t.po_pk)))
     LEFT JOIN t_sysstatus s ON ((((h.po_cur)::text = (s.statusname)::text) AND ((s.statustype)::text = 'cur'::text))))
  ORDER BY h.po_date DESC;


ALTER TABLE v_porderh OWNER TO postgres;

--
-- Name: p_porderh_edit(integer, timestamp with time zone, character varying, character varying, character varying, date, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_porderh_edit(_po_pk integer, _po_date timestamp with time zone DEFAULT NULL::timestamp with time zone, _po_vendor character varying DEFAULT NULL::character varying, _po_cur character varying DEFAULT NULL::character varying, _po_inco character varying DEFAULT NULL::character varying, _po_due date DEFAULT NULL::date, _po_plandate date DEFAULT NULL::date) RETURNS SETOF v_porderh
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select po_pk from porderh where po_pk = _po_pk) then
    update porderh
	set 
        po_date = _po_date 
        ,po_vendor = _po_vendor
        ,po_cur = _po_cur
        ,po_inco = _po_inco
        ,po_due = _po_due
        ,po_plandate = _po_plandate
            
    where	
	    po_pk = _po_pk;
 else
	if (_po_pk is null ) then
		_po_pk := nextval('porderh_po_pk_seq'::regclass);
	end if;   
   insert into porderh(
        po_pk
        ,po_date 
        ,po_vendor 
        ,po_cur 
        ,po_inco 
        ,po_due 
        ,po_plandate 
            
	) 
   values (
        _po_pk
        ,_po_date
        ,_po_vendor
        ,_po_cur
        ,_po_inco
        ,_po_due
        ,_po_plandate
             
	  );
 end if;
  return query select * from v_porderh where po_pk = _po_pk;
end;
$$;


ALTER FUNCTION public.p_porderh_edit(_po_pk integer, _po_date timestamp with time zone, _po_vendor character varying, _po_cur character varying, _po_inco character varying, _po_due date, _po_plandate date) OWNER TO postgres;

--
-- Name: p_rpdeclare_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_rpdeclare_del(_iddeclare integer) RETURNS void
    LANGUAGE sql
    AS $$
delete from t_rpDeclare where IdDeclare = _IdDeclare;
$$;


ALTER FUNCTION public.p_rpdeclare_del(_iddeclare integer) OWNER TO postgres;

--
-- Name: t_rpdeclare; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_rpdeclare (
    iddeclare integer NOT NULL,
    decname character varying(255),
    descr character varying(255),
    dectype integer,
    decsql character varying,
    keyfield character varying(50),
    dispfield character varying(50),
    keyvalue character varying(255),
    dispvalue character varying(255),
    keyparamname character varying(50),
    dispparamname character varying(50),
    isbasename integer,
    descript character varying,
    addkeys character varying(500),
    tablename character varying(50),
    editproc character varying(50),
    delproc character varying(50),
    image_bmp character varying,
    savefieldlist character varying
);


ALTER TABLE t_rpdeclare OWNER TO postgres;

--
-- Name: p_rpdeclare_edit(integer, character varying, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_rpdeclare_edit(_iddeclare integer, _decname character varying, _descr character varying, _dectype integer, _decsql character varying, _keyfield character varying, _dispfield character varying, _keyvalue character varying, _dispvalue character varying, _keyparamname character varying, _dispparamname character varying, _isbasename integer, _descript character varying, _addkeys character varying, _tablename character varying, _editproc character varying, _delproc character varying, _image_bmp character varying, _savefieldlist character varying) RETURNS SETOF t_rpdeclare
    LANGUAGE plpgsql
    AS $$
BEGIN
IF EXISTS (SELECT IdDeclare FROM t_rpDeclare  WHERE IdDeclare = _IdDeclare) THEN
UPDATE t_rpDeclare SET
	DecName = _DecName,
	Descr = _Descr,
	DecType = _DecType,
	DecSQL = _DecSQL,
	KeyField = _KeyField,
	DispField = _DispField,
	KeyValue = _KeyValue,
	DispValue = _DispValue,
	KeyParamName = _KeyParamName,
	DispParamName = _DispParamName,
	IsBaseName = _IsBaseName,
	Descript = _Descript,
	AddKeys = _AddKeys,
	TableName = _TableName,
	EditProc = _EditProc,
	DelProc = _DelProc,
	image_bmp = _image_bmp,
	SaveFieldList = _SaveFieldList
WHERE IdDeclare = _IdDeclare;

ELSE

IF (COALESCE(_IdDeclare, 0) =0) THEN
   SELECT  MAX (IdDeclare) + 1 FROM t_rpDeclare INTO _IdDeclare;
END IF;
INSERT INTO t_rpDeclare
(
	IdDeclare,
	DecName,
	Descr,
	DecType,
	DecSQL,
	KeyField,
	DispField,
	KeyValue,
	DispValue,
	KeyParamName,
	DispParamName,
	IsBaseName,
	Descript,
	AddKeys,
	TableName,
	EditProc,
	DelProc,
	image_bmp,
	SaveFieldList
)
VALUES
(
	_IdDeclare,
	_DecName,
	_Descr,
	_DecType,
	_DecSQL,
	_KeyField,
	_DispField,
	_KeyValue,
	_DispValue,
	_KeyParamName,
	_DispParamName,
	_IsBaseName,
	_Descript,
	_AddKeys,
	_TableName,
	_EditProc,
	_DelProc,
	_image_bmp,
	_SaveFieldList
);
END IF;

return query select * from t_rpDeclare  WHERE IdDeclare = _IdDeclare;
END;
$$;


ALTER FUNCTION public.p_rpdeclare_edit(_iddeclare integer, _decname character varying, _descr character varying, _dectype integer, _decsql character varying, _keyfield character varying, _dispfield character varying, _keyvalue character varying, _dispvalue character varying, _keyparamname character varying, _dispparamname character varying, _isbasename integer, _descript character varying, _addkeys character varying, _tablename character varying, _editproc character varying, _delproc character varying, _image_bmp character varying, _savefieldlist character varying) OWNER TO postgres;

--
-- Name: p_sysaccesuser(character varying, character varying, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_sysaccesuser(_grp character varying, _account character varying, _action integer) RETURNS void
    LANGUAGE sql
    AS $$
INSERT INTO t_AccessReport
(
GRP,
ACCOUNT,
FULLNAME,
EMAIL,
Type
)
SELECT 
_GRP GRP, 
A.Account,
A.FULLNAME,
A.EMAIL,
A.TYPE
FROM fn_FReeAccount(_GRP) A
WHERE A.Account = _Account AND _Action = 1 LIMIT 1;
DELETE FROM t_AccessReport
WHERE Account = _Account AND GRP = _GRP AND _Action = 2;
$$;


ALTER FUNCTION public.p_sysaccesuser(_grp character varying, _account character varying, _action integer) OWNER TO postgres;

--
-- Name: p_t_mnmainmenu_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_mnmainmenu_del(_idmenu integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
   delete from t_mnmainmenu where idmenu = _idmenu;
end;
$$;


ALTER FUNCTION public.p_t_mnmainmenu_del(_idmenu integer) OWNER TO postgres;

--
-- Name: t_mnmainmenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_mnmainmenu (
    idmenu integer NOT NULL,
    ordmenu integer,
    caption character varying(255),
    link character varying(255),
    app character varying(255),
    link1 character varying(255),
    mnemo character varying(255),
    params character varying,
    web character varying(250),
    silver character varying(250)
);


ALTER TABLE t_mnmainmenu OWNER TO postgres;

--
-- Name: p_t_mnmainmenu_edit(integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_mnmainmenu_edit(_idmenu integer, _ordmenu integer DEFAULT NULL::integer, _caption character varying DEFAULT NULL::character varying, _link character varying DEFAULT NULL::character varying, _app character varying DEFAULT NULL::character varying, _link1 character varying DEFAULT NULL::character varying, _mnemo character varying DEFAULT NULL::character varying, _params character varying DEFAULT NULL::character varying, _web character varying DEFAULT NULL::character varying, _silver character varying DEFAULT NULL::character varying) RETURNS SETOF t_mnmainmenu
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select idmenu from t_mnmainmenu where idmenu = _idmenu) then
    update t_mnmainmenu
	set 
        ordmenu = _ordmenu 
        ,caption = _caption
        ,link = _link
        ,app = _app
        ,link1 = _link1
        ,mnemo = _mnemo
        ,params = _params
        ,web = _web
        ,silver = _silver
            
    where	
	    idmenu = _idmenu;
 else
	if (_idmenu is null ) then
		_idmenu := nextval('t_mnmainmenu_idmenu_seq'::regclass);
	end if;   
   insert into t_mnmainmenu(
        idmenu
        ,ordmenu 
        ,caption 
        ,link 
        ,app 
        ,link1 
        ,mnemo 
        ,params 
        ,web 
        ,silver 
            
	) 
   values (
        _idmenu
        ,_ordmenu
        ,_caption
        ,_link
        ,_app
        ,_link1
        ,_mnemo
        ,_params
        ,_web
        ,_silver
             
	  );
 end if;
  return query select * from t_mnmainmenu where idmenu = _idmenu;
end;
$$;


ALTER FUNCTION public.p_t_mnmainmenu_edit(_idmenu integer, _ordmenu integer, _caption character varying, _link character varying, _app character varying, _link1 character varying, _mnemo character varying, _params character varying, _web character varying, _silver character varying) OWNER TO postgres;

--
-- Name: p_t_rpdeclare1_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_rpdeclare1_del(_iddeclare integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
   delete from t_rpdeclare where iddeclare = _iddeclare;
end;
$$;


ALTER FUNCTION public.p_t_rpdeclare1_del(_iddeclare integer) OWNER TO postgres;

--
-- Name: p_t_rpdeclareedit_del(uuid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_rpdeclareedit_del(_de_pk uuid) RETURNS void
    LANGUAGE sql
    AS $$
 DELETE FROM t_rpDeclareEdit
 WHERE 
DE_PK = _DE_PK;
$$;


ALTER FUNCTION public.p_t_rpdeclareedit_del(_de_pk uuid) OWNER TO postgres;

--
-- Name: p_t_rpdeclareedit_edit(uuid, uuid, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, character varying, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_rpdeclareedit_edit(_de_pk uuid, _de_de uuid, _dlevel integer, _dord integer, _decname character varying, _caption character varying, _keyfield character varying, _srckeyfield character varying, _dispfield character varying, _srcdispfield character varying, _iddeclare integer, _classname character varying, _color integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
IF EXISTS(SELECT DE_PK FROM t_rpDeclareEdit 
 WHERE 
DE_PK = _DE_PK
) THEN
UPDATE t_rpDeclareEdit
SET 
DE_DE = _DE_DE
,DLevel = _DLevel
,DOrd = _DOrd
,DecName = _DecName
,Caption = _Caption
,KeyField = _KeyField
,srcKeyField = _srcKeyField
,DispField = _DispField
,srcDispField = _srcDispField
,IdDeclare = _IdDeclare
,ClassName = _ClassName
,Color = _Color
 WHERE 
DE_PK = _DE_PK;
ELSE
IF (_DE_PK IS NULL ) THEN
   _DE_PK := NEWID(); 
END IF;   
INSERT INTO t_rpDeclareEdit(
DE_PK, 
DE_DE
,DLevel
,DOrd
,DecName
,Caption
,KeyField
,srcKeyField
,DispField
,srcDispField
,IdDeclare
,ClassName
,Color
) VALUES (
_DE_PK, 
_DE_DE
,_DLevel
,_DOrd
,_DecName
,_Caption
,_KeyField
,_srcKeyField
,_DispField
,_srcDispField
,_IdDeclare
,_ClassName
,_Color
); 
END IF;
END;
$$;


ALTER FUNCTION public.p_t_rpdeclareedit_edit(_de_pk uuid, _de_de uuid, _dlevel integer, _dord integer, _decname character varying, _caption character varying, _keyfield character varying, _srckeyfield character varying, _dispfield character varying, _srcdispfield character varying, _iddeclare integer, _classname character varying, _color integer) OWNER TO postgres;

--
-- Name: p_t_sysfieldmap_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysfieldmap_del(_idmap integer) RETURNS void
    LANGUAGE sql
    AS $$
 DELETE FROM t_sysFieldMap
 WHERE 
idMap = _idMap;
$$;


ALTER FUNCTION public.p_t_sysfieldmap_del(_idmap integer) OWNER TO postgres;

--
-- Name: t_sysfieldmap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_sysfieldmap (
    idmap integer NOT NULL,
    decname character varying(255),
    dstfield character varying(50),
    srcfield character varying(50),
    iddeclare integer,
    classname character varying(250),
    groupdec character varying(50),
    keyfield integer
);


ALTER TABLE t_sysfieldmap OWNER TO postgres;

--
-- Name: p_t_sysfieldmap_edit(integer, character varying, character varying, character varying, integer, character varying, character varying, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysfieldmap_edit(_idmap integer, _decname character varying DEFAULT NULL::character varying, _dstfield character varying DEFAULT NULL::character varying, _srcfield character varying DEFAULT NULL::character varying, _iddeclare integer DEFAULT NULL::integer, _classname character varying DEFAULT NULL::character varying, _groupdec character varying DEFAULT NULL::character varying, _keyfield integer DEFAULT NULL::integer) RETURNS SETOF t_sysfieldmap
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select idmap from t_sysfieldmap where idmap = _idmap) then
    update t_sysfieldmap
	set 
        decname = _decname 
        ,dstfield = _dstfield
        ,srcfield = _srcfield
        ,iddeclare = _iddeclare
        ,classname = _classname
        ,groupdec = _groupdec
        ,keyfield = _keyfield
            
    where	
	    idmap = _idmap;
 else
	if (_idmap is null ) then
		_idmap := nextval('t_sysfieldmap_idmap_seq'::regclass);
	end if;   
   insert into t_sysfieldmap(
        idmap
        ,decname 
        ,dstfield 
        ,srcfield 
        ,iddeclare 
        ,classname 
        ,groupdec 
        ,keyfield 
            
	) 
   values (
        _idmap
        ,_decname
        ,_dstfield
        ,_srcfield
        ,_iddeclare
        ,_classname
        ,_groupdec
        ,_keyfield
             
	  );
 end if;
  return query select * from t_sysfieldmap where idmap = _idmap;
end;
$$;


ALTER FUNCTION public.p_t_sysfieldmap_edit(_idmap integer, _decname character varying, _dstfield character varying, _srcfield character varying, _iddeclare integer, _classname character varying, _groupdec character varying, _keyfield integer) OWNER TO postgres;

--
-- Name: p_t_sysmenuimage_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysmenuimage_del(_idimage integer) RETURNS void
    LANGUAGE sql
    AS $$
delete from t_sysMenuImage where idimage = _idimage;
$$;


ALTER FUNCTION public.p_t_sysmenuimage_del(_idimage integer) OWNER TO postgres;

--
-- Name: t_sysmenuimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_sysmenuimage (
    idimage integer NOT NULL,
    caption character varying(500),
    image_bmp character varying,
    mnemo character varying(255)
);


ALTER TABLE t_sysmenuimage OWNER TO postgres;

--
-- Name: p_t_sysmenuimage_edit(integer, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysmenuimage_edit(_idimage integer, _caption character varying DEFAULT NULL::character varying, _image_bmp character varying DEFAULT NULL::character varying, _mnemo character varying DEFAULT NULL::character varying) RETURNS SETOF t_sysmenuimage
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select idimage from t_sysmenuimage where idimage = _idimage) then
    update t_sysmenuimage
	set 
        caption = _caption 
        ,image_bmp = _image_bmp
        ,mnemo = _mnemo
            
    where	
	    idimage = _idimage;
 else
	if (_idimage is null ) then
		_idimage := nextval('t_sysmenuimage_idimage_seq'::regclass);
	end if;   
   insert into t_sysmenuimage(
        idimage
        ,caption 
        ,image_bmp 
        ,mnemo 
            
	) 
   values (
        _idimage
        ,_caption
        ,_image_bmp
        ,_mnemo
             
	  );
 end if;
  return query select * from t_sysmenuimage where idimage = _idimage;
end;
$$;


ALTER FUNCTION public.p_t_sysmenuimage_edit(_idimage integer, _caption character varying, _image_bmp character varying, _mnemo character varying) OWNER TO postgres;

--
-- Name: p_t_sysstatus_del(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysstatus_del(_idstatus integer) RETURNS void
    LANGUAGE sql
    AS $$
 DELETE FROM t_sysStatus
 WHERE 
idStatus = _idStatus;
$$;


ALTER FUNCTION public.p_t_sysstatus_del(_idstatus integer) OWNER TO postgres;

--
-- Name: p_t_sysstatus_edit(integer, character varying, character varying, integer, integer, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_sysstatus_edit(_idstatus integer, _statustype character varying, _statusname character varying, _color integer, _sortorder integer, _comment character varying, _image_bmp character varying) RETURNS SETOF t_sysstatus
    LANGUAGE plpgsql
    AS $$
 begin
 if exists(select idstatus from t_sysstatus where idstatus = _idstatus) then
    update t_sysstatus
	set 
        statustype = _statustype 
        ,statusname = _statusname
        ,color = _color
        ,sortorder = _sortorder
        ,comment = _comment
        ,image_bmp = _image_bmp
            
    where	
	    idstatus = _idstatus;
 else
	if (_idstatus is null ) then
		_idstatus := nextval('t_sysstatus_idstatus_seq'::regclass);
	end if;   
   insert into t_sysstatus(
        idstatus
        ,statustype 
        ,statusname 
        ,color 
        ,sortorder 
        ,comment 
        ,image_bmp 
            
	) 
   values (
        _idstatus
        ,_statustype
        ,_statusname
        ,_color
        ,_sortorder
        ,_comment
        ,_image_bmp
             
	  );
 end if;
  return query select * from t_sysstatus where idstatus = _idstatus;
end;
$$;


ALTER FUNCTION public.p_t_sysstatus_edit(_idstatus integer, _statustype character varying, _statusname character varying, _color integer, _sortorder integer, _comment character varying, _image_bmp character varying) OWNER TO postgres;

--
-- Name: p_t_usergroup_del(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_usergroup_del(_groupname character varying) RETURNS void
    LANGUAGE sql
    AS $$
 DELETE FROM t_AccessReport WHERE GRP = _GroupName or ACCOUNT = _GroupName;
 DELETE FROM t_UserGroup
 WHERE GroupName = _GroupName;
 $$;


ALTER FUNCTION public.p_t_usergroup_del(_groupname character varying) OWNER TO postgres;

--
-- Name: t_usergroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_usergroup (
    groupname character varying(50) NOT NULL,
    type integer,
    caption character varying(255)
);


ALTER TABLE t_usergroup OWNER TO postgres;

--
-- Name: p_t_usergroup_edit(character varying, integer, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION p_t_usergroup_edit(_groupname character varying, _type integer DEFAULT NULL::integer, _caption character varying DEFAULT NULL::character varying) RETURNS SETOF t_usergroup
    LANGUAGE plpgsql
    AS $$
 begin

 _type := 0;

 if exists(select groupname from t_usergroup where groupname = _groupname) then
    update t_usergroup
	set 
        type = _type 
        ,caption = _caption
            
    where	
	    groupname = _groupname;
 else
	if (_groupname is null ) then
		_groupname := '';
	end if;   
   insert into t_usergroup(
        groupname
        ,type 
        ,caption 
            
	) 
   values (
        _groupname
        ,_type
        ,_caption
             
	  );
 end if;
  return query select * from t_usergroup where groupname = _groupname;
end;
$$;


ALTER FUNCTION public.p_t_usergroup_edit(_groupname character varying, _type integer, _caption character varying) OWNER TO postgres;

--
-- Name: articles_ar_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE articles_ar_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE articles_ar_pk_seq OWNER TO postgres;

--
-- Name: articles_ar_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE articles_ar_pk_seq OWNED BY articles.ar_pk;


--
-- Name: currate_cr_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE currate_cr_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE currate_cr_pk_seq OWNER TO postgres;

--
-- Name: currate_cr_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE currate_cr_pk_seq OWNED BY currate.cr_pk;


--
-- Name: porderd_pd_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE porderd_pd_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE porderd_pd_pk_seq OWNER TO postgres;

--
-- Name: porderd_pd_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE porderd_pd_pk_seq OWNED BY porderd.pd_pk;


--
-- Name: porderh_po_pk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE porderh_po_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE porderh_po_pk_seq OWNER TO postgres;

--
-- Name: porderh_po_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE porderh_po_pk_seq OWNED BY porderh.po_pk;


--
-- Name: t_accessreport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_accessreport (
    grp character varying(50) NOT NULL,
    account character varying(50) NOT NULL,
    fullname character varying(255),
    email character varying(50),
    type integer
);


ALTER TABLE t_accessreport OWNER TO postgres;

--
-- Name: t_mnmainmenu_idmenu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_mnmainmenu_idmenu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_mnmainmenu_idmenu_seq OWNER TO postgres;

--
-- Name: t_mnmainmenu_idmenu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_mnmainmenu_idmenu_seq OWNED BY t_mnmainmenu.idmenu;


--
-- Name: t_ntusers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_ntusers (
    username character varying(50) NOT NULL,
    fullname character varying(250),
    description character varying(500),
    orgs character varying(50),
    pass character varying(50),
    email character varying(100),
    icq character varying(50),
    skype character varying(100)
);


ALTER TABLE t_ntusers OWNER TO postgres;

--
-- Name: t_sysfieldmap_idmap_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_sysfieldmap_idmap_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_sysfieldmap_idmap_seq OWNER TO postgres;

--
-- Name: t_sysfieldmap_idmap_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_sysfieldmap_idmap_seq OWNED BY t_sysfieldmap.idmap;


--
-- Name: t_sysmenuimage_idimage_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_sysmenuimage_idimage_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_sysmenuimage_idimage_seq OWNER TO postgres;

--
-- Name: t_sysmenuimage_idimage_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_sysmenuimage_idimage_seq OWNED BY t_sysmenuimage.idimage;


--
-- Name: t_sysparams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_sysparams (
    paramname character varying(50) NOT NULL,
    paramvalue character varying,
    paramdescription character varying(255),
    dateparam timestamp without time zone
);


ALTER TABLE t_sysparams OWNER TO postgres;

--
-- Name: t_sysstatus_idstatus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_sysstatus_idstatus_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_sysstatus_idstatus_seq OWNER TO postgres;

--
-- Name: t_sysstatus_idstatus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_sysstatus_idstatus_seq OWNED BY t_sysstatus.idstatus;


--
-- Name: t_sysstatustype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_sysstatustype (
    idstatustype integer NOT NULL,
    statustype character varying(50),
    caption character varying(50)
);


ALTER TABLE t_sysstatustype OWNER TO postgres;

--
-- Name: t_sysstatustype_idstatustype_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_sysstatustype_idstatustype_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_sysstatustype_idstatustype_seq OWNER TO postgres;

--
-- Name: t_sysstatustype_idstatustype_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_sysstatustype_idstatustype_seq OWNED BY t_sysstatustype.idstatustype;


--
-- Name: v_articles; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_articles AS
 SELECT a.ar_pk,
    a.ar_name,
    a.ar_desc,
    a.ar_image,
    a.ar_manaf,
    s.color
   FROM (articles a
     LEFT JOIN t_sysstatus s ON ((((a.ar_manaf)::text = (s.statusname)::text) AND ((s.statustype)::text = 'manaf'::text))))
  ORDER BY a.ar_pk;


ALTER TABLE v_articles OWNER TO postgres;

--
-- Name: v_cur_interval; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_cur_interval AS
 SELECT ((date_part('epoch'::text, age((('now'::text)::date)::timestamp with time zone, (( SELECT (max(currate.cr_date))::date AS max
           FROM currate))::timestamp with time zone)) / (3600)::double precision) / (24)::double precision) AS n;


ALTER TABLE v_cur_interval OWNER TO postgres;

--
-- Name: v_currate; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_currate AS
 SELECT currate.cr_pk,
    currate.cr_date,
    currate.cr_cur,
        CASE currate.cr_cur
            WHEN 'USD'::text THEN '&#36;'::text
            WHEN 'EUR'::text THEN '&euro;'::text
            WHEN 'GBP'::text THEN '&#163;'::text
            ELSE ''::text
        END AS sim,
    currate.cr_rate
   FROM currate
  ORDER BY currate.cr_date DESC, currate.cr_cur;


ALTER TABLE v_currate OWNER TO postgres;

--
-- Name: v_mnmainmenu; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_mnmainmenu AS
 SELECT t_mnmainmenu.idmenu,
    t_mnmainmenu.ordmenu,
    t_mnmainmenu.caption,
    t_mnmainmenu.link,
    t_mnmainmenu.app
   FROM t_mnmainmenu;


ALTER TABLE v_mnmainmenu OWNER TO postgres;

--
-- Name: v_object; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_object AS
 SELECT a.objectname,
    a.objecttype,
    a.objcod,
    a.caption
   FROM ( SELECT t_usergroup.groupname AS objectname,
                CASE t_usergroup.type
                    WHEN 0 THEN 'Группа пользователей'::text
                    ELSE 'Группа AD'::text
                END AS objecttype,
            4 AS objcod,
            t_usergroup.caption
           FROM t_usergroup
        UNION ALL
         SELECT t_mnmainmenu.mnemo,
            'Пункт меню'::text AS objecttype,
            7 AS objcod,
            t_mnmainmenu.caption
           FROM t_mnmainmenu
        UNION ALL
         SELECT t_sysstatus.statusname AS mnemo,
            'Транзакция'::text AS objecttype,
            8 AS objcod,
            t_sysstatus.comment AS caption
           FROM t_sysstatus
          WHERE ((t_sysstatus.statustype)::text = 'TRAN'::text)) a;


ALTER TABLE v_object OWNER TO postgres;

--
-- Name: v_sysmenuimage; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_sysmenuimage AS
 SELECT t_sysmenuimage.idimage,
    ('Root/'::text || (t_sysmenuimage.caption)::text) AS caption,
    t_sysmenuimage.caption AS icaption,
    t_sysmenuimage.image_bmp,
    0 AS typeimg
   FROM t_sysmenuimage
UNION ALL
 SELECT i.idimage,
    ('Root/'::text || (m.caption)::text) AS caption,
    i.caption AS icaption,
    i.image_bmp,
    1 AS typeimg
   FROM (t_mnmainmenu m
     JOIN t_sysmenuimage i ON (((m.caption)::text ~~ ((i.caption)::text || '%'::text))));


ALTER TABLE v_sysmenuimage OWNER TO postgres;

--
-- Name: v_tlservicetype; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW v_tlservicetype AS
 SELECT t_sysstatus.sortorder AS ts_type,
    t_sysstatus.statusname AS ts_typename
   FROM t_sysstatus
  WHERE ((t_sysstatus.statustype)::text = 'TS_Type'::text);


ALTER TABLE v_tlservicetype OWNER TO postgres;

--
-- Name: articles ar_pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY articles ALTER COLUMN ar_pk SET DEFAULT nextval('articles_ar_pk_seq'::regclass);


--
-- Name: currate cr_pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currate ALTER COLUMN cr_pk SET DEFAULT nextval('currate_cr_pk_seq'::regclass);


--
-- Name: porderd pd_pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY porderd ALTER COLUMN pd_pk SET DEFAULT nextval('porderd_pd_pk_seq'::regclass);


--
-- Name: porderh po_pk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY porderh ALTER COLUMN po_pk SET DEFAULT nextval('porderh_po_pk_seq'::regclass);


--
-- Name: t_mnmainmenu idmenu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_mnmainmenu ALTER COLUMN idmenu SET DEFAULT nextval('t_mnmainmenu_idmenu_seq'::regclass);


--
-- Name: t_sysfieldmap idmap; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysfieldmap ALTER COLUMN idmap SET DEFAULT nextval('t_sysfieldmap_idmap_seq'::regclass);


--
-- Name: t_sysmenuimage idimage; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysmenuimage ALTER COLUMN idimage SET DEFAULT nextval('t_sysmenuimage_idimage_seq'::regclass);


--
-- Name: t_sysstatus idstatus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysstatus ALTER COLUMN idstatus SET DEFAULT nextval('t_sysstatus_idstatus_seq'::regclass);


--
-- Name: t_sysstatustype idstatustype; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysstatustype ALTER COLUMN idstatustype SET DEFAULT nextval('t_sysstatustype_idstatustype_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY articles (ar_pk, ar_name, ar_desc, ar_image, ar_manaf) FROM stdin;
4	Велосипед для взрослых Stinger Defender 26 (2017)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 24 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id3760788465094902611/2hq" />	Stinger
2	Подростковый велосипед Novatrack Extreme 20 7 (2017)	<ul class="n-snippet-card2__desc n-snippet-card2__desc_type_list"><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img class="image" src="https://avatars.mds.yandex.net/get-mpic/96484/img_id2761886161256926717/2hq" />	Novatrack
10	Велосипед для взрослых Dahon POP Uno (2016)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">рама: сталь, складной</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li><li class="n-snippet-card2__desc-item">одна скорость</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id284588890459746520/2hq" />	\N
11	Велосипед для взрослых Stinger Caiman 26 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 14.0, 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id297637235166528549/2hq" />	Stinger
12	Велосипед для взрослых FORWARD Indie Jam 2.0 (2017)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id4004670699313855886/2hq" />	FORWARD
13	Подростковый велосипед Giant Gloss 24 (2016)	<ul><li class="n-snippet-card2__desc-item">круизер</li><li class="n-snippet-card2__desc-item">подростковый (для девочек)</li><li class="n-snippet-card2__desc-item">возраст 9 - 15 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 24 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id156777533458101476/2hq" />	Giant
14	Велосипед для взрослых FORWARD Agris 1.0 (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0, 19.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id1325769158074470494/2hq" />	FORWARD
15	Велосипед для взрослых STELS Navigator 500 MD 26 V020 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0  дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/175985/img_id5990012633914306017.jpeg/2hq" />	STELS
16	Велосипед для взрослых Kupрer Unicorn	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">электровелосипед</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/372220/img_id9050760836332696693.jpeg/2hq" />	\N
17	Велосипед для взрослых Top Gear Kinetic 110 (ВМЗ26317)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id358019444364551490/2hq" />	Top Gear
18	Подростковый велосипед Novatrack Dart 20 (2015)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id2180370568471478132/2hq" />	Novatrack
19	Велосипед для взрослых Stinger Laguna 26 (2018)	<ul><li class="n-snippet-card2__desc-item">женский велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1336510/img_id5615617244556875241.jpeg/2hq" />	Stinger
20	Детский велосипед SHULZ Bubble 12	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 2 - 4 года</li><li class="n-snippet-card2__desc-item">ременной привод</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 12 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1101307/img_id5962481172115223532.jpeg/2hq" />	\N
21	Велосипед для взрослых STARK Cobra (2016)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li><li class="n-snippet-card2__desc-item">21 скорость</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id4512027163331912029/2hq" />	STARK
22	Велосипед для взрослых STELS Pilot 710 24 Z010 (2018)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь, складной</li><li class="n-snippet-card2__desc-item">колеса 24 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id4087199246573133197.jpeg/2hq" />	STELS
23	Велосипед для взрослых Giant Roam 2 Disc (2016)	<ul><li class="n-snippet-card2__desc-item">горный гибрид</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0, 23.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id4793393032210148908/2hq" />	Giant
24	Велосипед для взрослых STELS Pilot 350 20 Z011 (2018)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 13.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь, складной</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id6624749061593137851.jpeg/2hq" />	STELS
25	Велосипед для взрослых STELS Navigator 900 MD 29 V010 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.5, 19.0, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/466729/img_id2676572671846959720.jpeg/2hq" />	STELS
26	Велосипед для взрослых Author Trophy (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id9121005755737075862/2hq" />	Author
27	Детский велосипед STELS Jet 14 Z010 (2018)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 3 - 5 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 8.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 14 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1244413/img_id2654491465675825618.jpeg/2hq" />	STELS
28	Велосипед для взрослых Merida Matts 6. 10-V (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0, 22.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5040498509939519109/2hq" />	Merida
30	Велосипед для взрослых Schwinn Baywood Women (2018)	<ul><li class="n-snippet-card2__desc-item">женский круизер</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1361544/img_id6007467485114179438.jpeg/2hq" />	\N
31	Подростковый велосипед Welt Edelweiss 20 (2018)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый (для девочек)</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/397397/img_id1771132892932028931.jpeg/2hq" />	\N
32	Велосипед для взрослых Top Gear Kinetic 100 (ВН26419)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 16.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/200316/img_id8539132926753461246/2hq" />	Top Gear
33	Велосипед для взрослых Giant Rove 2 Disc DD (2016)	<ul><li class="n-snippet-card2__desc-item">женский горный гибрид</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id1018338570145218002/2hq" />	Giant
34	Велосипед для взрослых STELS Navigator 500 V 26 (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.5, 19.5, 21.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id333769448487719113/2hq" />	STELS
35	Велосипед для взрослых Stinger Horizont STD (2018)	<ul><li class="n-snippet-card2__desc-item">туристический велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18.0, 20.0, 22.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1364191/img_id2056577651327118086.jpeg/2hq" />	Stinger
36	Детский велосипед STELS Magic 12 (2015)	<ul><li class="n-snippet-card2__desc-item">велосипед для девочек</li><li class="n-snippet-card2__desc-item">возраст 2 - 4 года</li><li class="n-snippet-card2__desc-item">размер рамы: 8.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 12 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id488470805930997366/2hq" />	STELS
37	Велосипед для взрослых STELS Miss 5000 MD 26 V010 (2018)	<ul><li class="n-snippet-card2__desc-item">женский велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/200316/img_id1547696107858215229.jpeg/2hq" />	STELS
38	Велосипед для взрослых Strida LT	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">ременной привод</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1374520/img_id2597111277174503110.jpeg/2hq" />	\N
39	Велосипед для взрослых Stinger Horizont Pro (2018)	<ul><li class="n-snippet-card2__desc-item">туристический велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18.0, 20.0, 22.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1363658/img_id6019446196356345259.jpeg/2hq" />	Stinger
40	Велосипед для взрослых Format 1414 26 (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li><li class="n-snippet-card2__desc-item">24 скорости</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id7648391936478818937/2hq" />	\N
41	Велосипед для взрослых Cube Attention SL 29 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0, 19.0, 21.0, 23.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/199079/img_id8999487619748749937.jpeg/2hq" />	\N
42	Детский велосипед Navigator Hot Wheels (ВН16111)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id2425640200924009889/2hq" />	\N
43	Детский велосипед Navigator Barbie (ВН16108)	<ul><li class="n-snippet-card2__desc-item">велосипед для девочек</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id2589088707152131129/2hq" />	\N
44	Подростковый велосипед TREK Jet 20 (2014)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id2085650817738323799/2hq" />	TREK
45	Велосипед для взрослых Cube Access WLS 27.5 (2017)	<ul><li class="n-snippet-card2__desc-item">женский велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 13.5, 16.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 27.5 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/397397/img_id3073698741080606773/2hq" />	\N
7	Велосипед для взрослых Stinger Banzai 26 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">двухподвесный</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id3302566742792958162/2hq" />	Stinger
8	Велосипед для взрослых STARK Tank 26.1 D (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li><li class="n-snippet-card2__desc-item">21 скорость</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5563661093538061238/2hq" />	STARK
9	Велосипед для взрослых CHALLENGER Mission Lux FS 26 (2017)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">двухподвесный</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id7884688804890814640/2hq" />	CHALLENGER
46	Детский велосипед Navigator Batman (ВН20172)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/372220/img_id7935341260931101826/2hq" />	\N
47	Велосипед для взрослых Десна 2200	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 13.0, 13.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь, складной</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id301130074771970977.jpeg/2hq" />	\N
48	Детский велосипед Novatrack Forest 20 (2017)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id5476162960306013406/2hq" />	Novatrack
49	Велосипед для взрослых Merida Matts 6. 40-D (2015)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 14.5, 16.0, 18.0, 20.0, 22.0, 24.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id9054625663015705839/2hq" />	Merida
50	Подростковый велосипед Capella G20A705S	<ul><li class="n-snippet-card2__desc-item">фэт-байк</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1246680/img_id7282158847307913528.jpeg/2hq" />	\N
51	Велосипед для взрослых Schwinn Alu 1 Women (2018)	<ul><li class="n-snippet-card2__desc-item">женский круизер</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1336510/img_id5324208910510931823.jpeg/2hq" />	\N
52	Велосипед для взрослых Top Gear Kinetic 110 (ВМЗ26248)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 18 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id2051623839139577817/2hq" />	Top Gear
78	Велосипед для взрослых STARK Cobra 26.2 D (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1331400/img_id1126867105364036444.jpeg/2hq" />	STARK
53	Подростковый велосипед STELS Navigator 470 MD 24 (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 9 - 15 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 12.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id8451965820059707601/2hq" />	STELS
54	Велосипед для взрослых Top Gear Meridian 210 (ВН29001)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/200316/img_id1423983848510930193/2hq" />	Top Gear
55	Велосипед для взрослых Stinger Blazer 28 (2015)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id3411437441757956039/2hq" />	Stinger
56	Велосипед для взрослых Stinger The BAT 26 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id3723707730733213636/2hq" />	Stinger
57	Детский велосипед Lider LP16HO Pilot	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id1580224492855096232/2hq" />	\N
58	Велосипед для взрослых STELS Miss 6000 V 26 (2016)	<ul><li class="n-snippet-card2__desc-item">женский велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id992236552055238924/2hq" />	STELS
59	Велосипед для взрослых Author Outset Disc (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5097606893368246125/2hq" />	Author
60	Велосипед для взрослых Giant Glory 27.5 1 (2016)	<ul><li class="n-snippet-card2__desc-item">велосипед для даунхиллa</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 27.5 дюймов</li><li class="n-snippet-card2__desc-item">двухподвесный</li><li class="n-snippet-card2__desc-item">10 скоростей</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id6020728535049656402/2hq" />	Giant
61	Велосипед для взрослых Focus Whistler Elite 29 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li><li class="n-snippet-card2__desc-item">24 скорости</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/331398/img_id1399295924582028255.jpeg/2hq" />	\N
62	Детский велосипед Navigator Basic Cool (ВН14144)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 3 - 5 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 14 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/175985/img_id2476515617477990074/2hq" />	\N
63	Детский велосипед Top Gear Junior Racer (ВН20126)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id2887805037879977717/2hq" />	Top Gear
64	Детский велосипед STELS Pilot 160 16 (2017)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 8.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id7732322788111611918/2hq" />	STELS
65	Велосипед для взрослых Stinger Fix 28 (2014)	<ul><li class="n-snippet-card2__desc-item">дорожный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5009540370569733252/2hq" />	Stinger
66	Подростковый велосипед Merida Chica J24 (2017)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">подростковый (для девочек)</li><li class="n-snippet-card2__desc-item">возраст 9 - 15 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 11.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id1626609703859275048/2hq" />	Merida
68	Велосипед для взрослых Merida Big.Seven 40 (2014)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 13.5, 15.0, 17.0, 18.5, 20.0, 21.5, 23.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 27.5 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/200316/img_id6996609216912220411/2hq" />	Merida
69	Велосипед для взрослых Novatrack TG-20 6 (2017)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li><li class="n-snippet-card2__desc-item">6 скоростей</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5651148381215832218/2hq" />	Novatrack
70	Велосипед для взрослых Merida Matts 6. 20-MD (2015)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 14.5, 16.0, 18.0, 20.0, 22.0, 24.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id6331459190230013753/2hq" />	Merida
71	Подростковый велосипед TREK Precaliber 24 7-Speed Boys (2018)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 9 - 15 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 11.41 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/397397/img_id3507490863558838339.jpeg/2hq" />	TREK
72	Велосипед для взрослых Giant Escape 3-West (2016)	<ul><li class="n-snippet-card2__desc-item">шоссейный гибрид</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0, 23.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id90660862374776371/2hq" />	Giant
73	Велосипед для взрослых STARK Tank 26.1 D (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/200316/img_id2865399161281165976.jpeg/2hq" />	STARK
74	Детский велосипед Navigator Маша и Медведь (ВН18081К)	<ul><li class="n-snippet-card2__desc-item">велосипед для девочек</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 18 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id8768493203278959880.jpeg/2hq" />	\N
75	Велосипед для взрослых Stern Energy 2.0 FS 26 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">двухподвесный</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1361544/img_id9156677859696281474.jpeg/2hq" />	\N
76	Детский велосипед RiverBike S-14	<ul><li class="n-snippet-card2__desc-item">велосипед для девочек</li><li class="n-snippet-card2__desc-item">возраст 3 - 5 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 14 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5357701369628967324/2hq" />	\N
77	Велосипед для взрослых FORWARD Tracer 2.0 Disc (2017)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0, 19.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id5633397120902454869/2hq" />	FORWARD
79	Детский велосипед Royal Baby RB16G-1 Stargirl Steel 16	<ul><li class="n-snippet-card2__desc-item">велосипед для девочек</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id1436531897816402299/2hq" />	Royal Baby
80	Подростковый велосипед STELS Pilot 230 Boy 20 (2016)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 11.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id2233315319560980998/2hq" />	STELS
81	Подростковый велосипед Novatrack Neon 20 6 (2017)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id7704548301330580242/2hq" />	Novatrack
82	Велосипед для взрослых Author Thema (2017)	<ul><li class="n-snippet-card2__desc-item">женский шоссейный гибрид</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0, 19.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id8787388892270466458/2hq" />	Author
83	Велосипед для взрослых Giant XTC Advanced 29 0 (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.35, 17.32, 19.29, 21.06 дюйм</li><li class="n-snippet-card2__desc-item">рама: карбон (углепластик)</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/199079/img_id5604658395829424359.jpeg/2hq" />	Giant
84	Велосипед для взрослых STELS Navigator 730 Disc 27.5 (2014)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.3, 19.3, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 27.5 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id6809930067833733163/2hq" />	STELS
85	Велосипед для взрослых STARK Tactic 27.5+ HD (2018)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.0, 19.0, 21.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 27.5 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/466729/img_id4278797384913803645.jpeg/2hq" />	STARK
86	Велосипед для взрослых Fuji Bikes Nevada 29 1.7 (2015)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 15.0, 17.0, 19.0, 21.0, 23.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 29 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id6865688177982405600/2hq" />	\N
89	Подростковый велосипед Novatrack TG-16 3 (2017)	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав, складной</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/175985/img_id6087967578499727702/2hq" />	Novatrack
90	Детский велосипед Novatrack Strike 18 (2018)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 18 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/199079/img_id1285005989755291071.jpeg/2hq" />	Novatrack
91	Велосипед для взрослых STELS Navigator 870 D 26 (2015)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 17.5, 19.5, 21.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id5369079741645674977/2hq" />	STELS
92	Велосипед для взрослых Dewolf GL 60 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li><li class="n-snippet-card2__desc-item">24 скорости</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/199079/img_id8506555091436183211.jpeg/2hq" />	\N
93	Детский велосипед Author Stylo 16 (2016)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">размер рамы: 9.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/175985/img_id9212733303798110740/2hq" />	Author
94	Подростковый велосипед Novatrack Action 20 6 Disc (2017)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id466274963711351641/2hq" />	Novatrack
96	Детский велосипед Puky 4225 ZL 16 Alu Kiwi	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id8100109714080123121/2hq" />	\N
97	Подростковый велосипед Giant XTC Jr 20 Lite (2017)	<ul><li class="n-snippet-card2__desc-item">горный велосипед</li><li class="n-snippet-card2__desc-item">подростковый</li><li class="n-snippet-card2__desc-item">возраст 6 - 9 лет</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id3157370830144784230/2hq" />	Giant
95	Детский велосипед Novatrack Taxi 12 (2017)	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 2 - 4 года</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 12 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/195452/img_id7040273063639246589/2hq" />	Novatrack
5	Велосипед для взрослых Stinger Element 26 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 14.0, 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id3547790497725399269/2hq" />	Stinger
6	Велосипед для взрослых STELS Navigator 600 MD 26 V020 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 16.0, 18.0, 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id1988890136167148444/2hq" />	STELS
3	Велосипед для взрослых STELS Navigator 325 28 Z010 (2018)	<ul><li class="n-snippet-card2__desc-item">женский городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id1447933763076590373.jpeg/2hq" />	STELS
87	Велосипед для взрослых Merida Juliet 6.5-V (2017)	<ul><li class="n-snippet-card2__desc-item">женский велосипед для кросс-кантри</li><li class="n-snippet-card2__desc-item">размер рамы: 13.5, 15.0, 17.0, 18.5 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 26 дюймов</li><li class="n-snippet-card2__desc-item">Hard tail</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/372220/img_id1810806778475596154.jpeg/2hq" />	Merida
88	Велосипед для взрослых STELS Tyrant 20 (2017)	<ul><li class="n-snippet-card2__desc-item">велосипед для BMX</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 20 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li><li class="n-snippet-card2__desc-item">одна скорость</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/96484/img_id5392782956403789942/2hq" />	STELS
67	Детский велосипед Capella G16BM	<ul><li class="n-snippet-card2__desc-item">детский велосипед</li><li class="n-snippet-card2__desc-item">возраст 4 - 6 лет</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 16 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/1361544/img_id2399746524404370990.jpeg/2hq" />	FORWARD
29	Велосипед для взрослых Десна Вояж Gent	<ul><li class="n-snippet-card2__desc-item">городской велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 20.0 дюйм</li><li class="n-snippet-card2__desc-item">рама: сталь</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">задний ножной тормоз</li></ul>	<img src="https://avatars.mds.yandex.net/get-mpic/364668/img_id7167259787687243096.jpeg/2hq" />	Merida
102	Велоавторучка	шариковая ручка для велотуриста	<img src="https://static.my-shop.ru/product/1/123/1227103.jpg"/>	Merida
1	Велосипед для взрослых TREK Lexa S H3 Fit Compact (2014)	<ul class="n-snippet-card2__desc n-snippet-card2__desc_type_list"><li class="n-snippet-card2__desc-item">женский шоссейный велосипед</li><li class="n-snippet-card2__desc-item">размер рамы: 18.50, 19.68, 20.47, 21.25, 22.04 дюйм</li><li class="n-snippet-card2__desc-item">рама: алюминиевый сплав</li><li class="n-snippet-card2__desc-item">колеса 28 дюймов</li><li class="n-snippet-card2__desc-item">Rigid (жесткий)</li></ul>	<img class="image" src="https://avatars.mds.yandex.net/get-mpic/200316/img_id5753324683322640961/2hq" />	TREK
\.


--
-- Name: articles_ar_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('articles_ar_pk_seq', 103, true);


--
-- Data for Name: currate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY currate (cr_pk, cr_date, cr_cur, cr_rate) FROM stdin;
1	2018-03-03 03:00:00+03	GBP	77.9890
2	2018-03-03 03:00:00+03	USD	56.6616
3	2018-03-03 03:00:00+03	EUR	69.4671
728	2018-10-13 03:00:00+03	EUR	76.5047
729	2018-10-14 03:00:00+03	EUR	76.5047
730	2018-10-15 03:00:00+03	EUR	76.5047
731	2018-10-17 03:00:00+03	EUR	75.9236
732	2018-10-17 03:00:00+03	USD	65.5305
733	2018-10-17 03:00:00+03	GBP	86.4544
734	2018-10-18 03:00:00+03	EUR	75.6512
735	2018-10-18 03:00:00+03	USD	65.4026
736	2018-10-18 03:00:00+03	GBP	86.0175
737	2018-10-19 03:00:00+03	EUR	75.5692
738	2018-10-19 03:00:00+03	USD	65.7238
739	2018-10-19 03:00:00+03	GBP	86.1310
740	2018-10-20 03:00:00+03	EUR	75.3241
741	2018-10-20 03:00:00+03	USD	65.8140
742	2018-10-20 03:00:00+03	GBP	85.7951
743	2018-10-22 03:00:00+03	EUR	75.3241
744	2018-10-22 03:00:00+03	USD	65.8140
745	2018-10-22 03:00:00+03	GBP	85.7951
746	2018-10-23 03:00:00+03	EUR	75.3702
747	2018-10-23 03:00:00+03	USD	65.3065
748	2018-10-23 03:00:00+03	GBP	85.2838
749	2018-10-24 03:00:00+03	EUR	74.8584
750	2018-10-24 03:00:00+03	USD	65.3101
751	2018-10-24 03:00:00+03	GBP	84.8248
752	2018-10-21 03:00:00+03	EUR	75.3241
753	2018-10-21 03:00:00+03	USD	65.8140
754	2018-10-21 03:00:00+03	GBP	85.7951
755	2018-10-26 03:00:00+03	EUR	74.9851
756	2018-10-26 03:00:00+03	USD	65.7476
757	2018-10-26 03:00:00+03	GBP	84.7881
758	2018-10-25 03:00:00+03	EUR	75.0806
759	2018-10-25 03:00:00+03	USD	65.6299
760	2018-10-25 03:00:00+03	GBP	84.9448
761	2018-10-28 03:00:00+03	EUR	74.6658
763	2018-10-28 03:00:00+03	USD	65.6345
765	2018-10-30 03:00:00+03	EUR	75.0399
770	2018-10-30 03:00:00+03	GBP	84.3327
775	2018-10-31 03:00:00+03	USD	65.7742
780	2018-11-02 03:00:00+03	EUR	74.5803
785	2018-11-03 03:00:00+03	GBP	85.5096
790	2018-10-27 03:00:00+03	USD	65.6345
795	2018-11-07 03:00:00+03	EUR	75.3158
800	2018-11-09 03:00:00+03	GBP	87.0005
804	2018-11-10 03:00:00+03	USD	66.8497
809	2018-11-06 03:00:00+03	GBP	85.5096
813	2018-11-13 03:00:00+03	USD	67.5238
818	2018-11-15 03:00:00+03	GBP	88.2200
823	2018-11-14 03:00:00+03	USD	67.6812
828	2018-11-17 03:00:00+03	EUR	74.9022
832	2018-11-16 03:00:00+03	GBP	86.4674
837	2018-11-20 03:00:00+03	EUR	75.3218
842	2018-11-22 03:00:00+03	GBP	84.5130
847	2018-11-23 03:00:00+03	USD	65.6067
851	2018-11-24 03:00:00+03	EUR	74.9385
856	2018-11-26 03:00:00+03	USD	65.6664
861	2018-11-28 03:00:00+03	EUR	75.6217
865	2018-11-29 03:00:00+03	GBP	85.3129
870	2018-12-01 03:00:00+03	EUR	75.7484
1015	2018-12-02 03:00:00+03	USD	66.5335
889	2018-10-15 03:00:00+03	USD	65.9751
1021	2018-12-03 03:00:00+03	EUR	75.7484
1022	2018-12-06 03:00:00+03	EUR	75.7051
1027	2018-12-05 03:00:00+03	GBP	84.7195
121	2018-03-06 03:00:00+03	EUR	70.1702
122	2018-03-04 03:00:00+03	EUR	69.4671
123	2018-03-06 03:00:00+03	USD	57.1000
124	2018-03-06 03:00:00+03	GBP	78.7295
126	2018-03-04 03:00:00+03	GBP	77.9890
125	2018-03-04 03:00:00+03	USD	56.6616
127	2018-04-21 03:00:00+03	EUR	75.6532
128	2018-04-20 03:00:00+03	USD	60.8583
129	2018-04-20 03:00:00+03	GBP	86.3701
131	2018-04-21 03:00:00+03	USD	61.3222
132	2018-04-21 03:00:00+03	GBP	86.1945
134	2018-04-22 03:00:00+03	EUR	75.6532
135	2018-04-20 03:00:00+03	EUR	75.4034
136	2018-04-22 03:00:00+03	GBP	86.1945
140	2018-04-22 03:00:00+03	USD	61.3222
148	2018-05-31 03:00:00+03	EUR	72.5211
149	2018-06-01 03:00:00+03	EUR	72.5806
150	2018-04-23 03:00:00+03	USD	61.3222
151	2018-04-24 03:00:00+03	USD	61.7655
152	2018-04-23 03:00:00+03	GBP	86.1945
153	2018-04-23 03:00:00+03	EUR	75.6532
154	2018-04-25 03:00:00+03	EUR	75.2121
155	2018-04-25 03:00:00+03	USD	61.6644
156	2018-04-25 03:00:00+03	GBP	85.9232
160	2018-04-26 03:00:00+03	EUR	75.3281
162	2018-04-26 03:00:00+03	USD	61.7494
163	2018-04-24 03:00:00+03	EUR	75.7924
167	2018-04-26 03:00:00+03	GBP	86.1589
169	2018-06-07 03:00:00+03	EUR	72.8637
170	2018-06-07 03:00:00+03	GBP	83.1940
174	2018-06-08 03:00:00+03	USD	61.8125
175	2018-04-24 03:00:00+03	GBP	86.5211
176	2018-04-27 03:00:00+03	EUR	76.1812
178	2018-04-27 03:00:00+03	USD	62.6027
185	2018-04-27 03:00:00+03	GBP	87.1430
189	2018-04-28 03:00:00+03	GBP	87.0762
191	2018-04-28 03:00:00+03	EUR	75.7605
193	2018-04-28 03:00:00+03	USD	62.7260
194	2018-04-29 03:00:00+03	USD	61.9997
199	2018-04-29 03:00:00+03	GBP	85.4852
200	2018-04-30 03:00:00+03	USD	61.9997
201	2018-04-29 03:00:00+03	EUR	75.2056
202	2018-04-30 03:00:00+03	GBP	85.4852
205	2018-04-30 03:00:00+03	EUR	75.2056
208	2018-05-01 03:00:00+03	USD	61.9997
211	2018-05-01 03:00:00+03	EUR	75.2056
214	2018-05-01 03:00:00+03	GBP	85.4852
221	2018-05-02 03:00:00+03	EUR	75.2056
223	2018-05-02 03:00:00+03	USD	61.9997
224	2018-05-02 03:00:00+03	GBP	85.4852
225	2018-05-03 03:00:00+03	USD	61.9997
227	2018-05-03 03:00:00+03	GBP	85.4852
231	2018-05-03 03:00:00+03	EUR	75.2056
232	2018-05-04 03:00:00+03	EUR	76.1261
234	2018-05-04 03:00:00+03	USD	63.4860
238	2018-05-05 03:00:00+03	EUR	75.6392
240	2018-05-04 03:00:00+03	GBP	86.4616
241	2018-05-05 03:00:00+03	USD	63.2012
242	2018-05-05 03:00:00+03	GBP	85.7008
762	2018-10-13 03:00:00+03	USD	65.9751
766	2018-10-28 03:00:00+03	GBP	84.0909
772	2018-10-29 03:00:00+03	USD	65.6345
777	2018-11-01 03:00:00+03	EUR	74.4189
782	2018-11-02 03:00:00+03	GBP	84.7301
787	2018-11-04 03:00:00+03	USD	65.5799
792	2018-11-05 03:00:00+03	EUR	74.9906
797	2018-11-07 03:00:00+03	GBP	86.2703
802	2018-11-08 03:00:00+03	USD	66.0918
807	2018-11-06 03:00:00+03	EUR	74.9906
812	2018-11-11 03:00:00+03	GBP	87.0316
817	2018-11-15 03:00:00+03	USD	67.9975
822	2018-11-14 03:00:00+03	EUR	76.0737
827	2018-11-21 03:00:00+03	GBP	84.4237
833	2018-11-16 03:00:00+03	USD	66.6159
838	2018-11-20 03:00:00+03	USD	66.0081
843	2018-11-19 03:00:00+03	EUR	74.9022
848	2018-11-23 03:00:00+03	GBP	83.8650
854	2018-11-24 03:00:00+03	USD	65.6664
859	2018-11-27 03:00:00+03	USD	66.5072
864	2018-11-29 03:00:00+03	EUR	75.5191
869	2018-11-30 03:00:00+03	GBP	85.4250
1016	2018-12-02 03:00:00+03	EUR	75.7484
890	2018-10-15 03:00:00+03	GBP	87.2059
1023	2018-12-03 03:00:00+03	GBP	85.0498
1028	2018-12-05 03:00:00+03	USD	66.4467
764	2018-10-13 03:00:00+03	GBP	87.2059
768	2018-10-30 03:00:00+03	USD	65.8129
771	2018-10-29 03:00:00+03	GBP	84.0909
776	2018-10-31 03:00:00+03	GBP	84.0265
781	2018-11-02 03:00:00+03	USD	65.6517
786	2018-11-04 03:00:00+03	EUR	74.9906
791	2018-10-27 03:00:00+03	GBP	84.0909
253	2018-05-06 03:00:00+03	EUR	75.6392
796	2018-11-07 03:00:00+03	USD	65.9912
255	2018-05-06 03:00:00+03	USD	63.2012
256	2018-05-06 03:00:00+03	GBP	85.7008
801	2018-11-08 03:00:00+03	EUR	75.6817
806	2018-11-10 03:00:00+03	GBP	87.0316
810	2018-11-11 03:00:00+03	USD	66.8497
815	2018-11-13 03:00:00+03	GBP	86.7883
820	2018-11-12 03:00:00+03	USD	66.8497
824	2018-11-21 03:00:00+03	EUR	75.1825
829	2018-11-17 03:00:00+03	USD	65.9931
834	2018-11-18 03:00:00+03	EUR	74.9022
839	2018-11-20 03:00:00+03	GBP	84.9128
266	2018-05-08 03:00:00+03	EUR	74.8125
267	2018-05-08 03:00:00+03	USD	62.7148
268	2018-05-08 03:00:00+03	GBP	84.9158
269	2018-05-07 03:00:00+03	EUR	75.6392
270	2018-05-07 03:00:00+03	GBP	85.7008
844	2018-11-19 03:00:00+03	USD	65.9931
849	2018-11-25 03:00:00+03	EUR	74.9385
273	2018-05-07 03:00:00+03	USD	63.2012
853	2018-11-24 03:00:00+03	GBP	84.4470
275	2018-05-09 03:00:00+03	EUR	75.0409
858	2018-11-27 03:00:00+03	EUR	75.5655
863	2018-11-28 03:00:00+03	GBP	85.1178
278	2018-05-09 03:00:00+03	GBP	85.1093
279	2018-05-09 03:00:00+03	USD	63.0066
867	2018-11-30 03:00:00+03	USD	66.6342
872	2018-12-01 03:00:00+03	GBP	85.0498
1017	2018-12-02 03:00:00+03	GBP	85.0498
283	2018-05-10 03:00:00+03	USD	63.0066
1024	2018-12-03 03:00:00+03	USD	66.5335
1029	2018-12-05 03:00:00+03	EUR	75.6562
286	2018-05-10 03:00:00+03	EUR	75.0409
287	2018-05-10 03:00:00+03	GBP	85.1093
293	2018-05-11 03:00:00+03	USD	62.5229
294	2018-05-11 03:00:00+03	EUR	74.1772
295	2018-05-11 03:00:00+03	GBP	84.6310
302	2018-05-12 03:00:00+03	EUR	73.5145
303	2018-05-12 03:00:00+03	GBP	83.5033
305	2018-05-12 03:00:00+03	USD	61.7354
314	2018-05-13 03:00:00+03	EUR	73.5145
315	2018-05-13 03:00:00+03	USD	61.7354
316	2018-05-13 03:00:00+03	GBP	83.5033
322	2018-05-14 03:00:00+03	USD	61.7354
324	2018-05-14 03:00:00+03	EUR	73.5145
326	2018-05-15 03:00:00+03	GBP	83.9124
325	2018-05-14 03:00:00+03	GBP	83.5033
328	2018-05-15 03:00:00+03	EUR	73.9430
331	2018-05-15 03:00:00+03	USD	61.7684
341	2018-05-16 03:00:00+03	EUR	73.8601
342	2018-05-16 03:00:00+03	USD	61.9164
343	2018-05-16 03:00:00+03	GBP	83.7667
344	2018-05-18 03:00:00+03	EUR	73.0236
345	2018-05-18 03:00:00+03	USD	61.8215
346	2018-05-18 03:00:00+03	GBP	83.6569
349	2018-05-17 03:00:00+03	EUR	73.7796
350	2018-05-17 03:00:00+03	USD	62.3033
355	2018-05-17 03:00:00+03	GBP	84.0596
357	2018-05-19 03:00:00+03	USD	61.9408
361	2018-05-19 03:00:00+03	EUR	73.1769
362	2018-05-19 03:00:00+03	GBP	83.6139
368	2018-05-20 03:00:00+03	EUR	73.1769
369	2018-05-22 03:00:00+03	EUR	73.3321
370	2018-05-20 03:00:00+03	GBP	83.6139
371	2018-05-20 03:00:00+03	USD	61.9408
372	2018-05-22 03:00:00+03	GBP	83.9189
373	2018-05-22 03:00:00+03	USD	62.5327
374	2018-05-21 03:00:00+03	EUR	73.1769
375	2018-05-21 03:00:00+03	USD	61.9408
376	2018-05-21 03:00:00+03	GBP	83.6139
767	2018-10-14 03:00:00+03	USD	65.9751
773	2018-10-29 03:00:00+03	EUR	74.6658
778	2018-11-01 03:00:00+03	USD	65.5962
385	2018-05-24 03:00:00+03	EUR	72.1826
783	2018-11-03 03:00:00+03	EUR	74.9906
387	2018-05-23 03:00:00+03	GBP	82.5553
388	2018-05-23 03:00:00+03	EUR	72.2390
389	2018-05-24 03:00:00+03	USD	61.5945
390	2018-05-23 03:00:00+03	USD	61.2610
391	2018-05-24 03:00:00+03	GBP	82.4874
788	2018-11-04 03:00:00+03	GBP	85.5096
793	2018-11-05 03:00:00+03	USD	65.5799
798	2018-11-09 03:00:00+03	EUR	75.6711
803	2018-11-08 03:00:00+03	GBP	86.8711
808	2018-11-06 03:00:00+03	USD	65.5799
814	2018-11-13 03:00:00+03	EUR	76.0926
398	2018-05-25 03:00:00+03	EUR	72.0082
399	2018-05-25 03:00:00+03	USD	61.4090
400	2018-05-25 03:00:00+03	GBP	82.1959
819	2018-11-12 03:00:00+03	EUR	75.8076
825	2018-11-14 03:00:00+03	GBP	87.2614
830	2018-11-17 03:00:00+03	GBP	84.6296
835	2018-11-18 03:00:00+03	USD	65.9931
840	2018-11-22 03:00:00+03	EUR	75.1483
845	2018-11-19 03:00:00+03	GBP	84.6296
850	2018-11-25 03:00:00+03	USD	65.6664
855	2018-11-26 03:00:00+03	EUR	74.9385
860	2018-11-27 03:00:00+03	GBP	85.3686
410	2018-05-26 03:00:00+03	EUR	72.1183
866	2018-11-29 03:00:00+03	USD	66.9436
412	2018-05-26 03:00:00+03	USD	61.6659
413	2018-05-26 03:00:00+03	GBP	82.3055
871	2018-12-01 03:00:00+03	USD	66.5335
1025	2018-12-04 03:00:00+03	EUR	75.3874
1030	2018-12-07 03:00:00+03	EUR	75.6071
425	2018-05-27 03:00:00+03	EUR	72.1183
426	2018-05-27 03:00:00+03	USD	61.6659
428	2018-05-28 03:00:00+03	EUR	72.1183
429	2018-05-27 03:00:00+03	GBP	82.3055
430	2018-05-28 03:00:00+03	GBP	82.3055
435	2018-05-28 03:00:00+03	USD	61.6659
454	2018-05-29 03:00:00+03	EUR	72.8322
457	2018-05-29 03:00:00+03	USD	62.2710
458	2018-05-29 03:00:00+03	GBP	82.9574
461	2018-05-30 03:00:00+03	USD	62.6420
462	2018-05-30 03:00:00+03	GBP	82.8190
463	2018-05-30 03:00:00+03	EUR	72.5269
483	2018-05-31 03:00:00+03	USD	62.5937
485	2018-05-31 03:00:00+03	GBP	83.0556
487	2018-06-01 03:00:00+03	GBP	82.6897
498	2018-06-01 03:00:00+03	USD	62.0188
500	2018-06-02 03:00:00+03	EUR	72.7183
501	2018-06-02 03:00:00+03	GBP	82.5904
506	2018-06-02 03:00:00+03	USD	62.2056
512	2018-06-03 03:00:00+03	EUR	72.7183
513	2018-06-03 03:00:00+03	USD	62.2056
514	2018-06-04 03:00:00+03	GBP	82.5904
515	2018-06-04 03:00:00+03	EUR	72.7183
516	2018-06-03 03:00:00+03	GBP	82.5904
518	2018-06-04 03:00:00+03	USD	62.2056
769	2018-10-14 03:00:00+03	GBP	87.2059
774	2018-10-31 03:00:00+03	EUR	74.7918
779	2018-11-01 03:00:00+03	GBP	83.5958
784	2018-11-03 03:00:00+03	USD	65.5799
789	2018-10-27 03:00:00+03	EUR	74.6658
794	2018-11-05 03:00:00+03	GBP	85.5096
799	2018-11-09 03:00:00+03	USD	66.2155
805	2018-11-10 03:00:00+03	EUR	75.8076
811	2018-11-11 03:00:00+03	EUR	75.8076
816	2018-11-15 03:00:00+03	EUR	76.7556
821	2018-11-12 03:00:00+03	GBP	87.0316
826	2018-11-21 03:00:00+03	USD	65.5871
831	2018-11-16 03:00:00+03	EUR	75.5358
836	2018-11-18 03:00:00+03	GBP	84.6296
841	2018-11-22 03:00:00+03	USD	65.9485
846	2018-11-23 03:00:00+03	EUR	74.8048
852	2018-11-25 03:00:00+03	GBP	84.4470
857	2018-11-26 03:00:00+03	GBP	84.4470
862	2018-11-28 03:00:00+03	USD	66.7800
868	2018-11-30 03:00:00+03	EUR	75.8897
1026	2018-12-04 03:00:00+03	USD	66.2921
1031	2018-12-07 03:00:00+03	GBP	84.8036
1036	2018-12-04 03:00:00+03	GBP	84.8406
879	2018-10-16 03:00:00+03	EUR	76.0540
527	2018-06-05 03:00:00+03	EUR	72.4384
529	2018-06-05 03:00:00+03	USD	61.9290
530	2018-06-05 03:00:00+03	GBP	82.7248
539	2018-06-06 03:00:00+03	EUR	72.5130
541	2018-06-06 03:00:00+03	USD	61.9822
542	2018-06-06 03:00:00+03	GBP	82.6781
549	2018-06-08 03:00:00+03	GBP	83.2244
551	2018-06-07 03:00:00+03	USD	62.0064
561	2018-06-08 03:00:00+03	EUR	73.0686
571	2018-06-09 03:00:00+03	EUR	73.7916
572	2018-06-09 03:00:00+03	USD	62.6680
573	2018-06-09 03:00:00+03	GBP	84.0065
880	2018-10-16 03:00:00+03	GBP	86.2716
1040	2018-12-07 03:00:00+03	USD	66.7377
335	2018-06-10 03:00:00+03	USD	62.3431
336	2018-06-10 03:00:00+03	EUR	73.3654
339	2018-06-10 03:00:00+03	GBP	83.6395
881	2018-10-16 03:00:00+03	USD	65.7508
347	2018-06-12 03:00:00+03	EUR	73.3654
348	2018-06-11 03:00:00+03	EUR	73.3654
350	2018-06-12 03:00:00+03	GBP	83.6395
351	2018-06-12 03:00:00+03	USD	62.3431
352	2018-06-11 03:00:00+03	USD	62.3431
353	2018-06-11 03:00:00+03	GBP	83.6395
355	2018-06-13 03:00:00+03	EUR	73.3654
356	2018-06-13 03:00:00+03	USD	62.3431
359	2018-06-13 03:00:00+03	GBP	83.6395
360	2018-06-14 03:00:00+03	EUR	74.1365
362	2018-06-14 03:00:00+03	USD	63.1164
363	2018-06-14 03:00:00+03	GBP	84.1531
366	2018-06-16 03:00:00+03	EUR	72.5329
367	2018-06-16 03:00:00+03	GBP	83.1455
368	2018-06-16 03:00:00+03	USD	62.6851
369	2018-06-15 03:00:00+03	USD	62.2511
370	2018-06-15 03:00:00+03	EUR	73.5621
371	2018-06-17 03:00:00+03	USD	62.6851
372	2018-06-17 03:00:00+03	EUR	72.5329
373	2018-06-20 03:00:00+03	USD	64.0683
374	2018-06-20 03:00:00+03	EUR	74.1847
375	2018-06-21 03:00:00+03	EUR	73.6118
376	2018-06-21 03:00:00+03	USD	63.6175
377	2018-06-21 03:00:00+03	GBP	83.6888
379	2018-06-17 03:00:00+03	GBP	83.1455
381	2018-06-22 03:00:00+03	EUR	73.6871
382	2018-06-19 03:00:00+03	EUR	73.4825
383	2018-06-22 03:00:00+03	GBP	83.8229
384	2018-06-23 03:00:00+03	EUR	73.7247
385	2018-06-19 03:00:00+03	USD	63.4838
386	2018-06-23 03:00:00+03	USD	63.2396
387	2018-06-19 03:00:00+03	GBP	84.0145
388	2018-06-23 03:00:00+03	GBP	84.0644
389	2018-06-24 03:00:00+03	EUR	73.7247
390	2018-06-24 03:00:00+03	USD	63.2396
391	2018-06-24 03:00:00+03	GBP	84.0644
392	2018-06-18 03:00:00+03	EUR	72.5329
395	2018-06-20 03:00:00+03	GBP	84.4869
398	2018-06-25 03:00:00+03	EUR	73.7247
401	2018-06-25 03:00:00+03	USD	63.2396
402	2018-06-25 03:00:00+03	GBP	84.0644
404	2018-06-18 03:00:00+03	USD	62.6851
405	2018-06-22 03:00:00+03	USD	63.7873
417	2018-06-30 03:00:00+03	EUR	72.9921
418	2018-06-30 03:00:00+03	USD	62.7565
419	2018-06-28 03:00:00+03	USD	63.1359
420	2018-06-28 03:00:00+03	GBP	83.3457
421	2018-07-02 03:00:00+03	USD	62.7565
422	2018-07-02 03:00:00+03	EUR	72.9921
423	2018-07-02 03:00:00+03	GBP	82.3491
424	2018-07-01 03:00:00+03	EUR	72.9921
425	2018-07-01 03:00:00+03	USD	62.7565
426	2018-07-03 03:00:00+03	EUR	73.4690
427	2018-07-01 03:00:00+03	GBP	82.3491
428	2018-07-03 03:00:00+03	USD	63.1394
429	2018-07-03 03:00:00+03	GBP	83.0915
430	2018-07-04 03:00:00+03	EUR	73.7012
431	2018-07-04 03:00:00+03	USD	63.2194
432	2018-07-04 03:00:00+03	GBP	83.3358
433	2018-07-05 03:00:00+03	EUR	73.7097
434	2018-07-05 03:00:00+03	USD	63.2267
435	2018-07-05 03:00:00+03	GBP	83.2949
436	2018-07-06 03:00:00+03	EUR	73.9641
437	2018-07-06 03:00:00+03	USD	63.2604
438	2018-07-06 03:00:00+03	GBP	83.7125
439	2018-07-07 03:00:00+03	EUR	73.9028
440	2018-07-07 03:00:00+03	USD	63.1216
441	2018-07-08 03:00:00+03	EUR	73.9028
442	2018-07-07 03:00:00+03	GBP	83.6046
443	2018-07-08 03:00:00+03	USD	63.1216
444	2018-07-08 03:00:00+03	GBP	83.6046
445	2018-07-12 03:00:00+03	EUR	72.8472
446	2018-07-12 03:00:00+03	USD	62.0980
447	2018-07-12 03:00:00+03	GBP	82.4351
448	2018-07-09 03:00:00+03	EUR	73.9028
449	2018-07-09 03:00:00+03	USD	63.1216
450	2018-07-09 03:00:00+03	GBP	83.6046
451	2018-07-10 03:00:00+03	EUR	73.9365
452	2018-07-10 03:00:00+03	USD	62.8338
453	2018-07-10 03:00:00+03	GBP	83.9271
454	2018-07-11 03:00:00+03	EUR	73.3470
455	2018-07-11 03:00:00+03	USD	62.4442
456	2018-07-13 03:00:00+03	EUR	72.6817
457	2018-07-11 03:00:00+03	GBP	82.9883
458	2018-07-13 03:00:00+03	USD	62.2062
459	2018-07-13 03:00:00+03	GBP	82.2428
460	2018-07-14 03:00:00+03	EUR	72.4659
461	2018-07-14 03:00:00+03	USD	62.2934
462	2018-07-14 03:00:00+03	GBP	81.7788
463	2018-07-18 03:00:00+03	EUR	73.2427
464	2018-07-18 03:00:00+03	USD	62.4352
465	2018-07-18 03:00:00+03	GBP	82.6954
466	2018-07-15 03:00:00+03	EUR	72.4659
467	2018-07-15 03:00:00+03	USD	62.2934
468	2018-07-15 03:00:00+03	GBP	81.7788
469	2018-07-16 03:00:00+03	EUR	72.4659
470	2018-07-16 03:00:00+03	USD	62.2934
471	2018-07-19 03:00:00+03	EUR	73.1345
472	2018-07-16 03:00:00+03	GBP	81.7788
473	2018-07-19 03:00:00+03	USD	62.9006
474	2018-07-19 03:00:00+03	GBP	82.2866
475	2018-07-17 03:00:00+03	EUR	72.7955
476	2018-07-17 03:00:00+03	USD	62.2556
477	2018-07-17 03:00:00+03	GBP	82.4700
478	2018-07-20 03:00:00+03	EUR	73.4808
479	2018-07-20 03:00:00+03	USD	63.2746
480	2018-07-20 03:00:00+03	GBP	82.3899
481	2018-07-21 03:00:00+03	EUR	73.9327
482	2018-07-21 03:00:00+03	USD	63.4888
483	2018-07-21 03:00:00+03	GBP	82.6688
484	2018-07-24 03:00:00+03	EUR	74.1286
485	2018-07-24 03:00:00+03	USD	63.1957
486	2018-07-22 03:00:00+03	EUR	73.9327
487	2018-07-24 03:00:00+03	GBP	83.0834
488	2018-07-22 03:00:00+03	USD	63.4888
489	2018-07-22 03:00:00+03	GBP	82.6688
490	2018-07-25 03:00:00+03	EUR	73.5261
491	2018-07-25 03:00:00+03	USD	62.9235
493	2018-07-23 03:00:00+03	EUR	73.9327
495	2018-07-23 03:00:00+03	GBP	82.6688
497	2018-07-26 03:00:00+03	USD	63.0836
499	2018-07-27 03:00:00+03	EUR	73.8181
502	2018-07-27 03:00:00+03	GBP	83.0020
504	2018-07-28 03:00:00+03	GBP	82.4878
506	2018-07-29 03:00:00+03	USD	62.9726
508	2018-08-01 03:00:00+03	EUR	73.0738
510	2018-08-01 03:00:00+03	GBP	82.0210
512	2018-07-31 03:00:00+03	USD	62.7805
514	2018-07-30 03:00:00+03	EUR	73.3442
517	2018-07-30 03:00:00+03	GBP	82.4878
519	2018-08-02 03:00:00+03	GBP	82.0274
521	2018-08-03 03:00:00+03	USD	63.1358
523	2018-08-04 03:00:00+03	EUR	73.4744
525	2018-08-04 03:00:00+03	GBP	82.4089
527	2018-08-05 03:00:00+03	USD	63.4549
531	2018-08-07 03:00:00+03	EUR	73.4095
537	2018-08-06 03:00:00+03	USD	63.4549
541	2018-08-09 03:00:00+03	EUR	73.8211
545	2018-08-10 03:00:00+03	GBP	85.1969
549	2018-06-27 03:00:00+03	EUR	73.4087
492	2018-07-25 03:00:00+03	GBP	82.4424
494	2018-07-23 03:00:00+03	USD	63.4888
496	2018-07-26 03:00:00+03	EUR	73.7510
498	2018-07-26 03:00:00+03	GBP	82.9991
500	2018-07-27 03:00:00+03	USD	62.9471
501	2018-07-28 03:00:00+03	EUR	73.3442
503	2018-07-28 03:00:00+03	USD	62.9726
505	2018-07-29 03:00:00+03	EUR	73.3442
507	2018-07-29 03:00:00+03	GBP	82.4878
509	2018-08-01 03:00:00+03	USD	62.3497
511	2018-07-31 03:00:00+03	EUR	73.2021
513	2018-07-31 03:00:00+03	GBP	82.3617
515	2018-07-30 03:00:00+03	USD	62.9726
516	2018-08-02 03:00:00+03	EUR	73.1064
518	2018-08-02 03:00:00+03	USD	62.5590
520	2018-08-03 03:00:00+03	EUR	73.4206
522	2018-08-03 03:00:00+03	GBP	82.6574
524	2018-08-04 03:00:00+03	USD	63.4549
526	2018-08-05 03:00:00+03	EUR	73.4744
528	2018-06-27 03:00:00+03	GBP	83.2732
529	2018-08-05 03:00:00+03	GBP	82.4089
530	2018-06-30 03:00:00+03	GBP	82.3491
532	2018-08-07 03:00:00+03	USD	63.4975
533	2018-08-07 03:00:00+03	GBP	82.3118
534	2018-08-06 03:00:00+03	EUR	73.4744
535	2018-08-06 03:00:00+03	GBP	82.4089
536	2018-08-08 03:00:00+03	EUR	73.5632
538	2018-08-08 03:00:00+03	USD	63.5425
539	2018-08-08 03:00:00+03	GBP	82.3638
540	2018-08-09 03:00:00+03	USD	63.5950
542	2018-08-09 03:00:00+03	GBP	82.0884
543	2018-08-10 03:00:00+03	EUR	76.8250
544	2018-08-10 03:00:00+03	USD	66.2856
546	2018-08-11 03:00:00+03	EUR	76.6760
547	2018-08-11 03:00:00+03	USD	66.9075
548	2018-08-11 03:00:00+03	GBP	85.3472
550	2018-06-27 03:00:00+03	USD	62.7908
552	2018-06-28 03:00:00+03	EUR	73.6038
555	2018-06-29 03:00:00+03	USD	63.2910
561	2018-06-29 03:00:00+03	GBP	82.7656
562	2018-06-29 03:00:00+03	EUR	73.0884
566	2018-08-12 03:00:00+03	EUR	76.6760
569	2018-08-12 03:00:00+03	GBP	85.3472
573	2018-08-12 03:00:00+03	USD	66.9075
686	2018-08-14 03:00:00+03	USD	68.2234
687	2018-08-14 03:00:00+03	EUR	77.6519
688	2018-08-16 03:00:00+03	EUR	75.2253
689	2018-08-16 03:00:00+03	USD	66.3772
690	2018-08-17 03:00:00+03	EUR	76.0576
691	2018-08-17 03:00:00+03	USD	66.8932
692	2018-08-17 03:00:00+03	GBP	84.9677
694	2018-08-14 03:00:00+03	GBP	87.0872
695	2018-08-15 03:00:00+03	EUR	76.2325
696	2018-08-15 03:00:00+03	USD	66.7535
700	2018-08-15 03:00:00+03	GBP	85.3978
701	2018-08-13 03:00:00+03	EUR	76.6760
702	2018-08-13 03:00:00+03	USD	66.9075
704	2018-08-13 03:00:00+03	GBP	85.3472
706	2018-08-16 03:00:00+03	GBP	84.4318
707	2018-08-18 03:00:00+03	USD	66.8757
715	2018-08-18 03:00:00+03	EUR	76.1848
716	2018-08-18 03:00:00+03	GBP	85.0993
721	2018-08-20 03:00:00+03	EUR	76.1848
722	2018-08-20 03:00:00+03	USD	66.8757
723	2018-08-21 03:00:00+03	USD	67.1807
724	2018-08-21 03:00:00+03	EUR	76.7204
725	2018-08-20 03:00:00+03	GBP	85.0993
726	2018-08-21 03:00:00+03	GBP	85.5681
727	2018-08-19 03:00:00+03	USD	66.8757
1060	2018-12-14 03:00:00+03	GBP	83.9186
1063	2018-12-13 03:00:00+03	GBP	83.2141
1061	2018-12-13 03:00:00+03	EUR	75.2168
1064	2018-12-13 03:00:00+03	USD	66.4225
1062	2018-12-14 03:00:00+03	USD	66.2550
1059	2018-12-14 03:00:00+03	EUR	75.3916
1066	2018-12-18 03:00:00+03	USD	66.6208
1065	2018-12-18 03:00:00+03	EUR	75.3814
1067	2018-12-20 03:00:00+03	USD	67.1121
1068	2018-12-20 03:00:00+03	GBP	85.0243
1069	2018-12-22 03:00:00+03	EUR	77.9717
1070	2018-12-22 03:00:00+03	USD	68.0085
1071	2018-12-19 03:00:00+03	EUR	75.7761
1072	2018-12-22 03:00:00+03	GBP	86.3096
1073	2018-12-19 03:00:00+03	GBP	84.4930
1074	2018-12-26 03:00:00+03	EUR	78.4309
1075	2018-12-26 03:00:00+03	USD	68.7448
1076	2018-12-26 03:00:00+03	GBP	87.1890
1077	2018-12-09 03:00:00+03	EUR	76.0777
1078	2018-12-09 03:00:00+03	USD	66.9227
1079	2018-12-09 03:00:00+03	GBP	85.3465
1080	2018-12-19 03:00:00+03	USD	66.7454
1081	2018-12-12 03:00:00+03	USD	66.5022
1082	2018-12-12 03:00:00+03	EUR	75.6197
1083	2018-12-12 03:00:00+03	GBP	83.8194
1084	2018-12-18 03:00:00+03	GBP	83.9089
1085	2018-12-28 03:00:00+03	EUR	78.3880
1086	2018-12-28 03:00:00+03	USD	68.8762
1087	2018-12-28 03:00:00+03	GBP	87.1766
1088	2019-01-16 03:00:00+03	EUR	76.9498
1089	2019-01-16 03:00:00+03	GBP	86.3412
1090	2019-01-16 03:00:00+03	USD	67.0820
1091	2018-12-20 03:00:00+03	EUR	76.4742
1092	2018-12-25 03:00:00+03	EUR	77.8886
1093	2018-12-25 03:00:00+03	USD	68.4073
1094	2019-01-17 03:00:00+03	USD	66.7617
1095	2018-12-16 03:00:00+03	USD	66.4337
1096	2018-12-16 03:00:00+03	GBP	83.7131
1097	2018-12-25 03:00:00+03	GBP	86.6584
1098	2019-01-17 03:00:00+03	EUR	76.1350
1099	2019-01-17 03:00:00+03	GBP	86.0225
1100	2018-12-16 03:00:00+03	EUR	75.3890
1101	2018-12-30 03:00:00+03	EUR	79.4605
1102	2018-12-30 03:00:00+03	USD	69.4706
1103	2018-12-30 03:00:00+03	GBP	88.2832
1104	2018-12-15 03:00:00+03	EUR	75.3890
1105	2018-12-15 03:00:00+03	USD	66.4337
1106	2018-12-15 03:00:00+03	GBP	83.7131
1107	2018-12-27 03:00:00+03	EUR	78.5237
1108	2018-12-27 03:00:00+03	USD	68.8865
1109	2018-12-27 03:00:00+03	GBP	87.4721
1113	2018-12-10 03:00:00+03	EUR	76.0777
1114	2018-12-10 03:00:00+03	USD	66.9227
1115	2018-12-10 03:00:00+03	GBP	85.3465
1119	2018-12-29 03:00:00+03	EUR	79.6581
1120	2018-12-29 03:00:00+03	USD	69.5218
1121	2018-12-29 03:00:00+03	GBP	87.9659
1122	2018-12-21 03:00:00+03	EUR	76.9377
1123	2018-12-21 03:00:00+03	USD	67.3710
1124	2018-12-21 03:00:00+03	GBP	85.2917
1128	2019-01-10 03:00:00+03	EUR	76.9066
1129	2019-01-10 03:00:00+03	USD	67.0795
1130	2019-01-10 03:00:00+03	GBP	85.5599
1134	2018-12-17 03:00:00+03	EUR	75.3890
1135	2018-12-17 03:00:00+03	GBP	83.7131
1136	2019-01-12 03:00:00+03	USD	66.9167
1137	2018-12-11 03:00:00+03	EUR	75.7075
1138	2019-01-15 03:00:00+03	USD	67.1920
1139	2018-12-23 03:00:00+03	EUR	77.9717
1140	2018-12-23 03:00:00+03	USD	68.0085
1141	2019-01-15 03:00:00+03	GBP	86.2208
1142	2018-12-23 03:00:00+03	GBP	86.3096
1144	2018-12-11 03:00:00+03	USD	66.2416
1147	2018-12-11 03:00:00+03	GBP	84.2924
1151	2018-12-24 03:00:00+03	USD	68.0085
1154	2018-12-17 03:00:00+03	USD	66.4337
1155	2019-01-01 03:00:00+03	EUR	79.4605
1156	2019-01-01 03:00:00+03	USD	69.4706
1157	2019-01-01 03:00:00+03	GBP	88.2832
1158	2019-01-13 03:00:00+03	EUR	77.1282
1159	2019-01-13 03:00:00+03	USD	66.9167
1160	2019-01-15 03:00:00+03	EUR	77.0692
1162	2019-01-12 03:00:00+03	EUR	77.1282
1163	2019-01-13 03:00:00+03	GBP	85.2117
1164	2018-12-24 03:00:00+03	EUR	77.9717
1165	2018-12-24 03:00:00+03	GBP	86.3096
1167	2019-01-12 03:00:00+03	GBP	85.2117
1169	2019-01-11 03:00:00+03	GBP	85.2873
1170	2018-12-31 03:00:00+03	EUR	79.4605
1171	2018-12-31 03:00:00+03	USD	69.4706
1172	2018-12-31 03:00:00+03	GBP	88.2832
1178	2019-01-14 03:00:00+03	EUR	77.1282
1179	2019-01-14 03:00:00+03	USD	66.9167
1180	2019-01-14 03:00:00+03	GBP	85.2117
1181	2019-01-11 03:00:00+03	USD	66.8605
1204	2019-01-11 03:00:00+03	EUR	77.2105
1208	2019-01-02 03:00:00+03	GBP	88.2832
1212	2019-01-02 03:00:00+03	USD	69.4706
1213	2019-01-04 03:00:00+03	USD	69.4706
1214	2019-01-04 03:00:00+03	GBP	88.2832
1216	2019-01-05 03:00:00+03	EUR	79.4605
1217	2019-01-05 03:00:00+03	GBP	88.2832
1218	2019-01-03 03:00:00+03	EUR	79.4605
1219	2019-01-03 03:00:00+03	USD	69.4706
1220	2019-01-03 03:00:00+03	GBP	88.2832
1221	2019-01-07 03:00:00+03	EUR	79.4605
1222	2019-01-07 03:00:00+03	USD	69.4706
1223	2019-01-07 03:00:00+03	GBP	88.2832
1231	2019-01-04 03:00:00+03	EUR	79.4605
1233	2019-01-05 03:00:00+03	USD	69.4706
1237	2019-01-08 03:00:00+03	EUR	79.4605
1241	2019-01-08 03:00:00+03	GBP	88.2832
1244	2019-01-02 03:00:00+03	EUR	79.4605
1249	2019-01-08 03:00:00+03	USD	69.4706
1277	2019-01-06 03:00:00+03	USD	69.4706
1278	2019-01-06 03:00:00+03	EUR	79.4605
1280	2019-01-06 03:00:00+03	GBP	88.2832
1283	2019-01-09 03:00:00+03	USD	69.4706
1284	2019-01-09 03:00:00+03	EUR	79.4605
1288	2019-01-09 03:00:00+03	GBP	88.2832
1302	2019-01-18 03:00:00+03	GBP	85.3603
1305	2019-01-19 03:00:00+03	USD	66.3309
1306	2019-01-19 03:00:00+03	GBP	85.9118
1300	2019-01-18 03:00:00+03	EUR	75.6330
1307	2019-01-19 03:00:00+03	EUR	75.5841
1299	2019-01-18 03:00:00+03	USD	66.4438
\.


--
-- Name: currate_cr_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('currate_cr_pk_seq', 1310, true);


--
-- Data for Name: porderd; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY porderd (pd_pk, pd_po, pd_ar, pd_qty, pd_price) FROM stdin;
1	1	2	3	145
2	1	53	3	124
3	6	60	4	23
5	4	90	1	213
6	4	97	12	213
7	4	5	12	423
8	7	33	12	12000
9	1	35	1	456
11	1	95	12	345
12	7	2	1	15000
13	7	3	2	14000
14	8	31	2	50
15	8	65	1	100
16	12	57	3	10000
17	7	17	2	14000
18	1	46	3	90
20	7	8	5	15000
10	6	82	2	60
22	7	82	3	12000
23	1	82	2	500
32	7	61	3	35
35	7	102	2	12
38	7	1	11	124
39	17	2	2	3000
40	17	3	2	7000
\.


--
-- Name: porderd_pd_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('porderd_pd_pk_seq', 40, true);


--
-- Data for Name: porderh; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY porderh (po_pk, po_date, po_vendor, po_cur, po_inco, po_due, po_plandate) FROM stdin;
4	2018-06-12 20:47:00+03	ВелоСтрана.ру	GBP	DDP	2018-06-16	2018-06-30
6	2018-06-12 20:52:00+03	Юлмарт	USD	EXW	2018-06-26	2018-06-24
8	2018-06-12 22:10:00+03	Техностор.ру	USD	CIP	2018-06-15	2018-06-22
12	2018-06-12 22:15:00+03	Sportiv.ru	RUR	DAP	2018-06-14	2018-06-16
7	2018-06-12 20:59:00+03	ВЕЛОСАЙТ.РУ	RUR	DAP	2018-06-29	2018-07-05
1	2018-06-12 19:41:00+03	OZON.ru	EUR	DAP	2018-06-19	2018-06-11
17	2019-01-19 08:57:00+03	Amazon	USD	DAP	2019-01-18	2019-01-18
\.


--
-- Name: porderh_po_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('porderh_po_pk_seq', 17, true);


--
-- Data for Name: t_accessreport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_accessreport (grp, account, fullname, email, type) FROM stdin;
Списки значений	Administrators	Administrators	Группа пользователей	4
Administrators	Admin	Admin	Admin	0
poorders	Administrators	Administrators	Группа пользователей	4
Managers	Admin	Admin	Admin	0
currate	Administrators	Administrators	Группа пользователей	4
welcome	Administrators	Administrators	Группа пользователей	4
updatecur	Administrators	Administrators	Группа пользователей	4
articles	Administrators	Administrators	Группа пользователей	4
Administrators	User	USER	USER	0
Manager	Guest	Guest	\N	0
articles	Manager	Manager	Группа пользователей	4
v_porderh	Manager	Manager	Группа пользователей	4
currate	Manager	Manager	Группа пользователей	4
updatecur	Manager	Manager	Группа пользователей	4
UTG-DME	Administrators	Administrators	Группа пользователей	4
UTG-основной	Administrators	Administrators	Группа пользователей	4
АТИ	Administrators	Administrators	Группа пользователей	4
Картинки	Administrators	Administrators	Группа пользователей	4
Колонки таблиц	Administrators	Administrators	Группа пользователей	4
Обновления	Administrators	Administrators	Группа пользователей	4
Оргтехника	Administrators	Administrators	Группа пользователей	4
Перечисления	Administrators	Administrators	Группа пользователей	4
Права доступа	Administrators	Administrators	Группа пользователей	4
Пункты меню	Administrators	Administrators	Группа пользователей	4
Списки	Administrators	Administrators	Группа пользователей	4
Хозтовары	Administrators	Administrators	Группа пользователей	4
Ютэйр - расходный	Administrators	Administrators	Группа пользователей	4
Ютэйр-ВАРЗ	Administrators	Administrators	Группа пользователей	4
welcome	Manager	Manager	Группа пользователей	4
v_porderh	Administrators	Administrators	Группа пользователей	4
Manager	User	USER	USER	0
Пользователи	Administrators	Administrators	Группа пользователей	4
Группы пользователей	Administrators	Administrators	Группа пользователей	4
\.


--
-- Data for Name: t_mnmainmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_mnmainmenu (idmenu, ordmenu, caption, link, app, link1, mnemo, params, web, silver) FROM stdin;
148	300	Артикулы	\N	ALL	Bureau.Finder	articles	130	\N	\N
20	1010	Настройки/Права доступа	1	ALL	Bureau.Access	Права доступа	\N	\N	\N
64	1015	Настройки/Резервное копирование	\N	ALL	Bureau.BackBase	Резервное копирование	\N	\N	\N
149	310	Заказы	\N	ALL	porders	v_porderh	133	\N	\N
73	1036	Настройки/Setup	\N	ALL	Bureau.Setup	Setup	\N	\N	\N
32	1005	Настройки/Роли	1	ALL	Bureau.Finder	Группы пользователей	121	\N	\N
74	1037	Настройки/LookUp	1	ALL	Bureau.Finder	Списки	127	\N	\N
30	1030	Настройки/Таблицы	1	ALL	Bureau.Finder	Колонки таблиц	75	\N	\N
29	999	Настройки/Папки	1	ALL	Bureau.Finder	Пункты меню	10	\N	\N
71	1040	Настройки/Images	1	ALL	Bureau.Finder	Картинки	126	\N	\N
72	998	Настройки/Списки значений	1	ALL	Bureau.Finder	Списки значений	124	\N	\N
19	1000	Настройки/Пользователи	1	ALL	Bureau.Finder	Пользователи	120	\N	\N
147	401	Скачать курсы валют ЦБ	\N	ALL	/pg/updatecur	updatecur	\N	\N	\N
145	400	Курсы валют	\N	ALL	Bureau.Finder	currate	128	\N	\N
146	500	SQL Admin	\N	ALL	/sqladmin.html	welcome	\N	\N	\N
\.


--
-- Name: t_mnmainmenu_idmenu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_mnmainmenu_idmenu_seq', 149, true);


--
-- Data for Name: t_ntusers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_ntusers (username, fullname, description, orgs, pass, email, icq, skype) FROM stdin;
User	User	USER	USER	123	USER	\N	\N
Guest	Guest	\N	\N	Guest	\N	\N	\N
Admin	Admin	\N	\N	aA12345678	\N	\N	\N
testuser	testname	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: t_rpdeclare; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_rpdeclare (iddeclare, decname, descr, dectype, decsql, keyfield, dispfield, keyvalue, dispvalue, keyparamname, dispparamname, isbasename, descript, addkeys, tablename, editproc, delproc, image_bmp, savefieldlist) FROM stdin;
126	t_sysMenuImage	Images	7	select * from t_sysMenuImage order by idimage	idimage	Caption	\N	\N	\N	\N	0	\N	\N	t_sysMenuImage	p_t_sysMenuImage_EDIT	p_t_sysMenuImage_DEL	\N	idimage,caption,image_bmp,mnemo
118	t_AccessReport	Пользователи в группе	7	select * from t_AccessReport WHERE GRP = '[ObjectName]'	account	account	\N	\N	\N	\N	0	\N	GRP	\N	\N	\N	\N	\N
128	currate	Курсы валют	7	 select * from v_currate	cr_pk	cr_pk	\N	\N	\N	\N	\N	\N	\N	\N	p_currate_edit	p_currate_del	\N	cr_pk,cr_date,cr_cur,cr_rate
135	v_porderd	Позиции заказа	7	select * from v_porderd where pd_po = [pd_po]	pd_pk	pd_pk	\N	\N	\N	\N	\N	\N	\N	\N	p_porderd_edit	p_porderd_del	\N	pd_pk,pd_po,pd_ar,pd_qty,pd_price
129	curs	Валюты	7	select statusname cur from t_sysstatus where statustype = 'cur' and  statusname <> 'RUR' order by sortorder	cur	cur	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
131	manaf	Производители	7	select statusname manaf from t_sysstatus where statustype = 'manaf' order by sortorder	manaf	manaf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
136	curs	Валюты	7	select statusname cur from t_sysstatus where statustype = 'cur' order by sortorder	cur	cur	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
121	t_UserGroup	Роли	7	select * from t_UserGroup	GroupName	GroupName	\N	\N	\N	\N	0	\N	\N	t_UserGroup	p_t_UserGroup_EDIT	p_t_UserGroup_DEL	\N	\N
132	incoterm2010	Инкотермс 2010	7	select statusname code, comment from t_sysstatus where statustype = 'incoterms2010' order by sortorder	code	code	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
119	FreeAccount	Свободные логины	7	SELECT * FROM fn_FReeAccount ('[GRP]')	Account	Account					0							\N
75	t_rpDeclare	Таблицы	7	SELECT * FROM t_rpDeclare (NOLOCK) order by IdDeclare	IdDeclare	DecName	\N	Bureau.FindDeclare	\N	\N	0	\N	\N	\N	p_rpDeclare_edit	p_rpDeclare_del	\N	IdDeclare,DecName,Descr,DecType,DecSQL,KeyField,DispField,KeyValue,DispValue,KeyParamName,DispParamName,IsBaseName,Descript,AddKeys,TableName,EditProc,DelProc,image_bmp,SaveFieldList
127	t_sysFieldMap	LookUp	7	select * from t_sysFieldMap \r\norder by IdMap	idMap	idMap	\N	\N	\N	\N	0	\N	\N	t_sysFieldMap	p_t_sysFieldMap_EDIT	p_t_sysFieldMap_DEL	\N	idMap,DecName,dstField,srcField,idDeclare,ClassName,GroupDec,KeyField
10	t_mnMainMenu	Папки	7	select * from t_mnMainMenu order by ordmenu	idmenu	idmenu	\N	\N	\N	\N	0	\N	\N	t_mnMainMenu	p_t_mnMainMenu_edit	p_t_mnMainMenu_del	\N	idmenu,ordmenu,caption,link,link1,params,mnemo,app,web,silver
117	ObjectAccess	Отчёты и группы	7	select * from v_Object 	ObjectName	ObjectName	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N
124	t_sysStatusType	Списки значений	7	select * from t_sysStatus order by idstatus	idStatus	idStatus	\N	\N	\N	\N	\N	\N	\N	t_sysStatus	p_t_sysStatus_EDIT	p_t_sysStatus_DEL	\N	idstatus,statustype,statusname,color,sortorder,comment,image_bmp
120	sysUsers	Пользователи	7	SELECT * FROM t_NTUsers	UserName	UserName	\N	\N	\N	\N	\N	\N	\N	t_NTUsers	p_NTUsers_Edit	p_NTUsers_Del	\N	UserName,FullName,Description,ORGS,Pass,Email,Icq,Skype
134	vendor	Поставщики	7	select statusname vendor from t_sysstatus where statustype = 'vendor' order by sortorder	vendor	vendor	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
130	articles	Артикулы	7	select * from v_articles order by ar_pk	ar_pk	ar_name	\N	\N	\N	\N	\N	\N	\N	\N	p_articles_edit	p_articles_del	\N	ar_pk,ar_name,ar_desc,ar_image,ar_manaf
133	v_porderh	Заказы на закупку (new)	7	select * from v_porderh	po_pk	po_pk	\N	\N	\N	\N	\N	\N	\N	\N	p_porderh_edit	p_porderh_del	\N	po_pk,po_date,po_vendor,po_cur,po_inco,po_due,po_plandate
\.


--
-- Data for Name: t_rpdeclareedit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_rpdeclareedit (de_pk, de_de, dlevel, dord, decname, caption, keyfield, srckeyfield, dispfield, srcdispfield, iddeclare, classname, color) FROM stdin;
\.


--
-- Data for Name: t_sysfieldmap; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_sysfieldmap (idmap, decname, dstfield, srcfield, iddeclare, classname, groupdec, keyfield) FROM stdin;
1	t_sysFieldMap	DecName	DecName	75	Bureau.Finder	t_rpDeclare0	\N
3	t_sysFieldMap	GroupDec	DecName	\N	\N	t_rpDeclare	\N
124	currate	cr_cur	cur	129	Bureau.GridCombo	curs	1
125	articles	ar_manaf	manaf	131	Bureau.GridCombo	manaf	1
129	v_porderd	ar_name	ar_name	130	Bureau.Finder	articles	\N
127	v_porderh	po_cur	cur	136	Bureau.GridCombo	curs	1
2	t_sysFieldMap	IdDeclare	IdDeclare	75	Bureau.Finder	t_rpDeclare	1
126	v_porderh	po_vendor	vendor	134	Bureau.GridCombo	vendor	1
128	v_porderh	po_inco	code	132	Bureau.Finder	incoterm2010	1
130	v_porderd	pd_ar	ar_pk	\N	\N	articles	1
4	t_mnMainMenu	Params	IdDeclare	75	Bureau.Finder	t_rpDeclare	1
\.


--
-- Name: t_sysfieldmap_idmap_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_sysfieldmap_idmap_seq', 130, true);


--
-- Data for Name: t_sysmenuimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_sysmenuimage (idimage, caption, image_bmp, mnemo) FROM stdin;
1	Настройки	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgQINzFYsINoAAAA5klEQVQoz33RvS6EQRTG8R+7JDQbso1QbIQgcQPiEhQa2cSWotVvI25BReUWXIAVm1WJUuKj04pEIySKd41iJvPum+CcZuZ/nvOVQ2lNH4LgwR+2KQiCb9MlHEfLvoa6ncTG7GLOgWYEF4JPzyk/+pNCcApblUDVC+s1JxZzw3tHBpbNjAxgyV3S3yRcy+36cYrZ9O3kSl1B8K4eixQJf2VBfAXDmN9LFa6y4DGRSwucj0zd17bndoQM2P5nzaANPcHQSyXwqhBcx44rDrVMOs7hM1Pmda1Wj7WWBRu/X3PCW9q/UcIf5zp/QCMkdr4AAAAldEVYdGRhdGU6Y3JlYXRlADIwMTgtMDYtMDRUMDg6NTU6NDkrMDI6MDD8cQmSAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDE4LTA2LTA0VDA4OjU1OjQ5KzAyOjAwjSyxLgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAAASUVORK5CYII=	\N
2	Настройки/Права доступа	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgQJAC8zenQIAAAAt0lEQVQoz4XRMWoCQRQG4E8JFla73WI8hrCVN/ACARtv4CH2DpYJCNEuN7AwwTqNRxDtQpotojgpZKPuuuaf5vHex8zA45yuuZ2dua4biW3tzczsbcVVkAlSkAqyKph4/as/LNzNi8+ibIC+kfYFSEXePHs/gZaNo6/Kp5se/UAiGFeeGQsSmv7JNYhMTUWXrYcr8GSIlUkdWPrGsv6GtQ7yelAaFiB3MJCUJj2HM8/kQunkp4X9Avv+Moj+/ihSAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA2LTA0VDA5OjAwOjQ3KzAyOjAw5qbMTAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNi0wNFQwOTowMDo0NyswMjowMJf7dPAAAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC	Права доступа
5	Настройки/Роли	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgQIOjnjxXUXAAAAtElEQVQoz63RMWrDYAyG4ceOXTIUF2oC3bx3zEFyiOYCHnuRgvFlMuYOPkGGQsBLTUjyd8hfJ3U75tPygqRPEuJ+SmQjZ5JpeqWzU4PaTmf1u7sTBINSaRAE3cXlYjtTgNwjclCYOV49aoOTFrROhjjuRqVq5Er5g+m4xcJzNKewuN6RWtvoBcGXrXdzS3u9jbWURpjEFh+RGw5/CoJXb5EO6Tj3Vg/OkfLEyz8Fn3JP9/rhNxQaPGccePglAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA2LTA0VDA4OjU4OjU3KzAyOjAwlRr54QAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNi0wNFQwODo1ODo1NyswMjowMORHQV0AAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC	Роли
3	Настройки/Папки	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiAxcGDDSUusLUAAAAK0lEQVQoz2NgoBQwMkQQUvCfkIICil1B0JEP8CtgorULiPAmEQFFIKgpBwDsMwR4X40E6wAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxOC0wMy0yM1QwNjoxMjo1MiswMTowMJ/Fc1sAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMTgtMDMtMjNUMDY6MTI6NTIrMDE6MDDumMvnAAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAAABJRU5ErkJggg==	Папки
4	Настройки/Таблицы	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiAxcKDAHLE/+TAAAAw0lEQVQoz3XQO0oDURSA4Y9oZaEkGBhMIYkExETEwlJwA3aTp6TPwmxSuotUKbKNBGYKi4Aj18JMHmTm7w7fucU9Z/6b+nXv1VLeSOTCRz42baRq9l1ay3Qr2/Hat6B6sHClIhXlC7faOh4OFh49aak7KbYyc66knoWGL7Ni7ktEaFgV8UAm+BRZiMs4CBK9Ux7uONMH7+7UTPKr7XmwfXIjkXqDcQFTtbbxfMzDo3u8aJoy3/Go+O+xH0FmrLTYvJz/AAQKQ9ix3SkaAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTAzLTIzVDEwOjEyOjAxKzAxOjAw2ydZCQAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wMy0yM1QxMDoxMjowMSswMTowMKp64bUAAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC	Таблицы
9	Настройки/Пользователи	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgQIOCpVTVZLAAAAl0lEQVQoz4WRMQ6DMAxFXyqQOEWnrqgLS07AyqU4Bxdg5A5lQuqOMnAJJEByN+I0aXEW5/vb/1uGBof8eI6GP2VBcAZBxww8AkSxN2oMhppNoSrtz6beozc1a0xkgcR0YlNaQuioqOg09r1FFFnw23kDT/LYw0qLpQCgwNKyag8HZTS75PCEISk/eJMLrwTBcofLY3F17g/S2YutPwNiWwAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxOC0wNi0wNFQwODo1Njo0MiswMjowMBVB5msAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMTgtMDYtMDRUMDg6NTY6NDIrMDI6MDBkHF7XAAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAAABJRU5ErkJggg==	Пользователи
7	Настройки/Images	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgQIOhZIFEhOAAAAsElEQVQoz53RMWoCcRDF4Y91IYhFGouFHEZD7mGTOpUR7FPEzsIDeBCLHCGlRxBJEQIrZmGXSbFCEv2bgO81A+838Jih1bNPceLSuI2v1Yk4hDJT6OnqSKuX2XjwhzL/6EIgrNPAmwrM3Np+01OFEGoDI2Elw51GiJ/ABIz1D6tPv4EXxZFvvIocVMLQJlG3aku+W4pE3Jjnh/Heo6sTYO8jtzM4c6OFXdu6PPPJAr4AzwRRLRel77AAAAAldEVYdGRhdGU6Y3JlYXRlADIwMTgtMDYtMDRUMDg6NTg6MjIrMDI6MDDN599fAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDE4LTA2LTA0VDA4OjU4OjIyKzAyOjAwvLpn4wAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAAASUVORK5CYII=	Images
28	Курсы валют	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgoGLgh29PhBAAAA0klEQVQoz3XRIUtDcRQF8J9ORJxoEBTTMM5hNA70A4jVbhHB5pofwbhp1GaxW+wWwWoUHRg2hA0UBbdr8CHv/9g77dxzuPccLnlsC+EwP5pWzgqY19ITQt+BqaJccS90XbrwIrSLhqYwsAwWfRiY+xNmMsMC3g3B0K4VVV/5DUt6wp09lbKQWx6E8OrUapmp6caP8O2ovG7NmbGRjXTcsG/zn90Kx2mLumtPGsZZUUbphlmPQteVc89C31rxdtWJNyF86lifHHBHiLRB+r+ALEeGX1hKPA8YxdA8AAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA2LTEwVDA2OjQ2OjA4KzAyOjAwXYTjawAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNi0xMFQwNjo0NjowOCswMjowMCzZW9cAAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC	Курсы валют
29	Артикулы	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgwOMQJwAxGlAAAA40lEQVQoz53PLUtDcRgF8J8zKQNxLFkE0y1GmUkR70BkYcnsqskvsDAsurCmVRiWtTGGIGrVybBfXLC4ML+Cwt9y1eF8AU87L89zOPwDuy4s/xZ4EjTeyfQXc8uSvll1z9/d1gXBwU+vDwXBgxdnFibtOa+Ce/PWPQqOJyM3giMwY83Gp1HQ0tOw6FKwj5yGnpYCGbGORFXelR23VmXdyatKdMRT+k6dgGvnVtC3bRPsqWRE2mlVVwQi3VRpizIS5ZSWJIaGEqVUKUuIjdQUNQ1kQdZAU1HNSDy+Ivexa2zFn3gDQ7RAkTbpVMMAAAAldEVYdGRhdGU6Y3JlYXRlADIwMTgtMDYtMTJUMTQ6NDk6MDIrMDI6MDByDJb2AAAAJXRFWHRkYXRlOm1vZGlmeQAyMDE4LTA2LTEyVDE0OjQ5OjAyKzAyOjAwA1EuSgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAAASUVORK5CYII=	Артикулы
30	Заказы	iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAADdcAAA3XAUIom3gAAAAHdElNRQfiBgwRNxNbk3KcAAAAsUlEQVQoz32QIQ7CQBBF31ISEoKhaBJOwBUqKhoSDBaF5B6gCALJBVBYMFgkJ4CmCalAYgiCmkEsZTd0l1kx+/Pf7OQvCMKZGp5SrOmRsCRz+heAFnfEc24BUNAk8myY69bh6Zy/0ijJlRMYm6e6FBX7hLK3bStApGPqCklR5F/8wYyDPb9AGLli1D+9jzAg+XE3HMtrTOZIMbXpkIA/esKLnLZXs0MQhl5NTMrefKzRbxD9YTJunfa+AAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA2LTEyVDE3OjU1OjE5KzAyOjAw2tmREgAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNi0xMlQxNzo1NToxOSswMjowMKuEKa4AAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC	Заказы
\.


--
-- Name: t_sysmenuimage_idimage_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_sysmenuimage_idimage_seq', 34, true);


--
-- Data for Name: t_sysparams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_sysparams (paramname, paramvalue, paramdescription, dateparam) FROM stdin;
GridFindt_AccessReport	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="account" FieldCaption = "Логин" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="fullname" FieldCaption = "Имя" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="email" FieldCaption = "Комментарий" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="grp" FieldCaption = "GRP" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="type" FieldCaption = "Type" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_AccessReport	2018-06-04 07:51:25
GridFindt_rpDeclare	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="iddeclare" FieldCaption = "id" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="decname" FieldCaption = "Название" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="descr" FieldCaption = "Описание" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="dectype" FieldCaption = "DecType" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="keyfield" FieldCaption = "Ключевое поле" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="dispfield" FieldCaption = "Отображаемое поле" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="keyvalue" FieldCaption = "KeyValue" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="dispvalue" FieldCaption = "DispValue" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="keyparamname" FieldCaption = "KeyParamName" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="dispparamname" FieldCaption = "DispParamName" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="isbasename" FieldCaption = "IsBaseName" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="addkeys" FieldCaption = "AddKeys" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="decsql" FieldCaption = "DecSQL" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="descript" FieldCaption = "Descript" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="tablename" FieldCaption = "TableName" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="editproc" FieldCaption = "EditProc" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="delproc" FieldCaption = "DelProc" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="image_bmp" FieldCaption = "Картинка" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="savefieldlist" FieldCaption = "SaveFieldList" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_rpDeclare	2018-06-04 08:23:45
GridFindObjectAccess	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="objectname" FieldCaption = "Название" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="objecttype" FieldCaption = "Тип" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="caption" FieldCaption = "Описание" DisplayFormat = "" Width = "250" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="objcod" FieldCaption = "ObjCod" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="idtmpnum" FieldCaption = "IDTMPNUM" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindObjectAccess	2018-06-04 08:24:09
GridFindFreeAccount	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="account" FieldCaption = "Логин" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="fullname" FieldCaption = "Имя" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="email" FieldCaption = "Комментарий" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="type" FieldCaption = "TYPE" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="idtmpnum" FieldCaption = "IDTMPNUM" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindFreeAccount	2018-06-04 08:24:39
GridFindsysUsers	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="username" FieldCaption = "Логин" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="fullname" FieldCaption = "Имя" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="description" FieldCaption = "Описание" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="orgs" FieldCaption = "Компания" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="email" FieldCaption = "Email" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="icq" FieldCaption = "Icq" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="skype" FieldCaption = "Skype" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="pass" FieldCaption = "Пароль" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindsysUsers	2018-06-04 08:25:20
sysdump	SELECT * FROM t_accessreport/*[t_accessreport]*/;\r\nSELECT * FROM t_mnmainmenu/*[t_mnmainmenu]*/;\r\nSELECT * FROM t_ntusers/*[t_ntusers]*/;\r\nSELECT * FROM t_rpdeclare/*[t_rpdeclare]*/;\r\nSELECT * FROM t_sysfieldmap/*[t_sysfieldmap]*/;\r\nSELECT * FROM t_sysmenuimage/*[t_sysmenuimage]*/;\r\nSELECT * FROM t_sysparams/*[t_sysparams]*/;\r\nSELECT * FROM t_sysstatus/*[t_sysstatus]*/;\r\nSELECT * FROM t_usergroup/*[t_usergroup]*/;\r\nSELECT * FROM t_sysstatustype/*[t_sysstatustype]*/;	sysdump	2018-06-15 06:08:18
GridFindt_sysMenuImage	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="idimage" FieldCaption = "№" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="caption" FieldCaption = "Путь" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="mnemo" FieldCaption = "Название" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="image_bmp" FieldCaption = "Картинка" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_sysMenuImage	2018-06-04 08:27:13
GridFindt_UserGroup	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="groupname" FieldCaption = "Название" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="type" FieldCaption = "Тип" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="caption" FieldCaption = "Комментарий" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_UserGroup	2018-06-04 08:29:25
GridFindcurrate	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="cr_pk" FieldCaption = "№" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="cr_date" FieldCaption = "Дата" DisplayFormat = "dd.MM.yyyy" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="cr_cur" FieldCaption = "Валюта" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="sim" FieldCaption = " " DisplayFormat = "" Width = "20" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="cr_rate" FieldCaption = "Курс" DisplayFormat = "#0.0000" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindcurrate	2018-06-10 04:39:25
GridFindarticles	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="ar_pk" FieldCaption = "NN" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ar_name" FieldCaption = "Название" DisplayFormat = "" Width = "250" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ar_desc" FieldCaption = "Описание" DisplayFormat = "" Width = "250" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ar_image" FieldCaption = "Фото" DisplayFormat = "" Width = "150" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ar_manaf" FieldCaption = "Производитель" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindarticles	2018-06-12 12:23:54
GridFindmanaf	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="manaf" FieldCaption = "manaf" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindmanaf	2018-06-12 12:27:39
GridFindt_sysFieldMap	<GRID FROZENCOLS="" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="idmap" FieldCaption = "id" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="decname" FieldCaption = "DecName" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="dstfield" FieldCaption = "dstField" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="srcfield" FieldCaption = "srcField" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="iddeclare" FieldCaption = "idDeclare" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="classname" FieldCaption = "ClassName" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="groupdec" FieldCaption = "GroupDec" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="keyfield" FieldCaption = "KeyField" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_sysFieldMap	2018-06-04 08:27:44
GridFindt_mnMainMenu	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = ""><COLUMN FieldName="idmenu" FieldCaption = "id" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ordmenu" FieldCaption = "NN" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="caption" FieldCaption = "Путь" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="link" FieldCaption = "На главной форме" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="app" FieldCaption = "Приложение" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="link1" FieldCaption = "Страница" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="mnemo" FieldCaption = "Объект" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="params" FieldCaption = "Параметры" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="web" FieldCaption = "Web" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="silver" FieldCaption = "silver" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_mnMainMenu	2018-06-04 08:40:14
GridFindincoterm2010	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="code" FieldCaption = "Код" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="comment" FieldCaption = "Название" DisplayFormat = "" Width = "300" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindincoterm2010	2018-06-12 13:10:54
GridFindvendor	<GRID FROZENCOLS="0" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="vendor" FieldCaption = "vendor" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindvendor	2018-06-12 13:29:50
GridFindt_sysStatusType	<GRID FROZENCOLS="" SumFields = "" LabelField = "" LabelText = "Итого:"><COLUMN FieldName="idstatus" FieldCaption = "id" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="statustype" FieldCaption = "Группа" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="statusname" FieldCaption = "Название" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="color" FieldCaption = "Цвет" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="sortorder" FieldCaption = "NN" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="comment" FieldCaption = "Коментарий" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="image_bmp" FieldCaption = "Картинка" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindt_sysStatusType	2018-06-04 08:26:43
GridFindv_porderd	<GRID FROZENCOLS="0" SumFields = "total" LabelField = "ar_name" LabelText = "Итого:"><COLUMN FieldName="pd_pk" FieldCaption = "NN" DisplayFormat = "" Width = "50" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="pd_po" FieldCaption = "pd_po" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="pd_ar" FieldCaption = "pd_ar" DisplayFormat = "" Width = "100" Visible = "0" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="ar_name" FieldCaption = "Наименование" DisplayFormat = "" Width = "250" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="pd_qty" FieldCaption = "Кол-во" DisplayFormat = "#" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="pd_price" FieldCaption = "Цена" DisplayFormat = "#" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="total" FieldCaption = "Итого" DisplayFormat = "#" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindv_porderd	2018-06-12 15:43:35
GridFindv_porderh	<GRID FROZENCOLS="0" SumFields = "totalrur" LabelField = "po_date" LabelText = "Итого:"><COLUMN FieldName="po_pk" FieldCaption = "NN" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_date" FieldCaption = "Дата" DisplayFormat = "dd.MM.yyyy HH:mm" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_vendor" FieldCaption = "Поставщик" DisplayFormat = "" Width = "150" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_cur" FieldCaption = "Валюта" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_inco" FieldCaption = "inco2010" DisplayFormat = "" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_due" FieldCaption = "Дата платежа" DisplayFormat = "dd.MM.yyyy" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="po_plandate" FieldCaption = "Дата поставки" DisplayFormat = "dd.MM.yyyy" Width = "100" Visible = "1" group = "" Sum = "0"  ColSort="1" /><COLUMN FieldName="total" FieldCaption = "Итого" DisplayFormat = "#" Width = "100" Visible = "0" group = "Итоги" Sum = "0"  ColSort="1" /><COLUMN FieldName="totalcur" FieldCaption = "Итого" DisplayFormat = "#" Width = "100" Visible = "1" group = "Итоги" Sum = "0"  ColSort="1" /><COLUMN FieldName="totalrur" FieldCaption = "Итого руб." DisplayFormat = "#,##0.00" Width = "100" Visible = "1" group = "Итоги" Sum = "0"  ColSort="1" /><COLUMN FieldName="color" FieldCaption = "color" DisplayFormat = "" Width = "100" Visible = "0" group = "Итоги" Sum = "0"  ColSort="1" /><COLUMN FieldName="prnlink" FieldCaption = "" DisplayFormat = "" Width = "50" Visible = "1" group = "Итоги" Sum = "0"  ColSort="1" /><SAFEDEF SAFEDEF="1"/></GRID>	GridFindv_porderh	2018-08-12 07:46:53.089814
\.


--
-- Data for Name: t_sysstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_sysstatus (idstatus, statustype, statusname, color, sortorder, comment, image_bmp) FROM stdin;
128	vendor	MegaPark.ru	\N	1	\N	\N
129	vendor	My-shop.ru	\N	2	\N	\N
130	vendor	OZON.ru	\N	3	\N	\N
131	vendor	Soundbreeze	\N	4	\N	\N
132	vendor	Sportiv.ru	\N	5	\N	\N
133	vendor	veloolimp.com	\N	6	\N	\N
134	vendor	ВЕЛОСАЙТ.РУ	\N	7	\N	\N
135	vendor	ВелоСтрана.ру	\N	8	\N	\N
136	vendor	КАНТ	\N	9	\N	\N
137	vendor	Техностор.ру	\N	10	\N	\N
138	vendor	УЛЬТРАСПОРТ	\N	11	\N	\N
139	vendor	Юлмарт	\N	12	\N	\N
140	vendor	Alibaba	\N	13	\N	\N
141	vendor	Amazon	\N	14	\N	\N
142	incoterms2010	EXW	\N	1	Ex Works / Франко завод	\N
143	incoterms2010	FCA	\N	2	Free Carrier / Франко перевозчик	\N
144	incoterms2010	CPT	\N	3	Carriage Paid to / Перевозка оплачена до	\N
145	incoterms2010	CIP	\N	4	Carriage and Insurance Paid to / Перевозка и страхование оплачены до	\N
146	incoterms2010	DAT	\N	5	Delivered at Terminal / Поставка на терминале	\N
147	incoterms2010	DAP	\N	6	Delivered at Place / Поставка в месте назначения	\N
148	incoterms2010	DDP	\N	7	Delivered Duty Paid / Поставка с оплатой пошлин	\N
117	manaf	CHALLENGER	-393392	2	\N	\N
118	manaf	FORWARD	-2621498	3	\N	\N
119	manaf	Giant	-4456478	4	\N	\N
120	manaf	Merida	-2760705	5	\N	\N
121	manaf	Novatrack	-725761	6	\N	\N
122	manaf	Royal Baby	-73729	7	\N	\N
123	manaf	STARK	-7445	8	\N	\N
124	manaf	STELS	-5647	9	\N	\N
127	manaf	TREK	-196654	12	\N	\N
125	manaf	Stinger	-3539030	10	\N	\N
126	manaf	Top Gear	-1901825	11	\N	\N
116	manaf	Author	-9036	1	\N	\N
112	cur	EUR	-2949155	1	&euro;	\N
113	cur	USD	-2357	2	&#36;	\N
114	cur	GBP	-3801149	3	&#163;	\N
115	cur	RUR	-11571	0	&#8381;	\N
\.


--
-- Name: t_sysstatus_idstatus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_sysstatus_idstatus_seq', 148, true);


--
-- Data for Name: t_sysstatustype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_sysstatustype (idstatustype, statustype, caption) FROM stdin;
\.


--
-- Name: t_sysstatustype_idstatustype_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_sysstatustype_idstatustype_seq', 2, true);


--
-- Data for Name: t_usergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_usergroup (groupname, type, caption) FROM stdin;
Administrators	0	Администарторы
Manager	0	Manager
\.


--
-- Name: t_accessreport pk_t_accessreport; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_accessreport
    ADD CONSTRAINT pk_t_accessreport PRIMARY KEY (grp, account);


--
-- Name: t_mnmainmenu pk_t_mnmainmenu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_mnmainmenu
    ADD CONSTRAINT pk_t_mnmainmenu PRIMARY KEY (idmenu);


--
-- Name: t_ntusers pk_t_ntusers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_ntusers
    ADD CONSTRAINT pk_t_ntusers PRIMARY KEY (username);


--
-- Name: t_sysstatus pk_t_rlstatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysstatus
    ADD CONSTRAINT pk_t_rlstatus PRIMARY KEY (idstatus);


--
-- Name: t_sysstatustype pk_t_rlstatustype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysstatustype
    ADD CONSTRAINT pk_t_rlstatustype PRIMARY KEY (idstatustype);


--
-- Name: t_rpdeclare pk_t_rpdeclare; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_rpdeclare
    ADD CONSTRAINT pk_t_rpdeclare PRIMARY KEY (iddeclare);


--
-- Name: t_rpdeclareedit pk_t_rpdeclareedit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_rpdeclareedit
    ADD CONSTRAINT pk_t_rpdeclareedit PRIMARY KEY (de_pk);


--
-- Name: t_sysfieldmap pk_t_sysfieldmap; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysfieldmap
    ADD CONSTRAINT pk_t_sysfieldmap PRIMARY KEY (idmap);


--
-- Name: t_sysmenuimage pk_t_sysmenuimage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysmenuimage
    ADD CONSTRAINT pk_t_sysmenuimage PRIMARY KEY (idimage);


--
-- Name: t_sysparams pk_t_sysparams; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_sysparams
    ADD CONSTRAINT pk_t_sysparams PRIMARY KEY (paramname);


--
-- Name: t_usergroup t_usergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_usergroup
    ADD CONSTRAINT t_usergroup_pkey PRIMARY KEY (groupname);


--
-- Name: ind_currate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ind_currate ON currate USING btree (cr_date, cr_cur);


--
-- Name: ind_pod; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_pod ON porderd USING btree (pd_po);


--
-- PostgreSQL database dump complete
--

