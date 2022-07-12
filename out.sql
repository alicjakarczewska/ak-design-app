PGDMP     /    5                z        	   myproject    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16395 	   myproject    DATABASE     e   CREATE DATABASE myproject WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE myproject;
                postgres    false            �           0    0    DATABASE myproject    ACL     2   GRANT ALL ON DATABASE myproject TO myprojectuser;
                   postgres    false    3576            �            1259    16779    artgallery_album    TABLE     l   CREATE TABLE public.artgallery_album (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 $   DROP TABLE public.artgallery_album;
       public         heap    myprojectuser    false            �            1259    16782    artgallery_album_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artgallery_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.artgallery_album_id_seq;
       public          myprojectuser    false    209            �           0    0    artgallery_album_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.artgallery_album_id_seq OWNED BY public.artgallery_album.id;
          public          myprojectuser    false    210            �            1259    16783    artgallery_picture    TABLE       CREATE TABLE public.artgallery_picture (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text,
    picture_date date NOT NULL,
    album character varying(255) NOT NULL,
    author_id integer NOT NULL,
    header_image character varying(100)
);
 &   DROP TABLE public.artgallery_picture;
       public         heap    myprojectuser    false            �            1259    16788    artgallery_picture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artgallery_picture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.artgallery_picture_id_seq;
       public          myprojectuser    false    211            �           0    0    artgallery_picture_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.artgallery_picture_id_seq OWNED BY public.artgallery_picture.id;
          public          myprojectuser    false    212            �            1259    16789    artgallery_picture_likes    TABLE     �   CREATE TABLE public.artgallery_picture_likes (
    id integer NOT NULL,
    picture_id integer NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.artgallery_picture_likes;
       public         heap    myprojectuser    false            �            1259    16792    artgallery_picture_likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artgallery_picture_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.artgallery_picture_likes_id_seq;
       public          myprojectuser    false    213            �           0    0    artgallery_picture_likes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.artgallery_picture_likes_id_seq OWNED BY public.artgallery_picture_likes.id;
          public          myprojectuser    false    214            �            1259    16793 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    myprojectuser    false            �            1259    16796    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          myprojectuser    false    215            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          myprojectuser    false    216            �            1259    16797    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    myprojectuser    false            �            1259    16800    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          myprojectuser    false    217            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          myprojectuser    false    218            �            1259    16801    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    myprojectuser    false            �            1259    16804    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          myprojectuser    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          myprojectuser    false    220            �            1259    16805 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    myprojectuser    false            �            1259    16810    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    myprojectuser    false            �            1259    16813    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          myprojectuser    false    222                        0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          myprojectuser    false    223            �            1259    16814    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          myprojectuser    false    221                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          myprojectuser    false    224            �            1259    16815    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    myprojectuser    false            �            1259    16818 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          myprojectuser    false    225                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          myprojectuser    false    226            �            1259    16819    blog_comment    TABLE     �   CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    author character varying(200) NOT NULL,
    text text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    approved_comment boolean NOT NULL,
    post_id integer NOT NULL
);
     DROP TABLE public.blog_comment;
       public         heap    myprojectuser    false            �            1259    16824    blog_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_comment_id_seq;
       public          myprojectuser    false    227                       0    0    blog_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;
          public          myprojectuser    false    228            �            1259    16825 	   blog_post    TABLE     �   CREATE TABLE public.blog_post (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    text text,
    created_date timestamp with time zone NOT NULL,
    published_date timestamp with time zone,
    author_id integer NOT NULL
);
    DROP TABLE public.blog_post;
       public         heap    myprojectuser    false            �            1259    16830    blog_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          myprojectuser    false    229                       0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          myprojectuser    false    230            �            1259    16831    chat_message    TABLE     �   CREATE TABLE public.chat_message (
    id integer NOT NULL,
    body text,
    date timestamp with time zone NOT NULL,
    is_read boolean NOT NULL,
    recipient_id integer NOT NULL,
    sender_id integer NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.chat_message;
       public         heap    myprojectuser    false            �            1259    16836    chat_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.chat_message_id_seq;
       public          myprojectuser    false    231                       0    0    chat_message_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.chat_message_id_seq OWNED BY public.chat_message.id;
          public          myprojectuser    false    232            �            1259    16837    courses_course    TABLE     �   CREATE TABLE public.courses_course (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    course_image character varying(100)
);
 "   DROP TABLE public.courses_course;
       public         heap    myprojectuser    false            �            1259    16842    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public          myprojectuser    false    233                       0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;
          public          myprojectuser    false    234            �            1259    16843    courses_lesson    TABLE     K  CREATE TABLE public.courses_lesson (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    header_image character varying(100),
    body text,
    video character varying(100),
    lesson_date date NOT NULL,
    course character varying(255),
    lesson_number integer NOT NULL,
    author_id integer NOT NULL
);
 "   DROP TABLE public.courses_lesson;
       public         heap    myprojectuser    false            �            1259    16848    courses_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_lesson_id_seq;
       public          myprojectuser    false    235                       0    0    courses_lesson_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_lesson_id_seq OWNED BY public.courses_lesson.id;
          public          myprojectuser    false    236            �            1259    16849    courses_lesson_is_done    TABLE     �   CREATE TABLE public.courses_lesson_is_done (
    id integer NOT NULL,
    lesson_id integer NOT NULL,
    user_id integer NOT NULL
);
 *   DROP TABLE public.courses_lesson_is_done;
       public         heap    myprojectuser    false            �            1259    16852    courses_lesson_is_done_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_lesson_is_done_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.courses_lesson_is_done_id_seq;
       public          myprojectuser    false    237                       0    0    courses_lesson_is_done_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.courses_lesson_is_done_id_seq OWNED BY public.courses_lesson_is_done.id;
          public          myprojectuser    false    238            �            1259    16853    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    myprojectuser    false            �            1259    16859    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          myprojectuser    false    239            	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          myprojectuser    false    240            �            1259    16860    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    myprojectuser    false            �            1259    16863    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          myprojectuser    false    241            
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          myprojectuser    false    242            �            1259    16864    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    myprojectuser    false            �            1259    16869    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          myprojectuser    false    243                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          myprojectuser    false    244            �            1259    16870    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    myprojectuser    false            �            1259    16875    offer_service    TABLE     �   CREATE TABLE public.offer_service (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    service_image character varying(100),
    is_active boolean NOT NULL
);
 !   DROP TABLE public.offer_service;
       public         heap    myprojectuser    false            �            1259    16880    offer_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offer_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.offer_service_id_seq;
       public          myprojectuser    false    246                       0    0    offer_service_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.offer_service_id_seq OWNED BY public.offer_service.id;
          public          myprojectuser    false    247            �            1259    16881    registration_profile    TABLE       CREATE TABLE public.registration_profile (
    id integer NOT NULL,
    bio text NOT NULL,
    user_id integer,
    facebook_url character varying(255),
    instagram_url character varying(255),
    profile_pic character varying(100),
    youtube_url character varying(255)
);
 (   DROP TABLE public.registration_profile;
       public         heap    myprojectuser    false            �            1259    16886    registration_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registration_profile_id_seq;
       public          myprojectuser    false    248                       0    0    registration_profile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registration_profile_id_seq OWNED BY public.registration_profile.id;
          public          myprojectuser    false    249            �           2604    16887    artgallery_album id    DEFAULT     z   ALTER TABLE ONLY public.artgallery_album ALTER COLUMN id SET DEFAULT nextval('public.artgallery_album_id_seq'::regclass);
 B   ALTER TABLE public.artgallery_album ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    210    209            �           2604    16888    artgallery_picture id    DEFAULT     ~   ALTER TABLE ONLY public.artgallery_picture ALTER COLUMN id SET DEFAULT nextval('public.artgallery_picture_id_seq'::regclass);
 D   ALTER TABLE public.artgallery_picture ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    212    211            �           2604    16889    artgallery_picture_likes id    DEFAULT     �   ALTER TABLE ONLY public.artgallery_picture_likes ALTER COLUMN id SET DEFAULT nextval('public.artgallery_picture_likes_id_seq'::regclass);
 J   ALTER TABLE public.artgallery_picture_likes ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    214    213            �           2604    16890    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    216    215            �           2604    16891    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    218    217            �           2604    16892    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    220    219            �           2604    16893    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    224    221            �           2604    16894    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    223    222            �           2604    16895    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    226    225            �           2604    16896    blog_comment id    DEFAULT     r   ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);
 >   ALTER TABLE public.blog_comment ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    228    227            �           2604    16897    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    230    229            �           2604    16898    chat_message id    DEFAULT     r   ALTER TABLE ONLY public.chat_message ALTER COLUMN id SET DEFAULT nextval('public.chat_message_id_seq'::regclass);
 >   ALTER TABLE public.chat_message ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    232    231            �           2604    16899    courses_course id    DEFAULT     v   ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses_course ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    234    233            �           2604    16900    courses_lesson id    DEFAULT     v   ALTER TABLE ONLY public.courses_lesson ALTER COLUMN id SET DEFAULT nextval('public.courses_lesson_id_seq'::regclass);
 @   ALTER TABLE public.courses_lesson ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    236    235            �           2604    16901    courses_lesson_is_done id    DEFAULT     �   ALTER TABLE ONLY public.courses_lesson_is_done ALTER COLUMN id SET DEFAULT nextval('public.courses_lesson_is_done_id_seq'::regclass);
 H   ALTER TABLE public.courses_lesson_is_done ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    238    237            �           2604    16902    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    240    239            �           2604    16903    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    242    241            �           2604    16904    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    244    243            �           2604    16905    offer_service id    DEFAULT     t   ALTER TABLE ONLY public.offer_service ALTER COLUMN id SET DEFAULT nextval('public.offer_service_id_seq'::regclass);
 ?   ALTER TABLE public.offer_service ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    247    246            �           2604    16906    registration_profile id    DEFAULT     �   ALTER TABLE ONLY public.registration_profile ALTER COLUMN id SET DEFAULT nextval('public.registration_profile_id_seq'::regclass);
 F   ALTER TABLE public.registration_profile ALTER COLUMN id DROP DEFAULT;
       public          myprojectuser    false    249    248            �          0    16779    artgallery_album 
   TABLE DATA           4   COPY public.artgallery_album (id, name) FROM stdin;
    public          myprojectuser    false    209   �      �          0    16783    artgallery_picture 
   TABLE DATA           k   COPY public.artgallery_picture (id, title, body, picture_date, album, author_id, header_image) FROM stdin;
    public          myprojectuser    false    211         �          0    16789    artgallery_picture_likes 
   TABLE DATA           K   COPY public.artgallery_picture_likes (id, picture_id, user_id) FROM stdin;
    public          myprojectuser    false    213   !      �          0    16793 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          myprojectuser    false    215   Y      �          0    16797    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          myprojectuser    false    217   v      �          0    16801    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          myprojectuser    false    219   �      �          0    16805 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          myprojectuser    false    221   �      �          0    16810    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          myprojectuser    false    222   �      �          0    16815    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          myprojectuser    false    225   �      �          0    16819    blog_comment 
   TABLE DATA           a   COPY public.blog_comment (id, author, text, created_date, approved_comment, post_id) FROM stdin;
    public          myprojectuser    false    227   �      �          0    16825 	   blog_post 
   TABLE DATA           ]   COPY public.blog_post (id, title, text, created_date, published_date, author_id) FROM stdin;
    public          myprojectuser    false    229   �      �          0    16831    chat_message 
   TABLE DATA           a   COPY public.chat_message (id, body, date, is_read, recipient_id, sender_id, user_id) FROM stdin;
    public          myprojectuser    false    231   93      �          0    16837    courses_course 
   TABLE DATA           M   COPY public.courses_course (id, name, description, course_image) FROM stdin;
    public          myprojectuser    false    233   B6      �          0    16843    courses_lesson 
   TABLE DATA           }   COPY public.courses_lesson (id, title, header_image, body, video, lesson_date, course, lesson_number, author_id) FROM stdin;
    public          myprojectuser    false    235   "8      �          0    16849    courses_lesson_is_done 
   TABLE DATA           H   COPY public.courses_lesson_is_done (id, lesson_id, user_id) FROM stdin;
    public          myprojectuser    false    237   �F      �          0    16853    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          myprojectuser    false    239   RG      �          0    16860    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          myprojectuser    false    241   qg      �          0    16864    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          myprojectuser    false    243   Th      �          0    16870    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          myprojectuser    false    245   �k      �          0    16875    offer_service 
   TABLE DATA           Y   COPY public.offer_service (id, title, description, service_image, is_active) FROM stdin;
    public          myprojectuser    false    246   �u      �          0    16881    registration_profile 
   TABLE DATA           w   COPY public.registration_profile (id, bio, user_id, facebook_url, instagram_url, profile_pic, youtube_url) FROM stdin;
    public          myprojectuser    false    248   =y                 0    0    artgallery_album_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.artgallery_album_id_seq', 10, true);
          public          myprojectuser    false    210                       0    0    artgallery_picture_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.artgallery_picture_id_seq', 36, true);
          public          myprojectuser    false    212                       0    0    artgallery_picture_likes_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.artgallery_picture_likes_id_seq', 5, true);
          public          myprojectuser    false    214                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          myprojectuser    false    216                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          myprojectuser    false    218                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          myprojectuser    false    220                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          myprojectuser    false    223                       0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 17, true);
          public          myprojectuser    false    224                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          myprojectuser    false    226                       0    0    blog_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_comment_id_seq', 29, true);
          public          myprojectuser    false    228                       0    0    blog_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_post_id_seq', 30, true);
          public          myprojectuser    false    230                       0    0    chat_message_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.chat_message_id_seq', 167, true);
          public          myprojectuser    false    232                       0    0    courses_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_course_id_seq', 3, true);
          public          myprojectuser    false    234                       0    0    courses_lesson_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.courses_lesson_id_seq', 21, true);
          public          myprojectuser    false    236                       0    0    courses_lesson_is_done_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.courses_lesson_is_done_id_seq', 18, true);
          public          myprojectuser    false    238                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 447, true);
          public          myprojectuser    false    240                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          myprojectuser    false    242                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);
          public          myprojectuser    false    244                        0    0    offer_service_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.offer_service_id_seq', 5, true);
          public          myprojectuser    false    247            !           0    0    registration_profile_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.registration_profile_id_seq', 1, true);
          public          myprojectuser    false    249            �           2606    16910 &   artgallery_album artgallery_album_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.artgallery_album
    ADD CONSTRAINT artgallery_album_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.artgallery_album DROP CONSTRAINT artgallery_album_pkey;
       public            myprojectuser    false    209            �           2606    16912 R   artgallery_picture_likes artgallery_picture_likes_picture_id_user_id_c377dc31_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.artgallery_picture_likes
    ADD CONSTRAINT artgallery_picture_likes_picture_id_user_id_c377dc31_uniq UNIQUE (picture_id, user_id);
 |   ALTER TABLE ONLY public.artgallery_picture_likes DROP CONSTRAINT artgallery_picture_likes_picture_id_user_id_c377dc31_uniq;
       public            myprojectuser    false    213    213            �           2606    16914 6   artgallery_picture_likes artgallery_picture_likes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.artgallery_picture_likes
    ADD CONSTRAINT artgallery_picture_likes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.artgallery_picture_likes DROP CONSTRAINT artgallery_picture_likes_pkey;
       public            myprojectuser    false    213            �           2606    16916 *   artgallery_picture artgallery_picture_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.artgallery_picture
    ADD CONSTRAINT artgallery_picture_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.artgallery_picture DROP CONSTRAINT artgallery_picture_pkey;
       public            myprojectuser    false    211            �           2606    16918    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            myprojectuser    false    215            �           2606    16920 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            myprojectuser    false    217    217            �           2606    16922 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            myprojectuser    false    217            �           2606    16924    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            myprojectuser    false    215            �           2606    16926 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            myprojectuser    false    219    219            �           2606    16928 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            myprojectuser    false    219            �           2606    16930 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            myprojectuser    false    222            �           2606    16932 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            myprojectuser    false    222    222            �           2606    16934    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            myprojectuser    false    221            �           2606    16936 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            myprojectuser    false    225            �           2606    16938 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            myprojectuser    false    225    225            �           2606    16940     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            myprojectuser    false    221                       2606    16942    blog_comment blog_comment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_pkey;
       public            myprojectuser    false    227                       2606    16944    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            myprojectuser    false    229                       2606    16946    chat_message chat_message_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.chat_message DROP CONSTRAINT chat_message_pkey;
       public            myprojectuser    false    231                       2606    16948 "   courses_course courses_course_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_course DROP CONSTRAINT courses_course_pkey;
       public            myprojectuser    false    233                       2606    16950 M   courses_lesson_is_done courses_lesson_is_done_lesson_id_user_id_bed67744_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.courses_lesson_is_done
    ADD CONSTRAINT courses_lesson_is_done_lesson_id_user_id_bed67744_uniq UNIQUE (lesson_id, user_id);
 w   ALTER TABLE ONLY public.courses_lesson_is_done DROP CONSTRAINT courses_lesson_is_done_lesson_id_user_id_bed67744_uniq;
       public            myprojectuser    false    237    237                       2606    16952 2   courses_lesson_is_done courses_lesson_is_done_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.courses_lesson_is_done
    ADD CONSTRAINT courses_lesson_is_done_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.courses_lesson_is_done DROP CONSTRAINT courses_lesson_is_done_pkey;
       public            myprojectuser    false    237                       2606    16954 "   courses_lesson courses_lesson_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_lesson
    ADD CONSTRAINT courses_lesson_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_lesson DROP CONSTRAINT courses_lesson_pkey;
       public            myprojectuser    false    235                       2606    16956 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            myprojectuser    false    239                       2606    16958 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            myprojectuser    false    241    241                       2606    16960 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            myprojectuser    false    241                       2606    16962 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            myprojectuser    false    243            "           2606    16964 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            myprojectuser    false    245            %           2606    16966     offer_service offer_service_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.offer_service
    ADD CONSTRAINT offer_service_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.offer_service DROP CONSTRAINT offer_service_pkey;
       public            myprojectuser    false    246            '           2606    16968 .   registration_profile registration_profile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_pkey;
       public            myprojectuser    false    248            )           2606    16970 5   registration_profile registration_profile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_key;
       public            myprojectuser    false    248            �           1259    16971 %   artgallery_picture_author_id_1f44d275    INDEX     i   CREATE INDEX artgallery_picture_author_id_1f44d275 ON public.artgallery_picture USING btree (author_id);
 9   DROP INDEX public.artgallery_picture_author_id_1f44d275;
       public            myprojectuser    false    211            �           1259    16972 ,   artgallery_picture_likes_picture_id_ce97fc5f    INDEX     w   CREATE INDEX artgallery_picture_likes_picture_id_ce97fc5f ON public.artgallery_picture_likes USING btree (picture_id);
 @   DROP INDEX public.artgallery_picture_likes_picture_id_ce97fc5f;
       public            myprojectuser    false    213            �           1259    16973 )   artgallery_picture_likes_user_id_8e94eba2    INDEX     q   CREATE INDEX artgallery_picture_likes_user_id_8e94eba2 ON public.artgallery_picture_likes USING btree (user_id);
 =   DROP INDEX public.artgallery_picture_likes_user_id_8e94eba2;
       public            myprojectuser    false    213            �           1259    16974    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            myprojectuser    false    215            �           1259    16975 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            myprojectuser    false    217            �           1259    16976 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            myprojectuser    false    217            �           1259    16977 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            myprojectuser    false    219            �           1259    16978 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            myprojectuser    false    222            �           1259    16979 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            myprojectuser    false    222            �           1259    16980 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            myprojectuser    false    225            �           1259    16981 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            myprojectuser    false    225            �           1259    16982     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            myprojectuser    false    221                       1259    16983    blog_comment_post_id_580e96ef    INDEX     Y   CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);
 1   DROP INDEX public.blog_comment_post_id_580e96ef;
       public            myprojectuser    false    227                       1259    16984    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            myprojectuser    false    229                       1259    16985 "   chat_message_recipient_id_519a6b56    INDEX     c   CREATE INDEX chat_message_recipient_id_519a6b56 ON public.chat_message USING btree (recipient_id);
 6   DROP INDEX public.chat_message_recipient_id_519a6b56;
       public            myprojectuser    false    231            	           1259    16986    chat_message_sender_id_991c686c    INDEX     ]   CREATE INDEX chat_message_sender_id_991c686c ON public.chat_message USING btree (sender_id);
 3   DROP INDEX public.chat_message_sender_id_991c686c;
       public            myprojectuser    false    231            
           1259    16987    chat_message_user_id_a47c01bb    INDEX     Y   CREATE INDEX chat_message_user_id_a47c01bb ON public.chat_message USING btree (user_id);
 1   DROP INDEX public.chat_message_user_id_a47c01bb;
       public            myprojectuser    false    231                       1259    16988 !   courses_lesson_author_id_1f925f7e    INDEX     a   CREATE INDEX courses_lesson_author_id_1f925f7e ON public.courses_lesson USING btree (author_id);
 5   DROP INDEX public.courses_lesson_author_id_1f925f7e;
       public            myprojectuser    false    235                       1259    16989 )   courses_lesson_is_done_lesson_id_2e5648f4    INDEX     q   CREATE INDEX courses_lesson_is_done_lesson_id_2e5648f4 ON public.courses_lesson_is_done USING btree (lesson_id);
 =   DROP INDEX public.courses_lesson_is_done_lesson_id_2e5648f4;
       public            myprojectuser    false    237                       1259    16990 '   courses_lesson_is_done_user_id_7697a80c    INDEX     m   CREATE INDEX courses_lesson_is_done_user_id_7697a80c ON public.courses_lesson_is_done USING btree (user_id);
 ;   DROP INDEX public.courses_lesson_is_done_user_id_7697a80c;
       public            myprojectuser    false    237                       1259    16991 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            myprojectuser    false    239                       1259    16992 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            myprojectuser    false    239                        1259    16993 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            myprojectuser    false    245            #           1259    16994 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            myprojectuser    false    245            *           2606    16995 H   artgallery_picture artgallery_picture_author_id_1f44d275_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.artgallery_picture
    ADD CONSTRAINT artgallery_picture_author_id_1f44d275_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.artgallery_picture DROP CONSTRAINT artgallery_picture_author_id_1f44d275_fk_auth_user_id;
       public          myprojectuser    false    3312    211    221            +           2606    17000 N   artgallery_picture_likes artgallery_picture_l_picture_id_ce97fc5f_fk_artgaller    FK CONSTRAINT     �   ALTER TABLE ONLY public.artgallery_picture_likes
    ADD CONSTRAINT artgallery_picture_l_picture_id_ce97fc5f_fk_artgaller FOREIGN KEY (picture_id) REFERENCES public.artgallery_picture(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.artgallery_picture_likes DROP CONSTRAINT artgallery_picture_l_picture_id_ce97fc5f_fk_artgaller;
       public          myprojectuser    false    213    3288    211            ,           2606    17005 R   artgallery_picture_likes artgallery_picture_likes_user_id_8e94eba2_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.artgallery_picture_likes
    ADD CONSTRAINT artgallery_picture_likes_user_id_8e94eba2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.artgallery_picture_likes DROP CONSTRAINT artgallery_picture_likes_user_id_8e94eba2_fk_auth_user_id;
       public          myprojectuser    false    221    213    3312            -           2606    17010 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          myprojectuser    false    219    3310    217            .           2606    17015 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          myprojectuser    false    217    215    3299            /           2606    17020 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          myprojectuser    false    241    219    3357            0           2606    17025 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          myprojectuser    false    215    3299    222            1           2606    17030 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          myprojectuser    false    3312    221    222            2           2606    17035 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          myprojectuser    false    219    225    3310            3           2606    17040 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          myprojectuser    false    221    3312    225            4           2606    17045 :   blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id;
       public          myprojectuser    false    229    227    3333            5           2606    17050 6   blog_post blog_post_author_id_dd7a8485_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id;
       public          myprojectuser    false    3312    221    229            6           2606    17055 ?   chat_message chat_message_recipient_id_519a6b56_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_recipient_id_519a6b56_fk_auth_user_id FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.chat_message DROP CONSTRAINT chat_message_recipient_id_519a6b56_fk_auth_user_id;
       public          myprojectuser    false    221    3312    231            7           2606    17060 <   chat_message chat_message_sender_id_991c686c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_sender_id_991c686c_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.chat_message DROP CONSTRAINT chat_message_sender_id_991c686c_fk_auth_user_id;
       public          myprojectuser    false    3312    221    231            8           2606    17065 :   chat_message chat_message_user_id_a47c01bb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_user_id_a47c01bb_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.chat_message DROP CONSTRAINT chat_message_user_id_a47c01bb_fk_auth_user_id;
       public          myprojectuser    false    231    3312    221            9           2606    17070 @   courses_lesson courses_lesson_author_id_1f925f7e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_lesson
    ADD CONSTRAINT courses_lesson_author_id_1f925f7e_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.courses_lesson DROP CONSTRAINT courses_lesson_author_id_1f925f7e_fk_auth_user_id;
       public          myprojectuser    false    3312    221    235            :           2606    17075 U   courses_lesson_is_done courses_lesson_is_done_lesson_id_2e5648f4_fk_courses_lesson_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_lesson_is_done
    ADD CONSTRAINT courses_lesson_is_done_lesson_id_2e5648f4_fk_courses_lesson_id FOREIGN KEY (lesson_id) REFERENCES public.courses_lesson(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.courses_lesson_is_done DROP CONSTRAINT courses_lesson_is_done_lesson_id_2e5648f4_fk_courses_lesson_id;
       public          myprojectuser    false    235    3343    237            ;           2606    17080 N   courses_lesson_is_done courses_lesson_is_done_user_id_7697a80c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_lesson_is_done
    ADD CONSTRAINT courses_lesson_is_done_user_id_7697a80c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.courses_lesson_is_done DROP CONSTRAINT courses_lesson_is_done_user_id_7697a80c_fk_auth_user_id;
       public          myprojectuser    false    237    221    3312            <           2606    17085 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          myprojectuser    false    3357    239    241            =           2606    17090 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          myprojectuser    false    3312    221    239            >           2606    17095 J   registration_profile registration_profile_user_id_e133ce43_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_profile
    ADD CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.registration_profile DROP CONSTRAINT registration_profile_user_id_e133ce43_fk_auth_user_id;
       public          myprojectuser    false    248    221    3312            �   /   x���LI,��/O��L/JL����24�,JM�ɬJL�J����� ���      �   �  x��U�n�H<�_�{�ɢ%Y���0���8qb�_M�E�H��3�p�GF���?	|��k{HI~�9d���i���]��Qp����2�/Ns���&=�X��MS�	I#��T���)ߠ�Z�*q#7�FbVA���a��).��~����m)�l�"�R 4	�B�泃a�����(h�5�@���)��3�5
�e�5�΅T�2��d�X^����8���!������R|)E���D��b%
)dZ�O����q9���+�.�U�j��R1�*msM�Lp�Z�9K(�"a�[1pVj��A`oA�!�1��;�k��VqCF2�R��_R@^E�mX��|̜�|�o�o_7�q��S�����$��A�����量O	O5�D&�C�`�'�WG���qp(��hז4�m���Ex�b>!�cJ$w����qe�M-�&�v�H�5�x��:�
jA��[�-�_Ҡ$G(���o�J���2�?>숞o�(�)�
����iU;��T�k��C����1�qy��q����坿��!]���0OZ�ّ��+�9�ݝkL��Sn��v�E5i3�`����-}K��̊�i����}�D��)�R!1�][I����[��3I�d�w�R�[�����
���7\���U­��#S�S�/6��W�!�@������$k�r���Ml���R�y��%��3�]��
��88���xoY�ZI��A���+���Y�S��0�����Q�2�i����tZ�NcU�%�����/��&�f0��{�*Ͽ��u-�H�����*��O&3ec��[S��2�U�x�3�3�6�v�� �PkW �&�!��*ml�p�ᳪs�?T�e�;�/�SB�'��*��q{�w����˶�N�Y���WX+�&�����_h��_�	�h6ޛD��^2Mz���U)��h�r����`o�U��17�3}z d�_����'�4Ξ[Ī<��,��?���#K`s��Ǽ1K��7�z��q�T�j�����[�U6      �   (   x�3�42�4�2S&\Ɯ�F@�	�2�2�46�1z\\\ ��      �      x������ � �      �      x������ � �      �     x�m�Y��0D��S��E-��s�ǣ8�A�'�ۇn{����R��Ŷ���n������������i�T�J5��r���'C�Wv~N��i��J�������`���>͗��q�]O���8B�b��gXTl��$��۱��|{ݛ�ҳk�Z\Y�. ��T��EJH�;V�zLsӓ���k{�?V�}�; l��Q��2m��|�]���6����� ��o\��
� �ﴮ��>���Ȭh�kؖU?�|�#	F�ɻ0�ɘI�`�ǘʺ@������ل���輍w^-�&�f:%�� ��aZܩ�\�EM��Q庭=���k�y��
���T �I�9ٓ���aD��L��(��I5CeR�f$  :ݯ�15���7��uU���d�Jr���z�����LHj��߯K��!M��Md�0&��@V&H�%�����T�yL��MX�
0&��@Y&H�w���bخx�Y/���N�Юx�Y��Ϊ(R{ђ��B��Z�a���Z���僀J����5'*�j�n0�VP9�3�V\�<�F�kE�T�v�Ǳ�q\�\إ��2�/}��\�8K��qW}��cX�1,|�+>���EWD�a�+�튰��hS��u���|�s:'�y��t�����7�3}���M�T(*{S��,�f���Y��Y�f��gy\�rogy�����[�����͈��E{�f��梾j3��sQҜ.u_�C��q!��E�f��I���JN�YQ���4_��w'�<�Q��I����9�j�As*ي"U�������]�      �   �  x���Yo�@ �g�>�f��2@Ҥ��.hݺ�&7�,���X��_�^�&�^B�98���A�v��v����#�ʐ�⒝\�/����us`gp��٭�0'�c����.���˷�h���҇l�J Є�	�:P�+���+<qBi�i�~�h��Rx��91�#e��ūٷLؠ� ��Rӯ�w���b����Z�Ksw�^g���B��p3OI����˟{�� ��̀� L��,�{�K��'	���JA$��`
K0���V�)˰&S�uF��u����L��?�ܴݝ[+�� ꢿH+1l��u�H7 T08�c?r
��s0E�~�C~^����rR���ܲĢ3��iD��j���`�ꆳ��������8��t�O���P%��/��>/۠�iTV�
~`i,d�b��-�"�k��T�[�M�����!߉�k�S�����N mC�o�&����[U)j|n���[�j�*�
E�]Ġ�@�B�Za�u�=캯�׮5v���;0;��B7}����<��pM&�yܻOP��4v���¢&`M�)L�Lg�
�։�T�>�;��|e^��%�B��%��㠝Q���G��eF��gI�wx�����1�P��Oy�o��t�:�Rx_��Db� DaX�Zi�$n�~"�"e��ܩ��W+JxYQlg�{ɝw�wv�7(��:�ev�]�Rj��Xj\�      �      x������ � �      �      x������ � �      �   �  x�mT�j�@]K_q�,u�%[yh�6�B��B�f��8��=��!��|F�������ȱ�f<s�=��s�;�*��U\+*+�s��2Y7��O���Ǟ����������s��\�|c1���ւrɆ������I,Z�B�x�:)8kEw�h��:����R���dшJ�m�}���$�R��c*)����G>~���x�E!َN�Frذ�����a��32Ӕ����}���x�bm(S"��0-�>����$�
JU�*⊳�%Q�j-�-��|�t���s�Y�\K�Rpm-�����=�R��S�R⭹�o���t;r����y��)n��$.�u��D�{��j?5PZ:W��MW��O�f]��P�[5��Q����QŶ�юr4Y�]�vGθh%aԙ*z�ˊuP;l�~D�L��s!�sDDʐ7ar5)ٜ�bR/3jc��S!�E��mN7J��p�ߋ�e��r.*$�Z�yO_w�m>G�c�Z�i�&�Ȏ� ����d��.� 29<�r`kA��Z��q�J����n�I�U<�����.���h�d���|��K�n��3�zi
��Vd5�r�'{_�i㿷����Ux6���r5U�b��f�o�Tus���`����N!� M!��NU9��`�@b�j҃5�p.�w�<;$~���ծ����-�u�
3ŏ9�e�����uݿ��      �      x��[�nG�}��"��n��dK�V�${{ƒ0�Ac``�]�lf�%k낚�G���A�Ϙ7�ކ�_{Ndfuu�H�]���'ND�O�o�r�x��ͬպ��6�|s�Q���z�>TfM:lߩQ'�P���z�{ӪRorS5Vټk�Z��e�ɠRݗ�lT����ܪʚ�oF���a�^U�ۘ�u�.m�7��C�fN�B�Cr���n_;�RU�;RZa�o�O$*��Z�հ}�Ue��K��j��dK���K�ތ���o9J2����\�����zU�;k�Fٲ5�i������V�9��O.ڶj޾͍z���ۺn��ˇ��-8�N��[O/*�V���%v���Ĕ���a˺Į?y�پ~t[?>�A��S���5_�C����7X|?`pƈ��Mf��.�W�����[�ǧǋ����}ur������'�y|rͯ��'����^g�#7�?.�i*��ץU�l��f2��ci��_�CNGy�'��~lMִK�r7b�V����M44��$��͚�u�^��V��	��d��U��ڻrTmm����R���%�_�۾�A� c500�f�_@/�:��7�T�M�+Wu���&y;.��;�O�"�u�z��(��"�����0�$�/�~�� <��/޹w���^<��ܕ��Z�A�9���٣8�����T�<����4��媩�R�KJ�j7�v����ocnK|v+���fd E�������A�F�c��·�c �͚�90������{\y/ә�ߏ"X��F����q������\��B&ӣ��x����l_?65\߹��9�7b�_�_K���^hUeT���o?� ��c˺z�	o��m�����w-�v�@��&5��J�3n+u�[UX"ǜci{���F��u���Ȼп}�߾�#['p� �&#��.�����,� 2kY-�����t��O羊�y
�<s�MtQ}Z�W��^��+M�%<�s�ҘX�7iכph��9������!�uIG�1�&���s���]�2�բ_43,�����Վ=��b��0��E��x7��z�!})W��{ش`�%��unл����;!n�w�_���Q���7/ᲟaT���Y3b>�"hK��ȯ;����M�l��X���Ȁ�"�sk�Ե���[0����/1�$�v-�(����څ� adp�<b��\�|��L���G�ݨ]\�-w��?��r�~��ǌ\�r��Jc��*�h���o�W��#1�9�C��'�܆M�C3v��%G|��:g��0<`jd�A;�2z�"�8S�A�^
���L67@
����&Q�LP�T�k�e����Td�����ng����5��柕��7��e�"Q���^P��d�O[0�H�C_���
c�k[^y��B���<�鳟O<Gb$SXHa�ݸ�OB�,Pa5�	d@���b�O�`nȡ�%〹��R�"�A�؅ v�)7ȑ��� ~����!���I�k�^�Ⱦm��$��5+(Y��M�c�������qo��~Q{��槉C+��c��^c_cP�\�.(�B������:h�1!�;ĀI6X�団iQ����W�	�?�RC�dٰdˏ���p�Ŋ;b}���.A�j]�� �v)�뀇�!q`@���f	ȝ��Щ1��l��;l�_ ��Q4�\�!�Cy��2��	���8����+W挓����co��k<C�Ҳ/t�dC�N!��>�,6$�FO�c<�2
����Խ5�:��æ Ŧ�&��,���RPR�\���{�#c� �fؤ����cԖ���>Z�W�ଅ��B�R�F��I>e]��f>���׆��U��X�X�e:�zBiX��NR��|(��Ƀ�!���iEg��%\���Z׮`��.�|��t0����;Q{�Q��5��H�6i]�e�D�Śud1�~`�ي۩�5��dk��`����0Ǽ��E�I"��.����~�Y�秢�� ����ge�
�l˽�a��:[�T0�
�_f��g�z�� Y���?8�wQ���o���8}�P7��謹p�z�\}Z����*��v����MUm�-��mL1�Ku8C�����^��Z�?���SRq��/(/V�Q�C������)?�F�̓]8�@IU�Frۋs�NX���\W[}��B��$b������<_	7C�Iv8yp�>{!��u L�S����g����ec�Dj��e�ގ
���X�Q���.��6z�}�B2��i�d�~@&)�d��Y�W�(�(C�hm�����7��&D�sҲY���E~n���K,3u���;_����5�	�D:����t�B��9��R<��OT�`r;�e�K�����J/Ո%�Wի�CZ�B�+ι�bR�A8}���&+G�"ܮ���:l�Z��.2�ζ��J��ى�u����W��F'�Na�9=��D%� 9�bA���w�`6/[TW�ⷄ5�+���揞��G)")s�<�ش�� |�����)W��/�%��w����28 J�C݉'+���v7�t���v�[�7�����c��o~��3�Kj<��Y�
�J����->�!`Y�⮭v]��&L��ϰ���3Ã�f��9�[��P���.�m�q�;���z�YЋ���^�,�ۻ� f�_�f+�R�	K�8qm��*�hS;���cv�HZ�X��+.Z�!���6�H4����h_"�N�Yl~���,�D��҈��5�C!�۞t�x��4.��z���<�	Е&�恡o`�W�-_|��
N�DF�[� �B��q�}HLc���QC��s`�N=��Cy#
�a�?��v�m�4�[ۡW���(!���E�־��C����s������gK��I�mQ�[���Y�H�� l�fPګ�ՠ���B�Z�9:h�'ȼx�e��N��%9#�hד��x��y�]m����L}[���&����-����C+���ٕ�e��͡S?<6 ��Z)pYj�y�İ��|n���2{M�
Cv.�?�+W��?1�)��:8:JN��}C�=�F���p'䀮a�.gs!�V���
<�'�I,�w��pi��E�2)��ͥ�U\�c��q�a5�����ی9tD�}`�5�t�C2pA��͛�p���m߳��*:/��smV��Nj��˨�H�v���Z��t{*s1Y�M�	�[�v����ϫ��Uw���g��j���	��dG������u��ֹ��<=ݕ�'�����KԖ��[gKB)�`��� ��(�"��	�%��`�F��u���B�6�+x@�k��H�Z
�Yq�#[��]�$�!��OG4�$1���%L��x
�L��>�v��RK���}����B�Ծ]���Hz3��M�=���W� �_@2�1��uՄ1�qbYc�C�(��̕㙽��,5ɐv���ў�ŏk���q� �:-��'w{c�q�J�ћN�9��;ߣ8b@��N᜝�0#{A;=�I٤XZ�R0���a�i/��d�
��}r�,3�����.��DP��:�4dU�������2Z]#�n��)���&�U����6u
G��Y�jKA\>uLxn0J80�T�P<���Oz,:`��?��#[,FHAG�!}^瘔�k �=���Zz��F������T�z�����
ìs��T ��̝<֘	�����7�����1�}��+R=���G�\���� �^X3�(sX�3)#�lԿ�#����]ĝ�e��c� mы"�����O(Җ��1�� �ޥg�'�e�\T�����v3RP��1�/�ͽ�}2���������1�]���� �y�L5􄔫��/�yk����'c�՟�Bd���8�8�c7��!�R9�jvEކ%m�g���X��p��h.���Y����Ъ��Y񍰁��O@q��h�װ2_{6�4G<H�mǶ��dO�Y��J+�ɘ�w��#/���Ʌ GV�뚡Xa���������G#VIDu��<�� |  �G���F4U(�3f	�%�4�Y��t�֢JH���:�18Lm"�y,/�C�U��#�[=�z�i�k��f:2��:4����N��+4'�RBaT�PȽ�7�j�-�O��t��������"r�jw��M�`��!dd}�v`㭀��j LD�y���s0�L$��]����׶�d)3�_=O�n�.]��z��c�j���`[>����E1Q�r��[a�W9_��C=
�:�_�=:9��;''���m�ޠ�m��(���g����ZѸѴ	=�Jf�!�v�n�V5��r��������E{�t	�ϼ8k.�9Iġ3t�P��"�jro��0��^�@*T�>#k��+)���H}e�}���:\*�;"(�17��o+l�o�j�l�������e8��+y����\�rs�eS��� ����g%dyX�XG����=�"�S$�7�$�B�	���3�/ ���f��]c7Y��
d� �F�U�3���Z�J3F:b�u�G��O�Y�ۣ�:�x��d-�P.��ա&��wW�¶�w
�cp�$x�񆷊���;��72#��[�2��0b�z��vۅ$��N
�\g�f�h#�}�2�L\��h���=�I4�&�m5�bߡA�H�غ�j�0
�E�A�}p��^o�\�1�I�}��_x��[�a�9Dy&jE�n5���Iu��L;�
��Z
�F<���/`J e'Z�R�֞�n�����t��"v��ޕ>z�K$;k G?3�J�5����#����l�׆(��}���ۙ�c�n&pw4��+�ꉁ72�\Є4�i��gx�7������>d�XsC�r{f����{�0�a�4속�S�6�m�0�ʌLTm��Q�����{��ba����g�<�Gx#���%�t��Lo&�4�.d��&�\n:�aʐ��\�e	�yxܘ��:��	\���,�=Qٙ!FiqO)/�������8)�n���w��g�cĲȻtn�)�H╗�쨇�k��u�{vٓg�v�3�w��ZLIH��;��f��Q����r:�|f���x}��wM�Lݦf.�w��f�<�/ߌb����۰u^Sm5΄�i�=��|]�O���b	�%]�1�]A@-�?��ĶnL��.2v�x<�k�&㭋�l�s�*��Jp��z��V!/��r�?�; ���uu#�7��kp��W"�3�3���i3���pg����s}'��z�X����ۅ�6��2��^������q��r�����z�ƱR��8�Z{h��A���FQѣq^Q��#����֚�]���k�&�O�ģ<�L�'���!��繭�!dt��u�Ӄs�`�p<4�֥�����g���)���{�݅m�w}�V��_�}�����k�      �   �  x��U�n�0��`Ơ	AR�Di��N]��S�����%�A������5����ǐ�&E(�Ay�=�M��|�t�E�����#甞S�99��{G�S;��Ȍ�2���e �(iQ 
~�є�QN_ ��%!e�Q:����>|�����6G�ʷ�Fﾡ�ҤIV���x����'^9�q߄V��HΝOIU�Ze
�X���߁)<E�5oQ�,�FUu�b������
Om0�1�e��s��F(&�\yΕ����U�nt������e��W��'E���LE�F��VjY$���oK��'v�Ϫ����c�!Hҹ4�Y ����npz����&*��2�6hW*�
�B�L"�nwWg�E�Pi�JTi��ܘT���t�����ڔQ{�R�U�.������2� ��Y�tr��{T>��R�q�
�\�*�W�x�Vk��كivwg��tR�Fp��k��xԨ��>��f���� ���M����	2e�����<��zw2�o[�îp'E)��$Ӣ�[+0�)�O=�,L�,|�I�=Y�����;��4,�><�ڦ�`�r4N��o,�V����[�	�\����	 �Ҧ<�8� �%�\dSY𘆄����>�/_��09���T�cg4�BB�w�r8 s_������p Ɲ�u�~����ѱ��c��V�Xr9U#����Q�b=�r	���40�vwQk�
���cw�s&�W�!��T��D>�'���l6�c��1      �   �  x�e�1��0Ek�s CA6][%@�-�
ҌɱL�"��@��=������+�����@��!��嬒)��<��a��&�w1�hʯ�����D!�y04�>�z+}K�y��ƹ��Ig��Pd��3���B��OV�h�=MkCL�"��Zz*w�}���-Z��KA��IsD�B'sY���yP1Ns�e>�3쵍���A9X�cu��S�{h�&�Nh���p˳�	v�O{�˞�"�D�:m���<�����VL�ktj�R��E��=hw��#
�i���q�'�Eӳ;���LE��ܯW�ʵ�[�w��l�?o�@�?H�}^o��qou.��hl�+�O�"G�Lg�/8%l9V
qq�W���%SJ��
�@���o!��x9Ʈׂ���_�pp'�
���vK�����&��s��r9������My�����c���q�wU���u���V�?��n��F.�      �   �  x��ZێE}n�"�,�ƍg07�@`/^�\f�x�i�]��κem](U=����Yo�oL�מ�u�cd!�rwWUfdĉ'���꤬\���֬l���~73u���t���է�g�\��Q�jT�T�<�{Y�����QۘO:{�kt����'ee�`��D�D��lq�*]�׻�v�N�V���^ݸFF%�nT��{�3����[l*]�^�JgF�.��Ы�^]���bڞ�j[�ܪ���)��m���Z}Q5}�h<͓D}R���n�J�q�J�A�R]��vZuk��u���uV��V%_��}X3�:zv�r8���c��U�r]}��ku��i#gr�����\���x[��N�C˕�.�B<��L�M��T.1i�:��]Vc�{8��eą��,%���x_EsM����򳟫��E��ԩ��:	T`A��ŠK[<bR5�!v����S�V�մq��-�S&��`�ojp#tny�d��q��Fmz��,�
��r�ڪ���VE�@n�MW�.3�)\�����h���C<7t>�nu7��N��~!r�w�����
��3W��ck"s��ώui�3W>;���뼼�:�st������W�W�o}��.���?\����Y��ivb �`����>~p~�_]ƃ��jL����`�����Ѕm�`ϙ�� L�:ɴ����WC�%v�71`o���~4C����YvlU�3󔱦{݆�y:v� ���kv���C ��ƤTSÚ&?�(���Y�Ln�����M۬i��O����sv&W��=�;!|���T�:2����e!d	�
f��{x��z����(�š�ie�݅�lu� x�� ���U��Z};���E�b�����+�d��߹X�!8z���ɹ��A�ܒB��N�-LR�{�KZcft�l&��QX���x��q�0���ΝGX9o=�H#�a=vݼ���#)�,�a
�_�ǒ��G�Ӏ���g���� �Ј�ٕ����1�����7���><"3�:�i�)d����ܳ�p��C�b�؀A�b�|Q���?B��:�p�1�n��3�=<�s�AV���̈́���.�,��ٱZ����Q��3�����&�.��İx��<�KY���Z��)l� ߾N�࢞U��޳B�;����:� t�@���d-��;$>u�o\&�Aa�HQ�OHZ�E�lz�Ǔ$�2g�0�=&H��(�.U���ژw�f�4zw@0�ˈ�R�q�2\J�G��gbY��8?)�W7� ��KW�۸ 
 �'�=0U/D�<q4M�mm�7
IȘ*։�08��	�V�\A�M�z׹�b�z�rY`F�zT8�t�5HI_=�v�g�~��)�}M��$8��:^Ԣ���̃�_w���~��<�JnBd��2d�\��+s�I�8�B��GX�tB,p�np�������b���2|�~X�G�e���>���R�Qi	�)�T��ZS�ؼ�s`OR1�~���n���	�1gy�X@3���b��tYE�i>K~pMT	{ȗ2�u��y�ƞ��6��56LV�/�J�(א�`��ȭ��ӌ`a�sĞ�w�LD��+�ѳ����l)�'P3�nQGX�a��A�N�����{�0�?�:���N쟲c�H�O�D)wu?kЄ���$yݶ���*z�+�R��}�����"[
Х�kGl��z t~����E�����.
�E��C�ef��w3P�z��[bFKE<sdM�u�I�.�	�g.ȏ��^he��`�k� 'ߣq`n�5����'����uq�q�:��Ǆ�����M�����ӻG�H_�*�Of�Eh��&�J^ ���+2��4'��ֆ��6n:�:��V���v`�E!hq�[&kǽ��B�	r]2c(,��� D>����}�Jw\��Iw���dvk�w�14����-{D6���'��x���%RF$���и�;�k�>"މp��'�T���CG��(���D~�3�16��pԌd�v��¿�a)����������m�l�Rgݺ&x��b&��<5y�1�t�o��H��,�94�5�A̼�hQL�p��;N�V:�}�YΗA�<���=so!.76��,�VK���KA\{� O�)��H?h(o��K2/�}�<�I1�:��¿�<	�(��F񜵲OK���ڔ�7��q����RM�)�PUu�{�!���{�R�u=���,a��E}�I�DT[�;�"��\�{���~\�?mx	�O:�L�̨����z������ץn�-�و���ɷ� 48��.[ =@��Z��: 	Պ�wjL�K�ߨ��܍.f�a��`����L�<CآC6��ߞk���Bݲ	᭚��D�Vu�u@?��}p�f��i�9�ΖJ)�At�ɼ�{}�������䣕06����V�����#�� f���&3����/�$q��h"��7Π�L�S�o�7b[:U�^�*�5�ǈ�S"���+�LW~�"S��z��1�ɾ��v�t�t�+�Ԙ���}��D~pR7W�ea�2���P�����Tč��7B]h��\W)��g~��0��:V~jx�G�\ �$���sR}����}���ձb%��e��,d�eF"��FǰM��׷��SB�K�ؐq�P��`@=?�]ۘ��Pt}�(�?�ÓՐ��?Rҥ�a����搽RpB ��Nj�~�5�����J<h���d��*q�4r/5���R-F���7
ۣ�?����߄M:��W���� #[�'9�x�s$I�7O�p&�����J֞��r�X��Vi:����=߰��v�l���1���lC���#��
�F�%q�'~�I���r����<J����xT���'~�kC�ފG�4j�0�oY�^�1�<���W���8���v�~�8���~D�!�p&H")�&*�ƺ
[���U���HC���b�I01º���?���}���o�*����w�?'����W�*Yf}��q62�-/G������mK"�h�R��,��CX諹�vB^��5	OQ�=�q*a�8�|�zUA����d;���g��P����9�i����;'��?����lTlj�-|	�h����%���Q��ˁb$�����`���a�Z��ٷ��9�O��qb�_ye�{s�a���?�mP��`՟��V�_�¿�\��phڲg^rvJ��(��� ��������]�FQ���W�<|��5Q����mEVO�M5"�q�Ð�T#ԛ��������惯���,\I{�m��^B^L�b7wZ�k�9�M��Fn)�2�NQ�����,Ι,Hh�/�Ӡ*BC�չ����=Wa�1��j�$�(���9`��g4�}�G�c�6�!t����Z?�U�Π,a�7�E�m�}'K^��;�]��]�(���FO�
@����g%�:�q=6�4��ׇ��XHݮ�`E�Kym���z�u�u͞�ǩ��6So��i��A��k���{tg��ל�tMJ��j�A8�KRy;:�6�H��ݔ���#��T^�w������'��J������-����Qw��mudgf-^����AU�S2�hп�p*�\JL�vo��W#|=Vў�)<���5Q{<���jα�~6��nq$_y���c�˩_�{1QR<
��]כ1����o��h(,~^���[����      �   Q   x����@�޸��Bث��_G��ؑ*׭\��֌�f���}qA��83#�Y&glsY4���:���Q�<Q��{$����      �      x��]Ks�Ƒ>�~�ˮc),����%?$[�DH��~��I��@@�t�2����n�i��6�������7bw3��ʯ^_fe�#A4��$� #	eKN�Y��4���.�b�#�?������^��L�����qQ,�{�%y���T�҈(�Ei�fJ2%�"�ܗde*8CQ�DyDT�����QJTDD�Y��IU2�\�_쇺�v�O�b.J��ҥȗt�I=��z۴0:���*]��y�J��������ԍz���7�~�=����m���?K��T�_��-�
������3�J<�5�q�ׁ��<�\��YJH�'z�W]�F�(9"�	aK*��Hs� ��曨$�%�)�� 4��Ǩ(sD_r���(Y������Q����Td�]4m�e�/ˁ R��ź�l�j�쪦��2��;8�,9Ke)�-���߿�m���沍b.�~�La��۪ލIEQ�@K�')C�!�5?��n[��n��V��Q�.]f0�k��!�	���E�"�2P�e&R��$8��/TQ5��D�I5.0��z,N�ŹT�u�ɱ4��&WŁAG�s��h�붻�G)��m5?���e�`���Թh,*)�D���,"�"�n�c�&)v:��@-)I�R�EZ��$	HJ0�L7�
�OZ����H�����*�Bi��Q��2#�Z�Z�E��.�d����Ib�b�#)�jh���(�uc��ԃQ+�e�y�U]���kU�F�]���C6
{���
_첐jh�Ů���}�>��m}�-}YXθ�B�����`�E�)��(CdL�^r�����<������vqa�S��L����f����+<z���2���)x�5\T����n����{�cu�W���~ܟ��V�̯_ ��|l����h6�נ�6.wq%��0������%��K^����}�@�NŬ _$�9����v����&�����(�Y��B[`���H��
�A�	�G1郀OQd�v�� �\����(��cX�m���@��ڐ��m��4B]�Z)��k���A(�1��?�y�� ��\/���� ��@\�3��l��l���Pm���ة$J^�f�H�OR����89 ��Ǜ�.��ZJj��-��6�!�$�M.E�fBN�H`0��@=#�{�RB�4.[|Q_vI��ɶ�|�m��V�6����_�mF��QJ�]�5���Xe�^JF���f�8���H�EK�K�"�������J�ɹ``Ρ� \�:��
��5O��S��Cٜ�5N�(�Tܝ]�q`&9-���Y%l%Q�p�!
�%�C��[K�s+�6�1��(uw�z*���g���X�4���ӜS�Cᆋ��K�����0\��.��e�2n,I.�Y�r��P4gf�b���rPЀ��Ym�x�\�BB��Ĭ�6J�Gy���i���(�=)�Rz��h�:Z���F	mOi��b��M+��/��m�1Z`JZ��ڛc�RzV"R��K��M����O"�Yģ"��i�#�"������JI����ձ��']V
+̛{�Q��s49=����5�7�~�%g��-�=0#@��|�$������۪:�-D\ Xw�XO}��,$MPz"1��T,�8W�UK0_��4gS��$Σr_���!"<|�b�Qq��ce|)Й!���a�������ۘs�Ry�,ޚ(:��ovcӵ���¯������3�(�u�$K�/)���b?l����0 .}q���6Ԉ�,�'Y�/��r�hZ>dk�<��I��Q�I-o�N4q�X$�>���:��9�	�F�0�c�]�\���`�4w`x��&��`��U1[3\�˴��]}"x�30�9N��\m��z�R˛��uמ��r`�,�1�Ox�"W��������!�(a���Ps9�~~V�v���jL���0����EԖ(a:j���Pԇ�݉iυb@� z�4ڪ7L^_W��,�)4�BM�6��(~����ai�Z��ҹ-����v��-]��>G�ܗ�t���L�Y�̖�Ai�YKC-i���ٴW�I[���f�dO:��iP����~y:#mi���D�tiK���̹��5bs�����>y�6�h�k|>r�m��0�x9m�x�6�h�k�N�4���5�лX������\r:���m��0�r�#�s��\ca���:�T����L�e��W���̜��4�Y��,3g
>�l��0�J���S�f3���O0�_,̯rr�Q6�.���f��anIcB��Q��Y�,9]2	4�mVA+���p�"p�i��.�A�S�3W�@�C�g��粏�L-ܩ7#`��
̍�a��O����TM��]0��#�'2�tªe�Nal�������n�.:� W�❍��+!����iad���u�ˌ�%�h�,t@G����B�"��P���,PK1]tyG���: 6��;뉫R���PL;R���� ��Qu�XNa�W����]�1��v�xIK�'����)�D�K��?]���.��*��oƮ��s�ϒhe��2�9��Ⱥ0��䮞2eg����uݎ���:����M�p��f�x5�_!}٬&����u�����ݕ��l&м���绺���4w��:�T���3�����KR�77i�p�+ЮiV�_�7��:i���Y� ?|�q=�;�<p�7��c5����FO�E��}y��d�K�}o+0Y�￻m�	.��5B���0����ƧX�ܵ�M����}Z�$���p�߯���1~��:\#up+����nu���x\}�i5��iu���.��9O�MH�Ar��~���i{�_=�n���SQ��2��rZ]�����UA�*�)-1{��ߍ{0�����̯M}hex�����-Hsa)�A���:W� ���k��:ظ����bη������O�62�< 1'����\�+Hxc�(W���)���{�s�A˕��,h._z�V�%u���?s�qm.�ʂ�z�;bT�a#��L�]��Φ�����z�4�a��ɘz�
��%��0ʅ�I�|?��v�C��c�6�W��!C�V�CY�$r�Ѧ��ڍ�s$�(4c�ݪ�o�I���z�U��9)�f˧��t`M��n��ı\*S�#IZ����][����:��v߆^8���u��=]=SOKW�7=e����|CX�J��b���lC(]]Ϝ��-�}���f�Z<���2+������du����*\Y_��aU��]Mx�����_7�X��gVd��d�#�B_CFs���R���pU�	�̎Y|e:�\����6���+���ě�T�f���J�#xG��4���w��]�5ѳ~b�vk8��e�������y�ft��7���8XႩ�eE1�p�B�:�ط�Ov��M�ը��ʎ�b�;�\�\'�aP�>�$}$Q��nK~Q��Z�*
ڷ�!Q�|� �{���y!��ח����P���bW�X��������Up4�B{	xx��p�� ��:����>0 �>�0�/6��<�g��,��l)sQ�]������j?L��7���@�r��E-�w���2c3�h���z��~��6M��TT�O�+����H�f���X����OY2b5~��;G�����O���k����l\C�}9��O%+l��o����l��t(���8���\TC��iY��rq���j'��tnZy���7��¹�1���6��[ExGaj�S�����V�:� '�]&�U2v�e2�P"�Rw�Aw��T��R����#4��aA�w� ��0���.ǰ57G���'pxQ�0�y.�����Y��%��H�*�e�� 
�w� �4�A�A���C�k����F�a�0�V��<�"�눢��
��
�З0���s5��H�+P�!���Noe�f�4O�l� X��x\�V�<�P"DO��D��D�� ����1�d!n�$�2�c��B��8Zwdb�n�=��H��L��ͦKƽ����*����<<ӫ(^���G%��    �,D�"-�O[���!��bZ�E���O�U�,��bz�!|����x��z�BLDVB��"s�ff��c�ς	�L��s$�����_�0!R�>�QR�0!b��2$�f�BQ�L���"ju-�y˔k��'�k�3]&��-X�������Q�4{����L��p!^����E�yc!i����B�0����!^C<�'��X�,�0���sk���s��"�bmX]��)<ofv�_rk��a�K�k�U]��q}NU��X�|��崶�(�-��A�,�r!�k�R�k��6Ct�0I�.��6Fb�L��U��B��2��,�fX!�4�F�=`�O�5Q`�v3�(�n���Ug��d�oR���U!��2��YC5��
-c����2�1�;!�����~f��?�uw�~`�|E<�f��j����]�G��E'��9�.y5ՇM���Q�)��_�L�,�
_��7�X�,�8�$e�|�L����X��}TW�N�n��`(�$Kb��-����ܑE�6�KdR�d9y�!6H����H����/�E��R�F�X�bp!&k�(��O��Y��(KFY전x̦��F�B1�M�e!D]6�He���g'.�b2K�nT��C�!f��Yr�@����R�!r3���6���νupB�f�)��X���AgF�m�?�A�R�i%�A�H��L��Ob�Q�̧tt��<e�X��"�wbRD�ւ`A�w�I���S� 7���NU]_Ԗ�s�-'a..\+�'��&�[��Z�V�Sg�9���
s�p�L�Pe�4�-����AinX�5Ӝ#s�%g��F�o�0 413N��#�]�)�A#}3wY⮜_0�7s�e!��4o6F,��}����!��9�	}�=bY���d&e`��D�� aL}�AbY�����}%����)��2����W�>��VI3$C��m�z��bƉ?�Iw��W�>��$U�N�î�Q��i��a��	�U5$�u�*٩ȿ ��U��k�_�=T��*���Ȳ�,���M��M�ݶ�P��sX�&�@�����a�/�ȣnF�&��O����	X��bn8u���j���a�y]��b�B�~�C�;A�i_[�N+�b$`,0_�Yi	����	X�i���!ŒJ�h�m��\���猳0���x2����n
��יs�9��	�{hm'0�г\���eSvV��~����3��o���f���o��9����W1��ZnB�f���΢<�~�&�n%���Ҹv�0j���9-U����l����������0��	�ؔ�u>D=�3/�܌M��|pꈙL1n���	�I1��?�Uu��91%��2e�XXNN9/O�}�xPn��O9�KP�~�CD\0
���bT�
�|z&o%�;
��"R�&����B\in7������ǔ7YM6�r������f�cL��+�ݒ���**��P��ŔL�����q�D��%���d�l��=)J̣7��Q�#�,�ҏBy����>/��Q�c���ӳ�a�Xڥ���lJ�Q.ת�ɇ5\1�̥�b�����<8�:��K'�:��g	`��j�.xm�Ȼt�_ �Q������e��k_�91�<刦�g�e�xuV�*�����7��~Gpy%�ʦD�s��֍�㾮�����<��)�c-������E�.�J'``\�	�OKFZ3������3��H\�	���8�3o��OxFU6� �g���o�U���]�3A`K�ʜ->����*XN\�_=��k���~�t�o8h�"���fS	�u!�W?����{�98D].���!�gc��Y�sG�gx�%��,�`��n}8��.|H̾����$�< [/m�~b�#
�~�7OB<R��n�l.��^�>��4UuI�.�RaeSf�wYW��uq�4����~�щ�.t��NЩ���t#�mљ��c� ���ѹ����¼�z���X5­F=�)�g�b�U���P��7漢©��m��W���^��޸jn8Mob�Q5���P������d�%�\-�7S����m5�t��	m1�_yFB�XM�Fc�
y|��kr�������Z����B}�F�V���s��O�	�qU��s�f%}��bI/X�<WgO\�����s5I9+���ъ���\}/�$�|��u����apC�|��Y���w�^v#&�[��&��$�֯�d�
�
t���}�nBm�w���I�֠��iY1b蹏�oY�|ztx
��z���H�����mr�m:|E��߭ϛ��#���'����Y���t*�G�,��EK�T?�N�� 1�^ Ww�az�����:�[�To�t�(P�)%ȇ�����L����뿮����ʳ̯��N���k�jsMS",���/���I^l��j�'X�y�rM����Ĕ��Ew�
��r$�����]��o�W�k$��`b��I���T��uk�u��I.�v|Sx�ZV�p�7��D�}{�����Z&q�����O���F�5Z�̦Ok�~ajs�݈��w=N�n5���*T�$a��êV�������#3����(~G��H�/�Q��¢Z�w�B�s��U2��ӓ?�X@��-R��bU��7r&�U�RX���!0���"����".��Gn�I�f�i��W��e}լ���~�4#8A���f��?������ϒM��ɶI�՟�-�X��fPR�Uݮ���v��U� �v-�l�4y�W��Ij��h��g��:V���o�u2��]3$Զ�?_6cU�|�ـx������[w��ձǮ���>��Λsh�~��k�d�v�]뱁� �i�adF����f���5�~�gg�7{h���j��X�p���e�u��J���euٌ#��f�%� `p��F��Cz쉫��'f� v��yY�̘*U�B9K0�ΔkG�E���T;p�����c��2�}��x��K(j(2t�M�j�����w]�&�Ab��7J�`J`F���Bg��g�¦�`^6�_��h�=�س)��&ɛ\|���ƺ��>SI"*��Z��EF�`pX��&��I}Y�3u7�J��4�cӮ��~^���]�I����!��Թ�_�}<8��F��1����i�qw�gڨJ/hr��ŏ�~}�+��jl�dJ��g��WHMz�l��v��n��W���r��?��ry�·��bb
 \4�0��
@`t�����ܘ�'@^�@��B��oa	\�>�[��X��5ɛ����Q��//���h`���k��3�J)����R7ʳ�*�t�l�i�f�ܿ������ݿg�{}u�u��duu8��n�N��Ar�ލ�-��!�, ��r��t��k�o*�_���5GyZ�(�� |�F��Y�z�{���v������_0��L�/T?�_��у�o�(��5��i�?�_%�SHQ���6�[�
�L�8~-<�����U[�bcѤ�Ĝ��
fh��H��l���n�h���X�N/6��8����W���e��h�BT~�]�$C�:�I��`>�q��Ww���r��#��ނ����=�5t����-vR%t�;�0w�j.���Ļ[p�4��D\�p_bF�i��>K�j�������Mlb���}�L�������O��Z�`��q�+=
�Uнn�hM�\c-��n,��P�"l�!���x��T����"<�z++����������AtlOW+���wѧ#��d����Օe>+ �ff����`x�7�.�~��Cq�Cu�L{P�sr��h_u�	��|�F�a���0u՛:�(Q�O^O�-x�g���3�V&q�|�z���..������t,mr����ʣ@(��ל�B�.����kys�]�e�.]�~j*�]ƙ���Q��}�K+����>�~�Z�mz"��/��B��\ߦ� �8����__� �����<�S��I�N#_����)>-SZ>��`a��l�&1{������N��+���,���H��곒�	7x�?�����     i��      �   �   x�ePKn� ]ۇ���n�0H��r��I���1�>r�!�@s�-�ޞP�s�e���.��i]����Mcm�$� / ���m�+<t	�"o��KΚ��
�:�h��Y���R"^��G�h�N��:�a��z�C>��}�����x����ʎ%w`
Q���A�2�Dh��l��ٙq��P��X?�?�W���5Ȫ�xC�/����      �   $  x����n�0��ݧ���@��S�e��%nj̇Lv���GK��:*��8A�����ī��Ou?M�S=V�1��V� ��~�����&vL	��OOP�����Z(��BT��5��� ���p�p�@�Յ�.�����w�61Pyg�;�t��f��k�n�64{r��B)d�GU>LG߶u�n�A:���+��I�8� SDp-Q�4�
!�}���bF�?�<5���?�e�A�|fq�����X�%8_Q�:+Ĳ1�$�b��ܡC(�Yk��Jo��m�|�`-O]�q%��R���"CXЩ�����,��V�C\��c�Ldy,/_u'�"1�s,�
�D�~��%�n~�z�}�fƤ�L���Di���5�8��:��ں?ҿ6X6�ču�Qw�i���1��̏�p��G�$���d�~����Pn�<q�����߿�&d���nvm�!2C�����m7�1�:�!��G�r^wf�)Z�a�D�ӆ�I����D�m��:��|�F��8�@gw��<��)��EC~aϝa��T����@��
�@��:�mQ�ii�H�%�$�0���}Qhy���Y��ãZ����d���� 59)hQ������qr�&	f��(�d�E5��朐U�f�"w��7����*������4�HL甎�z)^��z/Rr'9J��c� �n������:l�,����%�h^�3'<�{.�i5�D^��،S��-i{]�V�#�A
��be��Ak���@�z����6�f
Z����~힞����      �   
  x��Z]o�8}nE�5H��D��֎��HF�J\	��o�-Y���+��Lw�����ĉ�:<�sI".�>sU�IIG-/Z�c�����qx�#vU�Y�{�JwtϮ�������%����R^v�ٙ�{�m�,mUǒg�������Ϗ�~�O�q:�c��<��%�g�K��g��ά8�*�u�h�]�Cpy���w?�"��v]83; �e��\ҕ�|������=p���3ɲ���=�i*W=M��,�Ë���䪏�;?��<�t���,f9�d����.���w���Ch��-%S�~C�=�aLh*0�85��K��u�}CS���? ��h[flߘ�pm��A(2e�5+4��u�.�h���RO��;���PJow�l�p�E,�89{f�#���u~��N��W�p�-=�~μ���	�}~̼]Yx��;Oz"*��Cf\��u_��L���[t��o��'fԨ<5M4��r��C؎�$��8ky��Ϯ㕖H����E�z,���h��p�G`�K]�� ^�� ;�Z���ݓ����=?Q���K�+���S(K0�[gx�PX�e��q�T�V�[�6��q$kD_�(�%�K):DZ��/yw���L> ��8ķX�pF�y �Vʪ3��/�j����y�cY�V����8��EƆ2}�`i��Ԙi�i��yY]¾*sQ��������t~�,UP������۽f�s�ٻ�,��NN$,�B����p��y�ɿmQL�X��q��#Ti[X��dk�׮S `&��qP�0�R�*�x5n0�c[\�K�Dff3�,�;��Ȩn�[����20�s�f�I��x�"�hz�sU�b	}o5n�* R��-��хq~Q���/:IZ�A�T�d߱�����@ol�����&�:x�iwO\���.�֮�=	L6\�q�?#���/0��@`B��Q����-���TG(3{d�' �i>�3}o��-�5��U��D�QX�AC�YL�0KFT�2d�;�<��Ëf������;�S�k�=��ᔽ+A�/��y����!p�O���>���+2�iwĶx�A��'�dk��d�b��#��{����8�!:^�xqm��K�.�D��~�&�e\ϗ�9��`��֖��VsZ���T5�>�����)k&�~�ƭ�}���%�3��Z��&c!�f5bb@h�efXh�AF�ne�8�wi��ࢨ�c7��hjpCӵZ�C��8�TU@�Z5W�+��!NN��Σt�{l<mu�� �����������g�����>��|��gv	f&�P(��w� ��߮���;g�7}��NH�~��u2v��%�Ξ��%�����Ρ?�>6�=�5s�E��cD��<�/�*�*�����[L7H_pT��"�<E�F
��L�n��G�U�g�)���ϋ��R{e)0p����8iQ���q������-�Uw �uT��#P� ��gP�_AQ�H��l�{x�/��N��.�c��Η�ƗךO%i�6�I���T�ӡ����׎�,1|�j���9H��j��iD*���"��f|+q�7������W��	�\�d�5����n���'·�R�t+qK�C|��W�p���xˎ� +��j�L�D���%m"��ހͭ�m��2.�
t�T���I{UsW�,hT1�����T��4K����帬M�ʔ]'�dj}��BFQKkE�[�[��K�cx�*Y��C��Q�A��i�ZQ>��h҉62Ux��k�`.���4��
�jfPh���I07W�vÔͷ4��A����d����!��~Ã�#�Q��Q;����eL}��������s��&.�(uY6u=v��K�	k��T��K�eWbա�_�o���l$Y��>B'��2�Ø��������_h�Hu5պ��0PS�9�+-
�F��]+����F8Ö��FV�]G�F�	6뢌U�Gi��Ƶвks��j�[�JW�����q�1�؜�KDB?R4Ŵ���K���߀�rr[��R���6]5u7������I	Yf|nb&����a��2�E%o���
\��H�."��&��Ƣ��颥�6�1߀��9�&U�6H_���5���C��� �HɥmQ>ţ�h�˛Û��us���z�K�Z�ƱCi h;&!˫y��B���o��[ fk��[�7:Zy���α1�1��c�vJ��:���3tcܗU%�օsm��5��fk����g���3)e`*9�tf��ո/���pdc�U�|���4MJ�4�}@g�*�9I��:��1�G�p�2n4}E�!ªe���������N/3�n��;[���v���{gt����,�v�ݏ����ᡰ����� �ϩq�l�I�c� ҕ��%��v�Y�V��l�H�i�϶��q����43�U�82i}0gW�S�,4�)��Y�_���_��}k���7���v b6F�ؿfZ�LA�Df&Ƭ��ˤG��U��^��o4s�r�l�ib�$`�P�~�3C��u8FܼmGݎ&[�m1��גH��y���� �߄$      �   �  x�mT�j$7>�<E=�0KHrً	��!6�A���V�Zj$5B}41�Ə�o�~�|����Y<�n��������ƥr�Au���ˬ�S�ǲ�[�yZ�z��G�x�#����[
~���|������o9&�_�o4����oQ/��|����͐�����kg���)N&D���gu�FLso��;>;�'���0]j� ��b��Y�~OCzz���^p�f�J/���G���WF=�Ja1m�^`8�̪˞������D�☟z��!k�]��@�
GR���[3�;���|��bP�Na�ʡ�Q�L|�Gޱ���tj����? ���YWRͧ�����qR�cY������4���]r~����>T��� ���tl,�J����Ie#��."�T���@w��ѽ�wZ�3�k�z���).�f������P5����Mre�\Z̈|PR��h^�ɬ7p��t��\ߚN�����V�7"�{��ǰP�yz�rI n���b�ڧ�/�Ӓ6�O����w��dkƄA2�A�V�� �>
c͈H
օ#����Š�Aă�Z��CL@��o��ڠ�*��=�j$�v��L+�/A��B�T	���Z�9��6�L	^�%��ZNY�M#F���g���2]��1L��Y����֩N�BA8П>�n1W*N�Jy������,�u8߾�<��"��͵�qGĭ>�B���~I��� �ӡ�{t�4��hX,i����%cS0�f�$T��Q��$,j>�*Z}/\�^�d��8l�E}�-�.g6����dW�_ʐ�����2Y}�oIF�������E2c�y������i:��:w����˶�z��JK���ϥ����v�8��a���'i�      �   �  x�URˊ�P]'_�����B-�¬
E�V��=��G�3a������e��Y/N�ؙ*T�|���\�;Ж3'6��O0��'�T��W�s�)p�ՉU���� ��B&�u�]��P6�B���$�)yQ���w�J�u��h2�݉g�����U3_�}�2��7�DU�<�4 ���`A�p�x�nh4�+/XbT[��n�];EZU�0\Ԣ�Mα���M���\qö����a倥e��S�M��ޣ-��D����m�:��W� 5=G���O�3��$\g�yu=�-�\�gL$h���p��>�*zo����)nb��[ƸC�|ؽ��f]����u8�����!�r|�pU�Y�l+8�K;q���߾^/����	���|�v�g������     