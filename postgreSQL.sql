PGDMP     ,    +            
    {         	   auth_user    15.0    15.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16433 	   auth_user    DATABASE     }   CREATE DATABASE auth_user WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE auth_user;
                postgres    false            �            1259    16442 	   auth_user    TABLE        CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    login text NOT NULL,
    password text NOT NULL,
    email text
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16441    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    215            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    214            e           2604    16445    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    16442 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, login, password, email) FROM stdin;
    public          postgres    false    215   �
       �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 26, true);
          public          postgres    false    214            g           2606    16449    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    215            �   X   x�3�-N-2�H,..�/J1���2�4�b������R.cNcN$�	�g�ķ�4�4�4��L9-8-9Mf�� d����� 	�L     