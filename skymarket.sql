PGDMP     -                    z         	   skymarket    14.5    14.5 _    d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            g           1262    210549 	   skymarket    DATABASE     f   CREATE DATABASE skymarket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE skymarket;
                postgres    false            ?            1259    217510    ads_ad    TABLE       CREATE TABLE public.ads_ad (
    id bigint NOT NULL,
    title character varying(50) NOT NULL,
    price integer NOT NULL,
    description text,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    author_id bigint NOT NULL
);
    DROP TABLE public.ads_ad;
       public         heap    postgres    false            ?            1259    217509    ads_ad_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ads_ad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ads_ad_id_seq;
       public          postgres    false    218            h           0    0    ads_ad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ads_ad_id_seq OWNED BY public.ads_ad.id;
          public          postgres    false    217            ?            1259    217519    ads_comment    TABLE     ?   CREATE TABLE public.ads_comment (
    id bigint NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    ad_id bigint NOT NULL,
    author_id bigint NOT NULL
);
    DROP TABLE public.ads_comment;
       public         heap    postgres    false            ?            1259    217518    ads_comment_id_seq    SEQUENCE     {   CREATE SEQUENCE public.ads_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ads_comment_id_seq;
       public          postgres    false    220            i           0    0    ads_comment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ads_comment_id_seq OWNED BY public.ads_comment.id;
          public          postgres    false    219            ?            1259    217553 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    217552    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    224            j           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    223            ?            1259    217562    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    217561    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    226            k           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    225            ?            1259    217546    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    217545    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    222            l           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    221            ?            1259    217488    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    217487    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    216            m           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    215            ?            1259    217479    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    217478    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    214            n           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    213            ?            1259    217458    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    217457    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            o           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            ?            1259    217594    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    217467 
   users_user    TABLE     ?  CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    phone character varying(12),
    email character varying(254) NOT NULL,
    role character varying(14) NOT NULL,
    image character varying(100),
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    postgres    false            ?            1259    217466    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    212            p           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    211            ?           2604    217513 	   ads_ad id    DEFAULT     f   ALTER TABLE ONLY public.ads_ad ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_id_seq'::regclass);
 8   ALTER TABLE public.ads_ad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    217522    ads_comment id    DEFAULT     p   ALTER TABLE ONLY public.ads_comment ALTER COLUMN id SET DEFAULT nextval('public.ads_comment_id_seq'::regclass);
 =   ALTER TABLE public.ads_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    217556    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    217565    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    217549    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    217491    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    217482    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    217461    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    217470    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            X          0    217510    ads_ad 
   TABLE DATA           ]   COPY public.ads_ad (id, title, price, description, image, created_at, author_id) FROM stdin;
    public          postgres    false    218   "y       Z          0    217519    ads_comment 
   TABLE DATA           M   COPY public.ads_comment (id, text, created_at, ad_id, author_id) FROM stdin;
    public          postgres    false    220   ?z       ^          0    217553 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    224   ?|       `          0    217562    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    226   }       \          0    217546    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    222   5}       V          0    217488    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    216   ?~       T          0    217479    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    214   ?~       P          0    217458    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   ]       a          0    217594    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   !?       R          0    217467 
   users_user 
   TABLE DATA           ?   COPY public.users_user (id, password, last_login, first_name, last_name, phone, email, role, image, is_active, is_staff) FROM stdin;
    public          postgres    false    212   >?       q           0    0    ads_ad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ads_ad_id_seq', 13, true);
          public          postgres    false    217            r           0    0    ads_comment_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ads_comment_id_seq', 13, true);
          public          postgres    false    219            s           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    223            t           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    225            u           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          postgres    false    221            v           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    215            w           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          postgres    false    213            x           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    209            y           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 7, true);
          public          postgres    false    211            ?           2606    217517    ads_ad ads_ad_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ads_ad
    ADD CONSTRAINT ads_ad_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ads_ad DROP CONSTRAINT ads_ad_pkey;
       public            postgres    false    218            ?           2606    217526    ads_comment ads_comment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ads_comment
    ADD CONSTRAINT ads_comment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ads_comment DROP CONSTRAINT ads_comment_pkey;
       public            postgres    false    220            ?           2606    217592    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    224            ?           2606    217578 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    226    226            ?           2606    217567 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    226            ?           2606    217558    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    224            ?           2606    217569 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    222    222            ?           2606    217551 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    222            ?           2606    217496 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    216            ?           2606    217486 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    214    214            ?           2606    217484 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    214            ?           2606    217465 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    217600 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            ?           2606    217476    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    212            ?           2606    217474    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    212            ?           1259    217532    ads_ad_author_id_57b8bdcb    INDEX     Q   CREATE INDEX ads_ad_author_id_57b8bdcb ON public.ads_ad USING btree (author_id);
 -   DROP INDEX public.ads_ad_author_id_57b8bdcb;
       public            postgres    false    218            ?           1259    217543    ads_comment_ad_id_9e718131    INDEX     S   CREATE INDEX ads_comment_ad_id_9e718131 ON public.ads_comment USING btree (ad_id);
 .   DROP INDEX public.ads_comment_ad_id_9e718131;
       public            postgres    false    220            ?           1259    217544    ads_comment_author_id_2a1d1dc4    INDEX     [   CREATE INDEX ads_comment_author_id_2a1d1dc4 ON public.ads_comment USING btree (author_id);
 2   DROP INDEX public.ads_comment_author_id_2a1d1dc4;
       public            postgres    false    220            ?           1259    217593    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    224            ?           1259    217589 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    226            ?           1259    217590 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    226            ?           1259    217575 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    222            ?           1259    217507 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    216            ?           1259    217508 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    216            ?           1259    217602 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            ?           1259    217601 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            ?           1259    217477    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    212            ?           2606    217527 1   ads_ad ads_ad_author_id_57b8bdcb_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad
    ADD CONSTRAINT ads_ad_author_id_57b8bdcb_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.ads_ad DROP CONSTRAINT ads_ad_author_id_57b8bdcb_fk_users_user_id;
       public          postgres    false    212    218    3224            ?           2606    217533 3   ads_comment ads_comment_ad_id_9e718131_fk_ads_ad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_comment
    ADD CONSTRAINT ads_comment_ad_id_9e718131_fk_ads_ad_id FOREIGN KEY (ad_id) REFERENCES public.ads_ad(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.ads_comment DROP CONSTRAINT ads_comment_ad_id_9e718131_fk_ads_ad_id;
       public          postgres    false    218    3235    220            ?           2606    217538 ;   ads_comment ads_comment_author_id_2a1d1dc4_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_comment
    ADD CONSTRAINT ads_comment_author_id_2a1d1dc4_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.ads_comment DROP CONSTRAINT ads_comment_author_id_2a1d1dc4_fk_users_user_id;
       public          postgres    false    220    212    3224            ?           2606    217584 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    226    222    3244            ?           2606    217579 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    224    3249    226            ?           2606    217570 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3228    214    222            ?           2606    217497 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    214    3228    216            ?           2606    217502 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    3224    212    216            X   z  x??S?N?P]?~?u?b?m?#ܰe?Ҙ膍?>4?Hԥ1>w.K???/???gZHܕ6Mn2???3?F?+崢???#?q?iM3?R?>M(W?ųW?????.^O?c܎i6<?????{??c?В?;Ҵr ????????>QXr???2M??!???!?0??%?hBsZ??jqO???? ?????I~K}?#?9נN??ơ??:???=?$*??i{???d(?K0.2iQYpģ?*??b?}ZKlZ??8%G??N?=S?e'r?p\-Ҕ%d?Gɖ?w^kaD?)?$?*?=??
eS??yΙL ?PB?l+z???ae???5????D??;ƨ??m?ѿ?????埕C?R?}?B????:??????c=?B      Z   ?  x????j?@??WO1?n??????E?0?)u n?(????ZV?Z?d?f?(??\?B@cv??ߜ93????0?F??нvZ??-u?????h???g??9L?GK?*??\??5??˵?&a>J?J????=?:???@???)???g.???<?o$~t?f7~|??Ivy?*9?|?8???8S??n? k|?a?`&?=A?????G%@?N?[?H ?`R	??!UbHl.????d?O???e?)??"??p??? !a?d????y?i???		t??V?????e?􁩛?lU3?u?3~???B&fP??a6\?.?~??PFE?B??vF?? ?l??Q??17?8t??WL(7?V?R?????Nk(??-¼o?
k?h~V&v͚?6E??W?І??\;???r?sݰK?v?K??vK:4c'VcJ???)??z?]?c??P?/???? ?!?p?h?1?sE?,T=#???٨?sq0???F????0y?ۭ?̂?????\?u;e?F?ijŶ?r?l?.7v!?C??\y<?p<G$???c8??"??'???^      ^      x?????? ? ?      `      x?????? ? ?      \   ?  x?}??j?0????)?ä~^?5?Qlp????ow??*? d?+?o???49G?+M??[r??ϊ$??d].S4?^(??nK??,?bi??[? s?6?~+?!???yf?ۈhʶ?ڬ?zUBCZܐc? ?;?}?b ?Ә?$47?˪?mE
??_????cE?z?9HtL?T??4,ʢq?.i?[#??[ݎTC?s????m?????8?^h?ev?k????q%Ք?F????hcd??3=?iAU *???k???=?߃?l_??[?1$?jSIͦ??	??؄?8?????G?e??89N}??퇳g'??=?	?E?K͆????????±??d??`h????w:?o? ?x?7wkd:ౄ???R?N"íE?i"qx_???I)??=|      V      x?????? ? ?      T   e   x?MMI
?0;O#??/E-?N??o??????K?)????tR?謪??M?(9`?M|*?tֿ?H?u???DY9je??J?T??se??? d(-      P   ?  x????n?0???S?~??3?e?e%?J\j	0kLռ}mC?H%
???7s??2?07??ntљ?A??
??򅐿?A?F	rA?~????h???=R?Dp?+ic.??(s	????}?چ?v??V?%zm.?}FKZ?2????Huڜ???~?M??ޝ??}??
2K$?͌?v?,????o:???v%???C5I????\JR?kkj?G?d???9???`?to?.}?KjQ0?Q@*?n?m??gA8e????)?U??S?߀ ?(???????1o?%iK???@??(Z)"????B]Hٔή=?(?WSX??m?Oӻ??>?%`6?`??t?%?R???Ԯ;?lN?۶%*????!gr?/????L?0??(?jx?2%???????E????M7?0j??U??pTV+e	?f?[ӧ?I*?׿ѿ????? p      a      x?????? ? ?      R   I  x?͓?JQ??w???;??ܹ3s? ??@??)?@??????a+1hݲ]?f
?3?y??1MJhi??圻??? ?J?
???I??x??=?Kg??wN}?U??W~?8???q?R~?b??e;??l?K{?r?$?????[?-g? ?)?@??Hr#???`X2N???`?,??$nI`?<į*v?e????.??j????wԋD?|-??1?ǐu??8?װ	?8??'?>??????y"c?ۘ?=?q????{]V?B???? ???[?-lK
,!u?<????	??????!,̊?f?????????,???}? L?     