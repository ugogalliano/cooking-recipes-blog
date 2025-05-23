PGDMP     #                    }           food-strapi-db    12.0    15.3 u   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    food-strapi-db    DATABASE     {   CREATE DATABASE "food-strapi-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
     DROP DATABASE "food-strapi-db";
                admin-food-strapi-db    false            �            1259    16849    admin_permissions    TABLE     �  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.admin_permissions;
       public         heap    admin-food-strapi-db    false            �            1259    16847    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          admin-food-strapi-db    false    255            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          admin-food-strapi-db    false    254            #           1259    17162    admin_permissions_role_lnk    TABLE     �   CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 .   DROP TABLE public.admin_permissions_role_lnk;
       public         heap    admin-food-strapi-db    false            "           1259    17160 !   admin_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.admin_permissions_role_lnk_id_seq;
       public          admin-food-strapi-db    false    291            �           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;
          public          admin-food-strapi-db    false    290                       1259    16877    admin_roles    TABLE     �  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_roles;
       public         heap    admin-food-strapi-db    false                       1259    16875    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          admin-food-strapi-db    false    259            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          admin-food-strapi-db    false    258            %           1259    17175    admin_users_roles_lnk    TABLE     �   CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);
 )   DROP TABLE public.admin_users_roles_lnk;
       public         heap    admin-food-strapi-db    false            $           1259    17173    admin_users_roles_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.admin_users_roles_lnk_id_seq;
       public          admin-food-strapi-db    false    293            �           0    0    admin_users_roles_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;
          public          admin-food-strapi-db    false    292            7           1259    58678 
   categories    TABLE     �  CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.categories;
       public         heap    admin-food-strapi-db    false            6           1259    58676    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          admin-food-strapi-db    false    311            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          admin-food-strapi-db    false    310            /           1259    34063     components_explore_explore_items    TABLE     t   CREATE TABLE public.components_explore_explore_items (
    id integer NOT NULL,
    title character varying(255)
);
 4   DROP TABLE public.components_explore_explore_items;
       public         heap    admin-food-strapi-db    false            .           1259    34061 '   components_explore_explore_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_explore_explore_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_explore_explore_items_id_seq;
       public          admin-food-strapi-db    false    303            �           0    0 '   components_explore_explore_items_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_explore_explore_items_id_seq OWNED BY public.components_explore_explore_items.id;
          public          admin-food-strapi-db    false    302            �            1259    16387 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    admin-food-strapi-db    false            �            1259    16385    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          admin-food-strapi-db    false    203            �           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          admin-food-strapi-db    false    202            -           1259    33999    explore_sections    TABLE     �  CREATE TABLE public.explore_sections (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.explore_sections;
       public         heap    admin-food-strapi-db    false            1           1259    34073    explore_sections_cmps    TABLE     �   CREATE TABLE public.explore_sections_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 )   DROP TABLE public.explore_sections_cmps;
       public         heap    admin-food-strapi-db    false            0           1259    34071    explore_sections_cmps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.explore_sections_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.explore_sections_cmps_id_seq;
       public          admin-food-strapi-db    false    305            �           0    0    explore_sections_cmps_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.explore_sections_cmps_id_seq OWNED BY public.explore_sections_cmps.id;
          public          admin-food-strapi-db    false    304            ,           1259    33997    explore_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.explore_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.explore_sections_id_seq;
       public          admin-food-strapi-db    false    301            �           0    0    explore_sections_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.explore_sections_id_seq OWNED BY public.explore_sections.id;
          public          admin-food-strapi-db    false    300            3           1259    42306    feature_sections    TABLE     t  CREATE TABLE public.feature_sections (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.feature_sections;
       public         heap    admin-food-strapi-db    false            2           1259    42304    feature_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feature_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.feature_sections_id_seq;
       public          admin-food-strapi-db    false    307            �           0    0    feature_sections_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.feature_sections_id_seq OWNED BY public.feature_sections.id;
          public          admin-food-strapi-db    false    306            5           1259    42320    feature_sections_recipes_lnk    TABLE     �   CREATE TABLE public.feature_sections_recipes_lnk (
    id integer NOT NULL,
    feature_section_id integer,
    recipe_id integer,
    recipe_ord double precision
);
 0   DROP TABLE public.feature_sections_recipes_lnk;
       public         heap    admin-food-strapi-db    false            4           1259    42318 #   feature_sections_recipes_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feature_sections_recipes_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.feature_sections_recipes_lnk_id_seq;
       public          admin-food-strapi-db    false    309            �           0    0 #   feature_sections_recipes_lnk_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.feature_sections_recipes_lnk_id_seq OWNED BY public.feature_sections_recipes_lnk.id;
          public          admin-food-strapi-db    false    308            �            1259    16581    files    TABLE       CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.files;
       public         heap    admin-food-strapi-db    false                       1259    17033    files_folder_lnk    TABLE     �   CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);
 $   DROP TABLE public.files_folder_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17031    files_folder_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.files_folder_lnk_id_seq;
       public          admin-food-strapi-db    false    275            �           0    0    files_folder_lnk_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;
          public          admin-food-strapi-db    false    274            �            1259    16579    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          admin-food-strapi-db    false    235            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          admin-food-strapi-db    false    234                       1259    17019    files_related_mph    TABLE     �   CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.files_related_mph;
       public         heap    admin-food-strapi-db    false                       1259    17017    files_related_mph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.files_related_mph_id_seq;
       public          admin-food-strapi-db    false    273            �           0    0    files_related_mph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;
          public          admin-food-strapi-db    false    272            +           1259    17615    hero_sections    TABLE     �  CREATE TABLE public.hero_sections (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    button_text character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 !   DROP TABLE public.hero_sections;
       public         heap    admin-food-strapi-db    false            *           1259    17613    hero_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hero_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hero_sections_id_seq;
       public          admin-food-strapi-db    false    299            �           0    0    hero_sections_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hero_sections_id_seq OWNED BY public.hero_sections.id;
          public          admin-food-strapi-db    false    298            �            1259    16619    i18n_locale    TABLE     �  CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.i18n_locale;
       public         heap    admin-food-strapi-db    false            �            1259    16617    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          admin-food-strapi-db    false    239            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          admin-food-strapi-db    false    238            �            1259    16523    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    admin-food-strapi-db    false            �            1259    16521    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          admin-food-strapi-db    false    225            �           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          admin-food-strapi-db    false    224            �            1259    16539    recipes    TABLE     /  CREATE TABLE public.recipes (
    id integer NOT NULL,
    id_recipe character varying(255),
    description text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    document_id character varying(255),
    title character varying(255),
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    serves integer,
    "time" character varying(255),
    difficulty character varying(255)
);
    DROP TABLE public.recipes;
       public         heap    admin-food-strapi-db    false            9           1259    58729    recipes_category_lnk    TABLE     �   CREATE TABLE public.recipes_category_lnk (
    id integer NOT NULL,
    recipe_id integer,
    category_id integer,
    recipe_ord double precision
);
 (   DROP TABLE public.recipes_category_lnk;
       public         heap    admin-food-strapi-db    false            8           1259    58727    recipes_category_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recipes_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.recipes_category_lnk_id_seq;
       public          admin-food-strapi-db    false    313            �           0    0    recipes_category_lnk_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.recipes_category_lnk_id_seq OWNED BY public.recipes_category_lnk.id;
          public          admin-food-strapi-db    false    312            �            1259    16537    recipes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.recipes_id_seq;
       public          admin-food-strapi-db    false    227            �           0    0    recipes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;
          public          admin-food-strapi-db    false    226            ;           1259    58754    recipes_sections    TABLE     �  CREATE TABLE public.recipes_sections (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.recipes_sections;
       public         heap    admin-food-strapi-db    false            =           1259    58768    recipes_sections_categories_lnk    TABLE     �   CREATE TABLE public.recipes_sections_categories_lnk (
    id integer NOT NULL,
    recipes_section_id integer,
    category_id integer,
    category_ord double precision
);
 3   DROP TABLE public.recipes_sections_categories_lnk;
       public         heap    admin-food-strapi-db    false            <           1259    58766 &   recipes_sections_categories_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recipes_sections_categories_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.recipes_sections_categories_lnk_id_seq;
       public          admin-food-strapi-db    false    317            �           0    0 &   recipes_sections_categories_lnk_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.recipes_sections_categories_lnk_id_seq OWNED BY public.recipes_sections_categories_lnk.id;
          public          admin-food-strapi-db    false    316            :           1259    58752    recipes_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recipes_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.recipes_sections_id_seq;
       public          admin-food-strapi-db    false    315            �           0    0    recipes_sections_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.recipes_sections_id_seq OWNED BY public.recipes_sections.id;
          public          admin-food-strapi-db    false    314            �            1259    16439    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    admin-food-strapi-db    false            �            1259    16437    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          admin-food-strapi-db    false    211            �           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          admin-food-strapi-db    false    210                       1259    16905    strapi_api_token_permissions    TABLE     �  CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    admin-food-strapi-db    false                       1259    16903 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          admin-food-strapi-db    false    263            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          admin-food-strapi-db    false    262            '           1259    17189 &   strapi_api_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);
 :   DROP TABLE public.strapi_api_token_permissions_token_lnk;
       public         heap    admin-food-strapi-db    false            &           1259    17187 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq;
       public          admin-food-strapi-db    false    295            �           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;
          public          admin-food-strapi-db    false    294                       1259    16891    strapi_api_tokens    TABLE     Y  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    admin-food-strapi-db    false                       1259    16889    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          admin-food-strapi-db    false    261            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          admin-food-strapi-db    false    260                       1259    16996    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    admin-food-strapi-db    false                       1259    16994 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          admin-food-strapi-db    false    269            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          admin-food-strapi-db    false    268            �            1259    16570    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    admin-food-strapi-db    false            �            1259    16568    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          admin-food-strapi-db    false    233            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          admin-food-strapi-db    false    232                       1259    17007    strapi_history_versions    TABLE     ]  CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);
 +   DROP TABLE public.strapi_history_versions;
       public         heap    admin-food-strapi-db    false                       1259    17005    strapi_history_versions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_history_versions_id_seq;
       public          admin-food-strapi-db    false    271            �           0    0    strapi_history_versions_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;
          public          admin-food-strapi-db    false    270            �            1259    16557    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    admin-food-strapi-db    false            �            1259    16552    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          admin-food-strapi-db    false    231            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          admin-food-strapi-db    false    228            �            1259    16556    strapi_migrations_internal    TABLE     �   CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 .   DROP TABLE public.strapi_migrations_internal;
       public         heap    admin-food-strapi-db    false            �            1259    16554 !   strapi_migrations_internal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_migrations_internal_id_seq;
       public          admin-food-strapi-db    false    230            �           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;
          public          admin-food-strapi-db    false    229            �            1259    16409    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    admin-food-strapi-db    false            �            1259    16407    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          admin-food-strapi-db    false    207            �           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          admin-food-strapi-db    false    206            �            1259    16647    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap    admin-food-strapi-db    false            �            1259    16645    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          admin-food-strapi-db    false    243            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          admin-food-strapi-db    false    242                       1259    17059 "   strapi_release_actions_release_lnk    TABLE     �   CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);
 6   DROP TABLE public.strapi_release_actions_release_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17057 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.strapi_release_actions_release_lnk_id_seq;
       public          admin-food-strapi-db    false    279            �           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;
          public          admin-food-strapi-db    false    278            �            1259    16633    strapi_releases    TABLE       CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 #   DROP TABLE public.strapi_releases;
       public         heap    admin-food-strapi-db    false            �            1259    16631    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          admin-food-strapi-db    false    241            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          admin-food-strapi-db    false    240            �            1259    16422    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    admin-food-strapi-db    false            �            1259    16420    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          admin-food-strapi-db    false    209            �           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          admin-food-strapi-db    false    208                       1259    16933 !   strapi_transfer_token_permissions    TABLE     �  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    admin-food-strapi-db    false            
           1259    16931 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          admin-food-strapi-db    false    267            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          admin-food-strapi-db    false    266            )           1259    17202 +   strapi_transfer_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);
 ?   DROP TABLE public.strapi_transfer_token_permissions_token_lnk;
       public         heap    admin-food-strapi-db    false            (           1259    17200 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq;
       public          admin-food-strapi-db    false    297            �           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;
          public          admin-food-strapi-db    false    296            	           1259    16919    strapi_transfer_tokens    TABLE     =  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    admin-food-strapi-db    false                       1259    16917    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          admin-food-strapi-db    false    265            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          admin-food-strapi-db    false    264            �            1259    16452    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    admin-food-strapi-db    false            �            1259    16450    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          admin-food-strapi-db    false    213            �           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          admin-food-strapi-db    false    212            �            1259    16398    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    admin-food-strapi-db    false            �            1259    16396    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          admin-food-strapi-db    false    205            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          admin-food-strapi-db    false    204            �            1259    16661    strapi_workflows    TABLE     �  CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.strapi_workflows;
       public         heap    admin-food-strapi-db    false            �            1259    16659    strapi_workflows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.strapi_workflows_id_seq;
       public          admin-food-strapi-db    false    245            �           0    0    strapi_workflows_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;
          public          admin-food-strapi-db    false    244                       1259    17072 .   strapi_workflows_stage_required_to_publish_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);
 B   DROP TABLE public.strapi_workflows_stage_required_to_publish_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17070 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
       public          admin-food-strapi-db    false    281            �           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;
          public          admin-food-strapi-db    false    280            �            1259    16675    strapi_workflows_stages    TABLE     �  CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 +   DROP TABLE public.strapi_workflows_stages;
       public         heap    admin-food-strapi-db    false            �            1259    16673    strapi_workflows_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_workflows_stages_id_seq;
       public          admin-food-strapi-db    false    247            �           0    0    strapi_workflows_stages_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;
          public          admin-food-strapi-db    false    246                       1259    17097 '   strapi_workflows_stages_permissions_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);
 ;   DROP TABLE public.strapi_workflows_stages_permissions_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17095 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq;
       public          admin-food-strapi-db    false    285            �           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;
          public          admin-food-strapi-db    false    284                       1259    17084 $   strapi_workflows_stages_workflow_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);
 8   DROP TABLE public.strapi_workflows_stages_workflow_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17082 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq;
       public          admin-food-strapi-db    false    283            �           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;
          public          admin-food-strapi-db    false    282            �            1259    16689    up_permissions    TABLE     s  CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.up_permissions;
       public         heap    admin-food-strapi-db    false            �            1259    16687    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          admin-food-strapi-db    false    249            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          admin-food-strapi-db    false    248                       1259    17110    up_permissions_role_lnk    TABLE     �   CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 +   DROP TABLE public.up_permissions_role_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17108    up_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.up_permissions_role_lnk_id_seq;
       public          admin-food-strapi-db    false    287            �           0    0    up_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;
          public          admin-food-strapi-db    false    286            �            1259    16703    up_roles    TABLE     �  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_roles;
       public         heap    admin-food-strapi-db    false            �            1259    16701    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          admin-food-strapi-db    false    251                        0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          admin-food-strapi-db    false    250            �            1259    16717    up_users    TABLE     g  CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_users;
       public         heap    admin-food-strapi-db    false            �            1259    16715    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          admin-food-strapi-db    false    253                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          admin-food-strapi-db    false    252            !           1259    17123    up_users_role_lnk    TABLE     �   CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);
 %   DROP TABLE public.up_users_role_lnk;
       public         heap    admin-food-strapi-db    false                        1259    17121    up_users_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.up_users_role_lnk_id_seq;
       public          admin-food-strapi-db    false    289                       0    0    up_users_role_lnk_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;
          public          admin-food-strapi-db    false    288            �            1259    16499    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    admin-food-strapi-db    false            �            1259    16497    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          admin-food-strapi-db    false    221                       0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          admin-food-strapi-db    false    220            �            1259    16512    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    admin-food-strapi-db    false            �            1259    16510    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          admin-food-strapi-db    false    223                       0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          admin-food-strapi-db    false    222            �            1259    16601    upload_folders    TABLE     �  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.upload_folders;
       public         heap    admin-food-strapi-db    false            �            1259    16599    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          admin-food-strapi-db    false    237                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          admin-food-strapi-db    false    236                       1259    17046    upload_folders_parent_lnk    TABLE     �   CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);
 -   DROP TABLE public.upload_folders_parent_lnk;
       public         heap    admin-food-strapi-db    false                       1259    17044     upload_folders_parent_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.upload_folders_parent_lnk_id_seq;
       public          admin-food-strapi-db    false    277                       0    0     upload_folders_parent_lnk_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;
          public          admin-food-strapi-db    false    276            �            1259    16460    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    admin-food-strapi-db    false            �            1259    16458 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          admin-food-strapi-db    false    215                       0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          admin-food-strapi-db    false    214            �            1259    16471    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    admin-food-strapi-db    false            �            1259    16469    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          admin-food-strapi-db    false    217                       0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          admin-food-strapi-db    false    216            �            1259    16484    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    admin-food-strapi-db    false            �            1259    16482    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          admin-food-strapi-db    false    219            	           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          admin-food-strapi-db    false    218            O           2604    16852    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    254    255    255            `           2604    17165    admin_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);
 L   ALTER TABLE public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    291    290    291            P           2604    16880    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    258    259    259            a           2604    17178    admin_users_roles_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);
 G   ALTER TABLE public.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    292    293    293            j           2604    58681    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    311    310    311            f           2604    34066 #   components_explore_explore_items id    DEFAULT     �   ALTER TABLE ONLY public.components_explore_explore_items ALTER COLUMN id SET DEFAULT nextval('public.components_explore_explore_items_id_seq'::regclass);
 R   ALTER TABLE public.components_explore_explore_items ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    302    303    303            +           2604    16390    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    203    202    203            e           2604    34002    explore_sections id    DEFAULT     z   ALTER TABLE ONLY public.explore_sections ALTER COLUMN id SET DEFAULT nextval('public.explore_sections_id_seq'::regclass);
 B   ALTER TABLE public.explore_sections ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    300    301    301            g           2604    34076    explore_sections_cmps id    DEFAULT     �   ALTER TABLE ONLY public.explore_sections_cmps ALTER COLUMN id SET DEFAULT nextval('public.explore_sections_cmps_id_seq'::regclass);
 G   ALTER TABLE public.explore_sections_cmps ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    304    305    305            h           2604    42309    feature_sections id    DEFAULT     z   ALTER TABLE ONLY public.feature_sections ALTER COLUMN id SET DEFAULT nextval('public.feature_sections_id_seq'::regclass);
 B   ALTER TABLE public.feature_sections ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    307    306    307            i           2604    42323    feature_sections_recipes_lnk id    DEFAULT     �   ALTER TABLE ONLY public.feature_sections_recipes_lnk ALTER COLUMN id SET DEFAULT nextval('public.feature_sections_recipes_lnk_id_seq'::regclass);
 N   ALTER TABLE public.feature_sections_recipes_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    308    309    309            E           2604    16584    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    235    234    235            X           2604    17036    files_folder_lnk id    DEFAULT     z   ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);
 B   ALTER TABLE public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    274    275    275            W           2604    17022    files_related_mph id    DEFAULT     |   ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);
 C   ALTER TABLE public.files_related_mph ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    272    273    273            d           2604    17618    hero_sections id    DEFAULT     t   ALTER TABLE ONLY public.hero_sections ALTER COLUMN id SET DEFAULT nextval('public.hero_sections_id_seq'::regclass);
 ?   ALTER TABLE public.hero_sections ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    298    299    299            G           2604    16622    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    238    239    239            >           2604    16526    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    224    225    225            A           2604    16542 
   recipes id    DEFAULT     h   ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);
 9   ALTER TABLE public.recipes ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    226    227    227            k           2604    58732    recipes_category_lnk id    DEFAULT     �   ALTER TABLE ONLY public.recipes_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.recipes_category_lnk_id_seq'::regclass);
 F   ALTER TABLE public.recipes_category_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    312    313    313            l           2604    58757    recipes_sections id    DEFAULT     z   ALTER TABLE ONLY public.recipes_sections ALTER COLUMN id SET DEFAULT nextval('public.recipes_sections_id_seq'::regclass);
 B   ALTER TABLE public.recipes_sections ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    315    314    315            m           2604    58771 "   recipes_sections_categories_lnk id    DEFAULT     �   ALTER TABLE ONLY public.recipes_sections_categories_lnk ALTER COLUMN id SET DEFAULT nextval('public.recipes_sections_categories_lnk_id_seq'::regclass);
 Q   ALTER TABLE public.recipes_sections_categories_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    317    316    317            3           2604    16442    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    211    210    211            R           2604    16908    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    263    262    263            b           2604    17192 )   strapi_api_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);
 X   ALTER TABLE public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    295    294    295            Q           2604    16894    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    260    261    261            U           2604    16999    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    268    269    269            D           2604    16573    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    232    233    233            V           2604    17010    strapi_history_versions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);
 I   ALTER TABLE public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    270    271    271            C           2604    16563    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    228    231    231            B           2604    16562    strapi_migrations_internal id    DEFAULT     �   ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);
 L   ALTER TABLE public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    229    230    230            -           2604    16412    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    207    206    207            I           2604    16650    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    243    242    243            Z           2604    17062 %   strapi_release_actions_release_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);
 T   ALTER TABLE public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    278    279    279            H           2604    16636    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    241    240    241            0           2604    16425    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    209    208    209            T           2604    16936 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    267    266    267            c           2604    17205 .   strapi_transfer_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);
 ]   ALTER TABLE public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    297    296    297            S           2604    16922    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    265    264    265            4           2604    16455    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    212    213    213            ,           2604    16401    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    204    205    205            J           2604    16664    strapi_workflows id    DEFAULT     z   ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);
 B   ALTER TABLE public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    244    245    245            [           2604    17075 1   strapi_workflows_stage_required_to_publish_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);
 `   ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    280    281    281            K           2604    16678    strapi_workflows_stages id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);
 I   ALTER TABLE public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    246    247    247            ]           2604    17100 *   strapi_workflows_stages_permissions_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);
 Y   ALTER TABLE public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    284    285    285            \           2604    17087 '   strapi_workflows_stages_workflow_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);
 V   ALTER TABLE public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    282    283    283            L           2604    16692    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    249    248    249            ^           2604    17113    up_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);
 I   ALTER TABLE public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    287    286    287            M           2604    16706    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    250    251    251            N           2604    16720    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    253    252    253            _           2604    17126    up_users_role_lnk id    DEFAULT     |   ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);
 C   ALTER TABLE public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    289    288    289            :           2604    16502    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    221    220    221            =           2604    16515    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    223    222    223            F           2604    16604    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    236    237    237            Y           2604    17049    upload_folders_parent_lnk id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);
 K   ALTER TABLE public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    276    277    277            5           2604    16463    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    214    215    215            6           2604    16474    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    216    217    217            7           2604    16487    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          admin-food-strapi-db    false    219    218    219            �          0    16849    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    255   ��      �          0    17162    admin_permissions_role_lnk 
   TABLE DATA           `   COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public          admin-food-strapi-db    false    291   ��      �          0    16877    admin_roles 
   TABLE DATA           �   COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    259   �      �          0    17175    admin_users_roles_lnk 
   TABLE DATA           Y   COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
    public          admin-food-strapi-db    false    293   �      �          0    58678 
   categories 
   TABLE DATA           �   COPY public.categories (id, document_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    311   '�      �          0    34063     components_explore_explore_items 
   TABLE DATA           E   COPY public.components_explore_explore_items (id, title) FROM stdin;
    public          admin-food-strapi-db    false    303   ��      Z          0    16387 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          admin-food-strapi-db    false    203   �      �          0    33999    explore_sections 
   TABLE DATA           �   COPY public.explore_sections (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    301   g�      �          0    34073    explore_sections_cmps 
   TABLE DATA           f   COPY public.explore_sections_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
    public          admin-food-strapi-db    false    305   _�      �          0    42306    feature_sections 
   TABLE DATA           �   COPY public.feature_sections (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    307   �      �          0    42320    feature_sections_recipes_lnk 
   TABLE DATA           e   COPY public.feature_sections_recipes_lnk (id, feature_section_id, recipe_id, recipe_ord) FROM stdin;
    public          admin-food-strapi-db    false    309   |�      z          0    16581    files 
   TABLE DATA             COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    235   ��      �          0    17033    files_folder_lnk 
   TABLE DATA           L   COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
    public          admin-food-strapi-db    false    275   �      �          0    17019    files_related_mph 
   TABLE DATA           b   COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          admin-food-strapi-db    false    273   c�      �          0    17615    hero_sections 
   TABLE DATA           �   COPY public.hero_sections (id, document_id, title, description, button_text, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    299   ��      ~          0    16619    i18n_locale 
   TABLE DATA           �   COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    239   j�      p          0    16523    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin-food-strapi-db    false    225   #�      r          0    16539    recipes 
   TABLE DATA           �   COPY public.recipes (id, id_recipe, description, published_at, created_by, updated_by, created_at, updated_at, document_id, title, created_by_id, updated_by_id, locale, serves, "time", difficulty) FROM stdin;
    public          admin-food-strapi-db    false    227   q�      �          0    58729    recipes_category_lnk 
   TABLE DATA           V   COPY public.recipes_category_lnk (id, recipe_id, category_id, recipe_ord) FROM stdin;
    public          admin-food-strapi-db    false    313   8�      �          0    58754    recipes_sections 
   TABLE DATA           �   COPY public.recipes_sections (id, document_id, title, subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    315   |�      �          0    58768    recipes_sections_categories_lnk 
   TABLE DATA           l   COPY public.recipes_sections_categories_lnk (id, recipes_section_id, category_id, category_ord) FROM stdin;
    public          admin-food-strapi-db    false    317   9�      b          0    16439    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          admin-food-strapi-db    false    211   ��      �          0    16905    strapi_api_token_permissions 
   TABLE DATA           �   COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    263   �      �          0    17189 &   strapi_api_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
    public          admin-food-strapi-db    false    295   7�      �          0    16891    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    261   T�      �          0    16996    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          admin-food-strapi-db    false    269   �      x          0    16570    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          admin-food-strapi-db    false    233   ��      �          0    17007    strapi_history_versions 
   TABLE DATA           �   COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
    public          admin-food-strapi-db    false    271   ��      v          0    16557    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          admin-food-strapi-db    false    231   ��      u          0    16556    strapi_migrations_internal 
   TABLE DATA           F   COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
    public          admin-food-strapi-db    false    230   �      ^          0    16409    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          admin-food-strapi-db    false    207   ��      �          0    16647    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          admin-food-strapi-db    false    243   h�      �          0    17059 "   strapi_release_actions_release_lnk 
   TABLE DATA           s   COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
    public          admin-food-strapi-db    false    279   ��      �          0    16633    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    241   ��      `          0    16422    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          admin-food-strapi-db    false    209   ��      �          0    16933 !   strapi_transfer_token_permissions 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    267   ��      �          0    17202 +   strapi_transfer_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
    public          admin-food-strapi-db    false    297   ��      �          0    16919    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    265   ��      d          0    16452    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          admin-food-strapi-db    false    213   ��      \          0    16398    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          admin-food-strapi-db    false    205   �      �          0    16661    strapi_workflows 
   TABLE DATA           �   COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    245   :�      �          0    17072 .   strapi_workflows_stage_required_to_publish_lnk 
   TABLE DATA           l   COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
    public          admin-food-strapi-db    false    281   W�      �          0    16675    strapi_workflows_stages 
   TABLE DATA           �   COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    247   t�      �          0    17097 '   strapi_workflows_stages_permissions_lnk 
   TABLE DATA           w   COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
    public          admin-food-strapi-db    false    285   ��      �          0    17084 $   strapi_workflows_stages_workflow_lnk 
   TABLE DATA           v   COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
    public          admin-food-strapi-db    false    283   ��      �          0    16689    up_permissions 
   TABLE DATA           �   COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    249   ��      �          0    17110    up_permissions_role_lnk 
   TABLE DATA           ]   COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public          admin-food-strapi-db    false    287   ��      �          0    16703    up_roles 
   TABLE DATA           �   COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    251   g�      �          0    16717    up_users 
   TABLE DATA           �   COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    253   0�      �          0    17123    up_users_role_lnk 
   TABLE DATA           K   COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
    public          admin-food-strapi-db    false    289   ��      l          0    16499    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin-food-strapi-db    false    221   �      n          0    16512    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          admin-food-strapi-db    false    223   /�      |          0    16601    upload_folders 
   TABLE DATA           �   COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          admin-food-strapi-db    false    237   L�      �          0    17046    upload_folders_parent_lnk 
   TABLE DATA           ]   COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
    public          admin-food-strapi-db    false    277   �      f          0    16460    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          admin-food-strapi-db    false    215   B�      h          0    16471    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          admin-food-strapi-db    false    217   �      j          0    16484    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          admin-food-strapi-db    false    219   u�      
           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 218, true);
          public          admin-food-strapi-db    false    254                       0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 218, true);
          public          admin-food-strapi-db    false    290                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          admin-food-strapi-db    false    258                       0    0    admin_users_roles_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 2, true);
          public          admin-food-strapi-db    false    292                       0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 17, true);
          public          admin-food-strapi-db    false    310                       0    0 '   components_explore_explore_items_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_explore_explore_items_id_seq', 27, true);
          public          admin-food-strapi-db    false    302                       0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 26, true);
          public          admin-food-strapi-db    false    202                       0    0    explore_sections_cmps_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.explore_sections_cmps_id_seq', 51, true);
          public          admin-food-strapi-db    false    304                       0    0    explore_sections_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.explore_sections_id_seq', 5, true);
          public          admin-food-strapi-db    false    300                       0    0    feature_sections_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.feature_sections_id_seq', 7, true);
          public          admin-food-strapi-db    false    306                       0    0 #   feature_sections_recipes_lnk_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.feature_sections_recipes_lnk_id_seq', 23, true);
          public          admin-food-strapi-db    false    308                       0    0    files_folder_lnk_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 18, true);
          public          admin-food-strapi-db    false    274                       0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 9, true);
          public          admin-food-strapi-db    false    234                       0    0    files_related_mph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.files_related_mph_id_seq', 67, true);
          public          admin-food-strapi-db    false    272                       0    0    hero_sections_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hero_sections_id_seq', 4, true);
          public          admin-food-strapi-db    false    298                       0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          admin-food-strapi-db    false    238                       0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);
          public          admin-food-strapi-db    false    224                       0    0    recipes_category_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.recipes_category_lnk_id_seq', 10, true);
          public          admin-food-strapi-db    false    312                       0    0    recipes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.recipes_id_seq', 10, true);
          public          admin-food-strapi-db    false    226                       0    0 &   recipes_sections_categories_lnk_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.recipes_sections_categories_lnk_id_seq', 58, true);
          public          admin-food-strapi-db    false    316                       0    0    recipes_sections_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.recipes_sections_id_seq', 8, true);
          public          admin-food-strapi-db    false    314                       0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          admin-food-strapi-db    false    210                        0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          admin-food-strapi-db    false    262            !           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    294            "           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);
          public          admin-food-strapi-db    false    260            #           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 45, true);
          public          admin-food-strapi-db    false    268            $           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 18, true);
          public          admin-food-strapi-db    false    232            %           0    0    strapi_history_versions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);
          public          admin-food-strapi-db    false    270            &           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          admin-food-strapi-db    false    228            '           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);
          public          admin-food-strapi-db    false    229            (           0    0    strapi_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 101, true);
          public          admin-food-strapi-db    false    206            )           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          admin-food-strapi-db    false    242            *           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    278            +           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          admin-food-strapi-db    false    240            ,           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          admin-food-strapi-db    false    208            -           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          admin-food-strapi-db    false    266            .           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    296            /           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          admin-food-strapi-db    false    264            0           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          admin-food-strapi-db    false    212            1           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          admin-food-strapi-db    false    204            2           0    0    strapi_workflows_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);
          public          admin-food-strapi-db    false    244            3           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    280            4           0    0    strapi_workflows_stages_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);
          public          admin-food-strapi-db    false    246            5           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    284            6           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);
          public          admin-food-strapi-db    false    282            7           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 20, true);
          public          admin-food-strapi-db    false    248            8           0    0    up_permissions_role_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 20, true);
          public          admin-food-strapi-db    false    286            9           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          admin-food-strapi-db    false    250            :           0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          admin-food-strapi-db    false    252            ;           0    0    up_users_role_lnk_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, true);
          public          admin-food-strapi-db    false    288            <           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);
          public          admin-food-strapi-db    false    220            =           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          admin-food-strapi-db    false    222            >           0    0    upload_folders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_folders_id_seq', 3, true);
          public          admin-food-strapi-db    false    236            ?           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 2, true);
          public          admin-food-strapi-db    false    276            @           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 184, true);
          public          admin-food-strapi-db    false    214            A           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          admin-food-strapi-db    false    216            B           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, true);
          public          admin-food-strapi-db    false    218            �           2606    16857 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            admin-food-strapi-db    false    255            >           2606    17167 :   admin_permissions_role_lnk admin_permissions_role_lnk_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
       public            admin-food-strapi-db    false    291            @           2606    17171 8   admin_permissions_role_lnk admin_permissions_role_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
       public            admin-food-strapi-db    false    291    291            �           2606    16885    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            admin-food-strapi-db    false    259            F           2606    17180 0   admin_users_roles_lnk admin_users_roles_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
       public            admin-food-strapi-db    false    293            H           2606    17184 .   admin_users_roles_lnk admin_users_roles_lnk_uq 
   CONSTRAINT     u   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
       public            admin-food-strapi-db    false    293    293            y           2606    58686    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            admin-food-strapi-db    false    311            b           2606    34068 F   components_explore_explore_items components_explore_explore_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_explore_explore_items
    ADD CONSTRAINT components_explore_explore_items_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_explore_explore_items DROP CONSTRAINT components_explore_explore_items_pkey;
       public            admin-food-strapi-db    false    303            o           2606    16395    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            admin-food-strapi-db    false    203            d           2606    34081 0   explore_sections_cmps explore_sections_cmps_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.explore_sections_cmps
    ADD CONSTRAINT explore_sections_cmps_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.explore_sections_cmps DROP CONSTRAINT explore_sections_cmps_pkey;
       public            admin-food-strapi-db    false    305            _           2606    34007 &   explore_sections explore_sections_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.explore_sections
    ADD CONSTRAINT explore_sections_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.explore_sections DROP CONSTRAINT explore_sections_pkey;
       public            admin-food-strapi-db    false    301            i           2606    34086 )   explore_sections_cmps explore_sections_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.explore_sections_cmps
    ADD CONSTRAINT explore_sections_uq UNIQUE (entity_id, cmp_id, field, component_type);
 S   ALTER TABLE ONLY public.explore_sections_cmps DROP CONSTRAINT explore_sections_uq;
       public            admin-food-strapi-db    false    305    305    305    305            m           2606    42314 &   feature_sections feature_sections_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.feature_sections
    ADD CONSTRAINT feature_sections_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.feature_sections DROP CONSTRAINT feature_sections_pkey;
       public            admin-food-strapi-db    false    307            s           2606    42325 >   feature_sections_recipes_lnk feature_sections_recipes_lnk_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.feature_sections_recipes_lnk
    ADD CONSTRAINT feature_sections_recipes_lnk_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.feature_sections_recipes_lnk DROP CONSTRAINT feature_sections_recipes_lnk_pkey;
       public            admin-food-strapi-db    false    309            u           2606    42329 <   feature_sections_recipes_lnk feature_sections_recipes_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.feature_sections_recipes_lnk
    ADD CONSTRAINT feature_sections_recipes_lnk_uq UNIQUE (feature_section_id, recipe_id);
 f   ALTER TABLE ONLY public.feature_sections_recipes_lnk DROP CONSTRAINT feature_sections_recipes_lnk_uq;
       public            admin-food-strapi-db    false    309    309                       2606    17038 &   files_folder_lnk files_folder_lnk_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
       public            admin-food-strapi-db    false    275            	           2606    17042 $   files_folder_lnk files_folder_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
       public            admin-food-strapi-db    false    275    275            �           2606    16589    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            admin-food-strapi-db    false    235                       2606    17027 (   files_related_mph files_related_mph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
       public            admin-food-strapi-db    false    273            Z           2606    17623     hero_sections hero_sections_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hero_sections
    ADD CONSTRAINT hero_sections_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.hero_sections DROP CONSTRAINT hero_sections_pkey;
       public            admin-food-strapi-db    false    299            �           2606    16627    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            admin-food-strapi-db    false    239            �           2606    16535 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            admin-food-strapi-db    false    225            �           2606    16533    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            admin-food-strapi-db    false    225                       2606    58734 .   recipes_category_lnk recipes_category_lnk_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.recipes_category_lnk
    ADD CONSTRAINT recipes_category_lnk_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.recipes_category_lnk DROP CONSTRAINT recipes_category_lnk_pkey;
       public            admin-food-strapi-db    false    313            �           2606    58738 ,   recipes_category_lnk recipes_category_lnk_uq 
   CONSTRAINT     y   ALTER TABLE ONLY public.recipes_category_lnk
    ADD CONSTRAINT recipes_category_lnk_uq UNIQUE (recipe_id, category_id);
 V   ALTER TABLE ONLY public.recipes_category_lnk DROP CONSTRAINT recipes_category_lnk_uq;
       public            admin-food-strapi-db    false    313    313            �           2606    16551     recipes recipes_id_recipe_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_id_recipe_unique UNIQUE (id_recipe);
 J   ALTER TABLE ONLY public.recipes DROP CONSTRAINT recipes_id_recipe_unique;
       public            admin-food-strapi-db    false    227            �           2606    16549    recipes recipes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.recipes DROP CONSTRAINT recipes_pkey;
       public            admin-food-strapi-db    false    227            �           2606    58773 D   recipes_sections_categories_lnk recipes_sections_categories_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections_categories_lnk
    ADD CONSTRAINT recipes_sections_categories_lnk_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.recipes_sections_categories_lnk DROP CONSTRAINT recipes_sections_categories_lnk_pkey;
       public            admin-food-strapi-db    false    317            �           2606    58777 B   recipes_sections_categories_lnk recipes_sections_categories_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections_categories_lnk
    ADD CONSTRAINT recipes_sections_categories_lnk_uq UNIQUE (recipes_section_id, category_id);
 l   ALTER TABLE ONLY public.recipes_sections_categories_lnk DROP CONSTRAINT recipes_sections_categories_lnk_uq;
       public            admin-food-strapi-db    false    317    317            �           2606    58762 &   recipes_sections recipes_sections_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.recipes_sections
    ADD CONSTRAINT recipes_sections_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.recipes_sections DROP CONSTRAINT recipes_sections_pkey;
       public            admin-food-strapi-db    false    315            {           2606    16449 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            admin-food-strapi-db    false    211            }           2606    16447 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            admin-food-strapi-db    false    211            �           2606    16913 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            admin-food-strapi-db    false    263            M           2606    17194 R   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
       public            admin-food-strapi-db    false    295            O           2606    17198 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
       public            admin-food-strapi-db    false    295    295            �           2606    16899 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            admin-food-strapi-db    false    261            �           2606    17004 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            admin-food-strapi-db    false    269            �           2606    16578 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            admin-food-strapi-db    false    233            �           2606    17015 4   strapi_history_versions strapi_history_versions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
       public            admin-food-strapi-db    false    271            �           2606    16567 :   strapi_migrations_internal strapi_migrations_internal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
       public            admin-food-strapi-db    false    230            �           2606    16566 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            admin-food-strapi-db    false    231            s           2606    16419 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            admin-food-strapi-db    false    207            �           2606    16655 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            admin-food-strapi-db    false    243                       2606    17064 J   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
       public            admin-food-strapi-db    false    279                       2606    17068 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
       public            admin-food-strapi-db    false    279    279            �           2606    16641 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            admin-food-strapi-db    false    241            u           2606    16436 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            admin-food-strapi-db    false    209            w           2606    16434 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            admin-food-strapi-db    false    209            y           2606    16432    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            admin-food-strapi-db    false    209            �           2606    16941 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            admin-food-strapi-db    false    267            T           2606    17207 \   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
       public            admin-food-strapi-db    false    297            V           2606    17211 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
       public            admin-food-strapi-db    false    297    297            �           2606    16927 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            admin-food-strapi-db    false    265                       2606    16457 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            admin-food-strapi-db    false    213            q           2606    16406 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            admin-food-strapi-db    false    205            �           2606    16669 &   strapi_workflows strapi_workflows_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
       public            admin-food-strapi-db    false    245                       2606    17077 b   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
       public            admin-food-strapi-db    false    281                       2606    17081 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
       public            admin-food-strapi-db    false    281    281            )           2606    17102 T   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
       public            admin-food-strapi-db    false    285            +           2606    17106 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
       public            admin-food-strapi-db    false    285    285            �           2606    16683 4   strapi_workflows_stages strapi_workflows_stages_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
       public            admin-food-strapi-db    false    247            "           2606    17089 N   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
       public            admin-food-strapi-db    false    283            $           2606    17093 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
       public            admin-food-strapi-db    false    283    283            �           2606    16697 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            admin-food-strapi-db    false    249            0           2606    17115 4   up_permissions_role_lnk up_permissions_role_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
       public            admin-food-strapi-db    false    287            2           2606    17119 2   up_permissions_role_lnk up_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
       public            admin-food-strapi-db    false    287    287            �           2606    16711    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            admin-food-strapi-db    false    251            �           2606    16725    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            admin-food-strapi-db    false    253            7           2606    17128 (   up_users_role_lnk up_users_role_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
       public            admin-food-strapi-db    false    289            9           2606    17132 &   up_users_role_lnk up_users_role_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
       public            admin-food-strapi-db    false    289    289            �           2606    16520 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            admin-food-strapi-db    false    223            �           2606    16509    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            admin-food-strapi-db    false    221                       2606    17051 8   upload_folders_parent_lnk upload_folders_parent_lnk_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
       public            admin-food-strapi-db    false    277                       2606    17055 6   upload_folders_parent_lnk upload_folders_parent_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
       public            admin-food-strapi-db    false    277    277            �           2606    16611 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            admin-food-strapi-db    false    237            �           2606    16613 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            admin-food-strapi-db    false    237            �           2606    16609 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            admin-food-strapi-db    false    237            �           2606    16468 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            admin-food-strapi-db    false    215            �           2606    16479 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            admin-food-strapi-db    false    217            �           2606    16481 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            admin-food-strapi-db    false    217            �           2606    16494 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            admin-food-strapi-db    false    219            �           2606    16496 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            admin-food-strapi-db    false    219            �           1259    16859 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            admin-food-strapi-db    false    255            �           1259    16858    admin_permissions_documents_idx    INDEX     z   CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);
 3   DROP INDEX public.admin_permissions_documents_idx;
       public            admin-food-strapi-db    false    255    255    255            :           1259    17168    admin_permissions_role_lnk_fk    INDEX     m   CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);
 1   DROP INDEX public.admin_permissions_role_lnk_fk;
       public            admin-food-strapi-db    false    291            ;           1259    17169    admin_permissions_role_lnk_ifk    INDEX     h   CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);
 2   DROP INDEX public.admin_permissions_role_lnk_ifk;
       public            admin-food-strapi-db    false    291            <           1259    17172    admin_permissions_role_lnk_oifk    INDEX     p   CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);
 3   DROP INDEX public.admin_permissions_role_lnk_oifk;
       public            admin-food-strapi-db    false    291            �           1259    16860 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            admin-food-strapi-db    false    255            �           1259    16887    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            admin-food-strapi-db    false    259            �           1259    16886    admin_roles_documents_idx    INDEX     n   CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_roles_documents_idx;
       public            admin-food-strapi-db    false    259    259    259            �           1259    16888    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            admin-food-strapi-db    false    259            A           1259    17181    admin_users_roles_lnk_fk    INDEX     ]   CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);
 ,   DROP INDEX public.admin_users_roles_lnk_fk;
       public            admin-food-strapi-db    false    293            B           1259    17182    admin_users_roles_lnk_ifk    INDEX     ^   CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);
 -   DROP INDEX public.admin_users_roles_lnk_ifk;
       public            admin-food-strapi-db    false    293            C           1259    17185    admin_users_roles_lnk_ofk    INDEX     _   CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);
 -   DROP INDEX public.admin_users_roles_lnk_ofk;
       public            admin-food-strapi-db    false    293            D           1259    17186    admin_users_roles_lnk_oifk    INDEX     `   CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);
 .   DROP INDEX public.admin_users_roles_lnk_oifk;
       public            admin-food-strapi-db    false    293            v           1259    58688    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            admin-food-strapi-db    false    311            w           1259    58687    categories_documents_idx    INDEX     l   CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);
 ,   DROP INDEX public.categories_documents_idx;
       public            admin-food-strapi-db    false    311    311    311            z           1259    58689    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            admin-food-strapi-db    false    311            e           1259    34083 #   explore_sections_component_type_idx    INDEX     o   CREATE INDEX explore_sections_component_type_idx ON public.explore_sections_cmps USING btree (component_type);
 7   DROP INDEX public.explore_sections_component_type_idx;
       public            admin-food-strapi-db    false    305            \           1259    34009 !   explore_sections_created_by_id_fk    INDEX     g   CREATE INDEX explore_sections_created_by_id_fk ON public.explore_sections USING btree (created_by_id);
 5   DROP INDEX public.explore_sections_created_by_id_fk;
       public            admin-food-strapi-db    false    301            ]           1259    34008    explore_sections_documents_idx    INDEX     x   CREATE INDEX explore_sections_documents_idx ON public.explore_sections USING btree (document_id, locale, published_at);
 2   DROP INDEX public.explore_sections_documents_idx;
       public            admin-food-strapi-db    false    301    301    301            f           1259    34084    explore_sections_entity_fk    INDEX     a   CREATE INDEX explore_sections_entity_fk ON public.explore_sections_cmps USING btree (entity_id);
 .   DROP INDEX public.explore_sections_entity_fk;
       public            admin-food-strapi-db    false    305            g           1259    34082    explore_sections_field_idx    INDEX     ]   CREATE INDEX explore_sections_field_idx ON public.explore_sections_cmps USING btree (field);
 .   DROP INDEX public.explore_sections_field_idx;
       public            admin-food-strapi-db    false    305            `           1259    34010 !   explore_sections_updated_by_id_fk    INDEX     g   CREATE INDEX explore_sections_updated_by_id_fk ON public.explore_sections USING btree (updated_by_id);
 5   DROP INDEX public.explore_sections_updated_by_id_fk;
       public            admin-food-strapi-db    false    301            j           1259    42316 !   feature_sections_created_by_id_fk    INDEX     g   CREATE INDEX feature_sections_created_by_id_fk ON public.feature_sections USING btree (created_by_id);
 5   DROP INDEX public.feature_sections_created_by_id_fk;
       public            admin-food-strapi-db    false    307            k           1259    42315    feature_sections_documents_idx    INDEX     x   CREATE INDEX feature_sections_documents_idx ON public.feature_sections USING btree (document_id, locale, published_at);
 2   DROP INDEX public.feature_sections_documents_idx;
       public            admin-food-strapi-db    false    307    307    307            o           1259    42326    feature_sections_recipes_lnk_fk    INDEX     v   CREATE INDEX feature_sections_recipes_lnk_fk ON public.feature_sections_recipes_lnk USING btree (feature_section_id);
 3   DROP INDEX public.feature_sections_recipes_lnk_fk;
       public            admin-food-strapi-db    false    309            p           1259    42327     feature_sections_recipes_lnk_ifk    INDEX     n   CREATE INDEX feature_sections_recipes_lnk_ifk ON public.feature_sections_recipes_lnk USING btree (recipe_id);
 4   DROP INDEX public.feature_sections_recipes_lnk_ifk;
       public            admin-food-strapi-db    false    309            q           1259    42330     feature_sections_recipes_lnk_ofk    INDEX     o   CREATE INDEX feature_sections_recipes_lnk_ofk ON public.feature_sections_recipes_lnk USING btree (recipe_ord);
 4   DROP INDEX public.feature_sections_recipes_lnk_ofk;
       public            admin-food-strapi-db    false    309            n           1259    42317 !   feature_sections_updated_by_id_fk    INDEX     g   CREATE INDEX feature_sections_updated_by_id_fk ON public.feature_sections USING btree (updated_by_id);
 5   DROP INDEX public.feature_sections_updated_by_id_fk;
       public            admin-food-strapi-db    false    307            �           1259    16597    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            admin-food-strapi-db    false    235            �           1259    16596    files_documents_idx    INDEX     b   CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);
 '   DROP INDEX public.files_documents_idx;
       public            admin-food-strapi-db    false    235    235    235                       1259    17039    files_folder_lnk_fk    INDEX     S   CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);
 '   DROP INDEX public.files_folder_lnk_fk;
       public            admin-food-strapi-db    false    275                       1259    17040    files_folder_lnk_ifk    INDEX     V   CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);
 (   DROP INDEX public.files_folder_lnk_ifk;
       public            admin-food-strapi-db    false    275                       1259    17043    files_folder_lnk_oifk    INDEX     V   CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);
 )   DROP INDEX public.files_folder_lnk_oifk;
       public            admin-food-strapi-db    false    275            �           1259    17028    files_related_mph_fk    INDEX     U   CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);
 (   DROP INDEX public.files_related_mph_fk;
       public            admin-food-strapi-db    false    273            �           1259    17030    files_related_mph_idix    INDEX     Z   CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);
 *   DROP INDEX public.files_related_mph_idix;
       public            admin-food-strapi-db    false    273                        1259    17029    files_related_mph_oidx    INDEX     W   CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");
 *   DROP INDEX public.files_related_mph_oidx;
       public            admin-food-strapi-db    false    273            �           1259    16598    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            admin-food-strapi-db    false    235            W           1259    17625    hero_sections_created_by_id_fk    INDEX     a   CREATE INDEX hero_sections_created_by_id_fk ON public.hero_sections USING btree (created_by_id);
 2   DROP INDEX public.hero_sections_created_by_id_fk;
       public            admin-food-strapi-db    false    299            X           1259    17624    hero_sections_documents_idx    INDEX     r   CREATE INDEX hero_sections_documents_idx ON public.hero_sections USING btree (document_id, locale, published_at);
 /   DROP INDEX public.hero_sections_documents_idx;
       public            admin-food-strapi-db    false    299    299    299            [           1259    17626    hero_sections_updated_by_id_fk    INDEX     a   CREATE INDEX hero_sections_updated_by_id_fk ON public.hero_sections USING btree (updated_by_id);
 2   DROP INDEX public.hero_sections_updated_by_id_fk;
       public            admin-food-strapi-db    false    299            �           1259    16629    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            admin-food-strapi-db    false    239            �           1259    16628    i18n_locale_documents_idx    INDEX     n   CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);
 -   DROP INDEX public.i18n_locale_documents_idx;
       public            admin-food-strapi-db    false    239    239    239            �           1259    16630    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            admin-food-strapi-db    false    239            {           1259    58735    recipes_category_lnk_fk    INDEX     ]   CREATE INDEX recipes_category_lnk_fk ON public.recipes_category_lnk USING btree (recipe_id);
 +   DROP INDEX public.recipes_category_lnk_fk;
       public            admin-food-strapi-db    false    313            |           1259    58736    recipes_category_lnk_ifk    INDEX     `   CREATE INDEX recipes_category_lnk_ifk ON public.recipes_category_lnk USING btree (category_id);
 ,   DROP INDEX public.recipes_category_lnk_ifk;
       public            admin-food-strapi-db    false    313            }           1259    58739    recipes_category_lnk_oifk    INDEX     `   CREATE INDEX recipes_category_lnk_oifk ON public.recipes_category_lnk USING btree (recipe_ord);
 -   DROP INDEX public.recipes_category_lnk_oifk;
       public            admin-food-strapi-db    false    313            �           1259    42300    recipes_created_by_id_fk    INDEX     U   CREATE INDEX recipes_created_by_id_fk ON public.recipes USING btree (created_by_id);
 ,   DROP INDEX public.recipes_created_by_id_fk;
       public            admin-food-strapi-db    false    227            �           1259    42299    recipes_documents_idx    INDEX     f   CREATE INDEX recipes_documents_idx ON public.recipes USING btree (document_id, locale, published_at);
 )   DROP INDEX public.recipes_documents_idx;
       public            admin-food-strapi-db    false    227    227    227            �           1259    58774 "   recipes_sections_categories_lnk_fk    INDEX     |   CREATE INDEX recipes_sections_categories_lnk_fk ON public.recipes_sections_categories_lnk USING btree (recipes_section_id);
 6   DROP INDEX public.recipes_sections_categories_lnk_fk;
       public            admin-food-strapi-db    false    317            �           1259    58775 #   recipes_sections_categories_lnk_ifk    INDEX     v   CREATE INDEX recipes_sections_categories_lnk_ifk ON public.recipes_sections_categories_lnk USING btree (category_id);
 7   DROP INDEX public.recipes_sections_categories_lnk_ifk;
       public            admin-food-strapi-db    false    317            �           1259    58778 #   recipes_sections_categories_lnk_ofk    INDEX     w   CREATE INDEX recipes_sections_categories_lnk_ofk ON public.recipes_sections_categories_lnk USING btree (category_ord);
 7   DROP INDEX public.recipes_sections_categories_lnk_ofk;
       public            admin-food-strapi-db    false    317            �           1259    58764 !   recipes_sections_created_by_id_fk    INDEX     g   CREATE INDEX recipes_sections_created_by_id_fk ON public.recipes_sections USING btree (created_by_id);
 5   DROP INDEX public.recipes_sections_created_by_id_fk;
       public            admin-food-strapi-db    false    315            �           1259    58763    recipes_sections_documents_idx    INDEX     x   CREATE INDEX recipes_sections_documents_idx ON public.recipes_sections USING btree (document_id, locale, published_at);
 2   DROP INDEX public.recipes_sections_documents_idx;
       public            admin-food-strapi-db    false    315    315    315            �           1259    58765 !   recipes_sections_updated_by_id_fk    INDEX     g   CREATE INDEX recipes_sections_updated_by_id_fk ON public.recipes_sections USING btree (updated_by_id);
 5   DROP INDEX public.recipes_sections_updated_by_id_fk;
       public            admin-food-strapi-db    false    315            �           1259    42301    recipes_updated_by_id_fk    INDEX     U   CREATE INDEX recipes_updated_by_id_fk ON public.recipes USING btree (updated_by_id);
 ,   DROP INDEX public.recipes_updated_by_id_fk;
       public            admin-food-strapi-db    false    227            �           1259    16915 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            admin-food-strapi-db    false    263            �           1259    16914 *   strapi_api_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);
 >   DROP INDEX public.strapi_api_token_permissions_documents_idx;
       public            admin-food-strapi-db    false    263    263    263            I           1259    17195 )   strapi_api_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);
 =   DROP INDEX public.strapi_api_token_permissions_token_lnk_fk;
       public            admin-food-strapi-db    false    295            J           1259    17196 *   strapi_api_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);
 >   DROP INDEX public.strapi_api_token_permissions_token_lnk_ifk;
       public            admin-food-strapi-db    false    295            K           1259    17199 +   strapi_api_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);
 ?   DROP INDEX public.strapi_api_token_permissions_token_lnk_oifk;
       public            admin-food-strapi-db    false    295            �           1259    16916 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            admin-food-strapi-db    false    263            �           1259    16901 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            admin-food-strapi-db    false    261            �           1259    16900    strapi_api_tokens_documents_idx    INDEX     z   CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);
 3   DROP INDEX public.strapi_api_tokens_documents_idx;
       public            admin-food-strapi-db    false    261    261    261            �           1259    16902 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            admin-food-strapi-db    false    261            �           1259    17016 (   strapi_history_versions_created_by_id_fk    INDEX     u   CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);
 <   DROP INDEX public.strapi_history_versions_created_by_id_fk;
       public            admin-food-strapi-db    false    271            �           1259    16657 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            admin-food-strapi-db    false    243            �           1259    16656 $   strapi_release_actions_documents_idx    INDEX     �   CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_release_actions_documents_idx;
       public            admin-food-strapi-db    false    243    243    243                       1259    17065 %   strapi_release_actions_release_lnk_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);
 9   DROP INDEX public.strapi_release_actions_release_lnk_fk;
       public            admin-food-strapi-db    false    279                       1259    17066 &   strapi_release_actions_release_lnk_ifk    INDEX     {   CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);
 :   DROP INDEX public.strapi_release_actions_release_lnk_ifk;
       public            admin-food-strapi-db    false    279                       1259    17069 '   strapi_release_actions_release_lnk_oifk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);
 ;   DROP INDEX public.strapi_release_actions_release_lnk_oifk;
       public            admin-food-strapi-db    false    279            �           1259    16658 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            admin-food-strapi-db    false    243            �           1259    16643     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            admin-food-strapi-db    false    241            �           1259    16642    strapi_releases_documents_idx    INDEX     v   CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);
 1   DROP INDEX public.strapi_releases_documents_idx;
       public            admin-food-strapi-db    false    241    241    241            �           1259    16644     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            admin-food-strapi-db    false    241            �           1259    16943 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            admin-food-strapi-db    false    267            �           1259    16942 /   strapi_transfer_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);
 C   DROP INDEX public.strapi_transfer_token_permissions_documents_idx;
       public            admin-food-strapi-db    false    267    267    267            P           1259    17208 .   strapi_transfer_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);
 B   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_fk;
       public            admin-food-strapi-db    false    297            Q           1259    17209 /   strapi_transfer_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);
 C   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_ifk;
       public            admin-food-strapi-db    false    297            R           1259    17212 0   strapi_transfer_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_oifk;
       public            admin-food-strapi-db    false    297            �           1259    16944 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            admin-food-strapi-db    false    267            �           1259    16929 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            admin-food-strapi-db    false    265            �           1259    16928 $   strapi_transfer_tokens_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_transfer_tokens_documents_idx;
       public            admin-food-strapi-db    false    265    265    265            �           1259    16930 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            admin-food-strapi-db    false    265            �           1259    16671 !   strapi_workflows_created_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);
 5   DROP INDEX public.strapi_workflows_created_by_id_fk;
       public            admin-food-strapi-db    false    245            �           1259    16670    strapi_workflows_documents_idx    INDEX     x   CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);
 2   DROP INDEX public.strapi_workflows_documents_idx;
       public            admin-food-strapi-db    false    245    245    245                       1259    17078 1   strapi_workflows_stage_required_to_publish_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);
 E   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_fk;
       public            admin-food-strapi-db    false    281                       1259    17079 2   strapi_workflows_stage_required_to_publish_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);
 F   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_ifk;
       public            admin-food-strapi-db    false    281            �           1259    16685 (   strapi_workflows_stages_created_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);
 <   DROP INDEX public.strapi_workflows_stages_created_by_id_fk;
       public            admin-food-strapi-db    false    247            �           1259    16684 %   strapi_workflows_stages_documents_idx    INDEX     �   CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);
 9   DROP INDEX public.strapi_workflows_stages_documents_idx;
       public            admin-food-strapi-db    false    247    247    247            %           1259    17103 *   strapi_workflows_stages_permissions_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);
 >   DROP INDEX public.strapi_workflows_stages_permissions_lnk_fk;
       public            admin-food-strapi-db    false    285            &           1259    17104 +   strapi_workflows_stages_permissions_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ifk;
       public            admin-food-strapi-db    false    285            '           1259    17107 +   strapi_workflows_stages_permissions_lnk_ofk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ofk;
       public            admin-food-strapi-db    false    285            �           1259    16686 (   strapi_workflows_stages_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);
 <   DROP INDEX public.strapi_workflows_stages_updated_by_id_fk;
       public            admin-food-strapi-db    false    247                       1259    17090 '   strapi_workflows_stages_workflow_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);
 ;   DROP INDEX public.strapi_workflows_stages_workflow_lnk_fk;
       public            admin-food-strapi-db    false    283                       1259    17091 (   strapi_workflows_stages_workflow_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);
 <   DROP INDEX public.strapi_workflows_stages_workflow_lnk_ifk;
       public            admin-food-strapi-db    false    283                        1259    17094 )   strapi_workflows_stages_workflow_lnk_oifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);
 =   DROP INDEX public.strapi_workflows_stages_workflow_lnk_oifk;
       public            admin-food-strapi-db    false    283            �           1259    16672 !   strapi_workflows_updated_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);
 5   DROP INDEX public.strapi_workflows_updated_by_id_fk;
       public            admin-food-strapi-db    false    245            �           1259    16699    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            admin-food-strapi-db    false    249            �           1259    16698    up_permissions_documents_idx    INDEX     t   CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);
 0   DROP INDEX public.up_permissions_documents_idx;
       public            admin-food-strapi-db    false    249    249    249            ,           1259    17116    up_permissions_role_lnk_fk    INDEX     g   CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);
 .   DROP INDEX public.up_permissions_role_lnk_fk;
       public            admin-food-strapi-db    false    287            -           1259    17117    up_permissions_role_lnk_ifk    INDEX     b   CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);
 /   DROP INDEX public.up_permissions_role_lnk_ifk;
       public            admin-food-strapi-db    false    287            .           1259    17120    up_permissions_role_lnk_oifk    INDEX     j   CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);
 0   DROP INDEX public.up_permissions_role_lnk_oifk;
       public            admin-food-strapi-db    false    287            �           1259    16700    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            admin-food-strapi-db    false    249            �           1259    16713    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            admin-food-strapi-db    false    251            �           1259    16712    up_roles_documents_idx    INDEX     h   CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_roles_documents_idx;
       public            admin-food-strapi-db    false    251    251    251            �           1259    16714    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            admin-food-strapi-db    false    251            �           1259    16727    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            admin-food-strapi-db    false    253            �           1259    16726    up_users_documents_idx    INDEX     h   CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_users_documents_idx;
       public            admin-food-strapi-db    false    253    253    253            3           1259    17129    up_users_role_lnk_fk    INDEX     U   CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);
 (   DROP INDEX public.up_users_role_lnk_fk;
       public            admin-food-strapi-db    false    289            4           1259    17130    up_users_role_lnk_ifk    INDEX     V   CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);
 )   DROP INDEX public.up_users_role_lnk_ifk;
       public            admin-food-strapi-db    false    289            5           1259    17133    up_users_role_lnk_oifk    INDEX     X   CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);
 *   DROP INDEX public.up_users_role_lnk_oifk;
       public            admin-food-strapi-db    false    289            �           1259    16728    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            admin-food-strapi-db    false    253            �           1259    16591    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            admin-food-strapi-db    false    235            �           1259    16595    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            admin-food-strapi-db    false    235            �           1259    16590    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            admin-food-strapi-db    false    235            �           1259    16593    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            admin-food-strapi-db    false    235            �           1259    16594    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            admin-food-strapi-db    false    235            �           1259    16592    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            admin-food-strapi-db    false    235            �           1259    16615    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            admin-food-strapi-db    false    237            �           1259    16614    upload_folders_documents_idx    INDEX     t   CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);
 0   DROP INDEX public.upload_folders_documents_idx;
       public            admin-food-strapi-db    false    237    237    237            
           1259    17052    upload_folders_parent_lnk_fk    INDEX     g   CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);
 0   DROP INDEX public.upload_folders_parent_lnk_fk;
       public            admin-food-strapi-db    false    277                       1259    17053    upload_folders_parent_lnk_ifk    INDEX     l   CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);
 1   DROP INDEX public.upload_folders_parent_lnk_ifk;
       public            admin-food-strapi-db    false    277                       1259    17056    upload_folders_parent_lnk_oifk    INDEX     j   CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);
 2   DROP INDEX public.upload_folders_parent_lnk_oifk;
       public            admin-food-strapi-db    false    277            �           1259    16616    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            admin-food-strapi-db    false    237            �           2606    17378 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          admin-food-strapi-db    false    255            �           2606    17558 8   admin_permissions_role_lnk admin_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
       public          admin-food-strapi-db    false    3294    255    291            �           2606    17563 9   admin_permissions_role_lnk admin_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
       public          admin-food-strapi-db    false    3299    259    291            �           2606    17383 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          admin-food-strapi-db    false    255            �           2606    17398 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          admin-food-strapi-db    false    259            �           2606    17403 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          admin-food-strapi-db    false    259            �           2606    17568 .   admin_users_roles_lnk admin_users_roles_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
       public          admin-food-strapi-db    false    293            �           2606    17573 /   admin_users_roles_lnk admin_users_roles_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
       public          admin-food-strapi-db    false    259    3299    293            �           2606    58690 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          admin-food-strapi-db    false    311            �           2606    58695 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          admin-food-strapi-db    false    311            �           2606    34011 2   explore_sections explore_sections_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.explore_sections
    ADD CONSTRAINT explore_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.explore_sections DROP CONSTRAINT explore_sections_created_by_id_fk;
       public          admin-food-strapi-db    false    301            �           2606    34087 0   explore_sections_cmps explore_sections_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.explore_sections_cmps
    ADD CONSTRAINT explore_sections_entity_fk FOREIGN KEY (entity_id) REFERENCES public.explore_sections(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.explore_sections_cmps DROP CONSTRAINT explore_sections_entity_fk;
       public          admin-food-strapi-db    false    3423    301    305            �           2606    34016 2   explore_sections explore_sections_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.explore_sections
    ADD CONSTRAINT explore_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.explore_sections DROP CONSTRAINT explore_sections_updated_by_id_fk;
       public          admin-food-strapi-db    false    301            �           2606    42331 2   feature_sections feature_sections_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.feature_sections
    ADD CONSTRAINT feature_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.feature_sections DROP CONSTRAINT feature_sections_created_by_id_fk;
       public          admin-food-strapi-db    false    307            �           2606    42341 <   feature_sections_recipes_lnk feature_sections_recipes_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.feature_sections_recipes_lnk
    ADD CONSTRAINT feature_sections_recipes_lnk_fk FOREIGN KEY (feature_section_id) REFERENCES public.feature_sections(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.feature_sections_recipes_lnk DROP CONSTRAINT feature_sections_recipes_lnk_fk;
       public          admin-food-strapi-db    false    307    3437    309            �           2606    42346 =   feature_sections_recipes_lnk feature_sections_recipes_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.feature_sections_recipes_lnk
    ADD CONSTRAINT feature_sections_recipes_lnk_ifk FOREIGN KEY (recipe_id) REFERENCES public.recipes(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.feature_sections_recipes_lnk DROP CONSTRAINT feature_sections_recipes_lnk_ifk;
       public          admin-food-strapi-db    false    309    227    3223            �           2606    42336 2   feature_sections feature_sections_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.feature_sections
    ADD CONSTRAINT feature_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.feature_sections DROP CONSTRAINT feature_sections_updated_by_id_fk;
       public          admin-food-strapi-db    false    307            �           2606    17213    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          admin-food-strapi-db    false    235            �           2606    17458 $   files_folder_lnk files_folder_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
       public          admin-food-strapi-db    false    3234    235    275            �           2606    17463 %   files_folder_lnk files_folder_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
       public          admin-food-strapi-db    false    237    3249    275            �           2606    17453 &   files_related_mph files_related_mph_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_fk;
       public          admin-food-strapi-db    false    3234    235    273            �           2606    17218    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          admin-food-strapi-db    false    235            �           2606    17627 ,   hero_sections hero_sections_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_sections
    ADD CONSTRAINT hero_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.hero_sections DROP CONSTRAINT hero_sections_created_by_id_fk;
       public          admin-food-strapi-db    false    299            �           2606    17632 ,   hero_sections hero_sections_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_sections
    ADD CONSTRAINT hero_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.hero_sections DROP CONSTRAINT hero_sections_updated_by_id_fk;
       public          admin-food-strapi-db    false    299            �           2606    17233 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          admin-food-strapi-db    false    239            �           2606    17238 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          admin-food-strapi-db    false    239            �           2606    58740 ,   recipes_category_lnk recipes_category_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_category_lnk
    ADD CONSTRAINT recipes_category_lnk_fk FOREIGN KEY (recipe_id) REFERENCES public.recipes(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.recipes_category_lnk DROP CONSTRAINT recipes_category_lnk_fk;
       public          admin-food-strapi-db    false    227    3223    313            �           2606    58745 -   recipes_category_lnk recipes_category_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_category_lnk
    ADD CONSTRAINT recipes_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.recipes_category_lnk DROP CONSTRAINT recipes_category_lnk_ifk;
       public          admin-food-strapi-db    false    311    3449    313            �           2606    42289     recipes recipes_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.recipes DROP CONSTRAINT recipes_created_by_id_fk;
       public          admin-food-strapi-db    false    227            �           2606    58789 B   recipes_sections_categories_lnk recipes_sections_categories_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections_categories_lnk
    ADD CONSTRAINT recipes_sections_categories_lnk_fk FOREIGN KEY (recipes_section_id) REFERENCES public.recipes_sections(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.recipes_sections_categories_lnk DROP CONSTRAINT recipes_sections_categories_lnk_fk;
       public          admin-food-strapi-db    false    317    315    3461            �           2606    58794 C   recipes_sections_categories_lnk recipes_sections_categories_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections_categories_lnk
    ADD CONSTRAINT recipes_sections_categories_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.recipes_sections_categories_lnk DROP CONSTRAINT recipes_sections_categories_lnk_ifk;
       public          admin-food-strapi-db    false    3449    311    317            �           2606    58779 2   recipes_sections recipes_sections_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections
    ADD CONSTRAINT recipes_sections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.recipes_sections DROP CONSTRAINT recipes_sections_created_by_id_fk;
       public          admin-food-strapi-db    false    315            �           2606    58784 2   recipes_sections recipes_sections_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes_sections
    ADD CONSTRAINT recipes_sections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.recipes_sections DROP CONSTRAINT recipes_sections_updated_by_id_fk;
       public          admin-food-strapi-db    false    315            �           2606    42294     recipes recipes_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.recipes DROP CONSTRAINT recipes_updated_by_id_fk;
       public          admin-food-strapi-db    false    227            �           2606    17418 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          admin-food-strapi-db    false    263            �           2606    17578 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
       public          admin-food-strapi-db    false    295    3309    263            �           2606    17583 Q   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
       public          admin-food-strapi-db    false    3304    261    295            �           2606    17423 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          admin-food-strapi-db    false    263            �           2606    17408 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          admin-food-strapi-db    false    261            �           2606    17413 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          admin-food-strapi-db    false    261            �           2606    17448 @   strapi_history_versions strapi_history_versions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
       public          admin-food-strapi-db    false    271            �           2606    17253 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          admin-food-strapi-db    false    243            �           2606    17478 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
       public          admin-food-strapi-db    false    279    3264    243            �           2606    17483 I   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
       public          admin-food-strapi-db    false    3259    241    279            �           2606    17258 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          admin-food-strapi-db    false    243            �           2606    17243 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          admin-food-strapi-db    false    241            �           2606    17248 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          admin-food-strapi-db    false    241            �           2606    17438 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          admin-food-strapi-db    false    267            �           2606    17588 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
       public          admin-food-strapi-db    false    267    3319    297            �           2606    17593 [   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
       public          admin-food-strapi-db    false    3314    297    265            �           2606    17443 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          admin-food-strapi-db    false    267            �           2606    17428 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          admin-food-strapi-db    false    265            �           2606    17433 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          admin-food-strapi-db    false    265            �           2606    17263 2   strapi_workflows strapi_workflows_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
       public          admin-food-strapi-db    false    245            �           2606    17488 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
       public          admin-food-strapi-db    false    3269    281    245            �           2606    17493 a   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
       public          admin-food-strapi-db    false    281    3274    247            �           2606    17273 @   strapi_workflows_stages strapi_workflows_stages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
       public          admin-food-strapi-db    false    247            �           2606    17508 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
       public          admin-food-strapi-db    false    285    247    3274            �           2606    17513 S   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
       public          admin-food-strapi-db    false    255    285    3294            �           2606    17278 @   strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
       public          admin-food-strapi-db    false    247            �           2606    17498 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
       public          admin-food-strapi-db    false    283    3274    247            �           2606    17503 M   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
       public          admin-food-strapi-db    false    245    3269    283            �           2606    17268 2   strapi_workflows strapi_workflows_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
       public          admin-food-strapi-db    false    245            �           2606    17283 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          admin-food-strapi-db    false    249            �           2606    17518 2   up_permissions_role_lnk up_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
       public          admin-food-strapi-db    false    3279    249    287            �           2606    17523 3   up_permissions_role_lnk up_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
       public          admin-food-strapi-db    false    3284    251    287            �           2606    17288 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          admin-food-strapi-db    false    249            �           2606    17293 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          admin-food-strapi-db    false    251            �           2606    17298 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          admin-food-strapi-db    false    251            �           2606    17303 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          admin-food-strapi-db    false    253            �           2606    17528 &   up_users_role_lnk up_users_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
       public          admin-food-strapi-db    false    289    253    3289            �           2606    17533 '   up_users_role_lnk up_users_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
       public          admin-food-strapi-db    false    251    289    3284            �           2606    17308 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          admin-food-strapi-db    false    253            �           2606    17223 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          admin-food-strapi-db    false    237            �           2606    17468 6   upload_folders_parent_lnk upload_folders_parent_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
       public          admin-food-strapi-db    false    277    237    3249            �           2606    17473 7   upload_folders_parent_lnk upload_folders_parent_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
       public          admin-food-strapi-db    false    3249    237    277            �           2606    17228 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          admin-food-strapi-db    false    237            �   �  x�՛�r�8��Ϩ�(�����26��u��@��p�wHY���$EfU�b&S�J�;�gQ	
>� �]�۶E�`���hK����9ibW�چ�4�S�������������`����~��WD�i�����N^^���@�W}ה�`��-�t�tsS��AYk�txrmZ�9��	��A,k��t(Tc����z��Z�������w�(�Nlgx���D�2��?G������!�O�����(�z�y�%0}C���z��UX����ܖM�/U�o�[�����uP��?@E��P=q�o��eD��h�_�h��<˺���sZ�f�� #�)?,���J֙��op�g����-�}��Y�/ڨ2�<���/��R}��_�$j�{Ӿ����o�������ީ���J�����g��|�ެ{�vU+ty�B�K���
��pg������7�@춾�΄�����ڔ�W��^}��7�`~SߦV��\v!�q?t��6�32��+n�^ŦUO������Dρ|�X��7��i"�@�u�PC�R'\���~���L�M}�1��YaɻYӹ󗎨��Y��N�}�M�<}��@���JE�3EOh� \�7��i�P�S�/��Qyx%�~t�-��#o�pIb'HU,s�
-l ������#��yg���|&���qW�pИj�uS�PB<��&�~��~�&u>�xO�cɛ�I���s\q���V�D�8�������6��$~[PIЪ>(C��x�d�:�ϙByr@�Ik��](���7*}E]��P�X�̤hΙj;q@�4S�r�9·�K3G|�1ΔJ�LD�E�y+n��ki���~��F��+N�ʘ^���C�U(�݇e�o�����}m5����yTd#gmS�U��c�f��>C�D	���3��J)�VG��3:T�X��f���5������ ��v\DP[�'�WQ����M�s���n�h�����X�c>EAk#YF��?����[ꆛ���%�4iL;aRȕ�����~��?��M}��_7�s�´D-.��l�h���̢������z�o=��1�^�>����覾�PB0�#����0}�JC;�,��D�4�؁'��}sV�<Ϭ��f�j��O:�/aR�����.d�ٯ]g��Ø������7�v�9��٬b���җ��1ȵ��$.�q~��n���ׯ���X~ `2��ER,�JB�-E�z��f���t�g���2�y��H���+��x�ۿ1��\L9��1B�6�����|�G�޿1�09�`�h��Y&����T�$,Cͮ3q�fà��o�+3>��@������a�m�Q��|�h�f4��_����O��(���M�kS�ע����u��QT���M\|����~������&�#�Ο��G�D}(�I������OK����1�o�ز����!�G�N&/Z�O�;1��X����|bj����,����F�A����ߌ`	F���[�n=UE�7��)�oR�sٙ��<��UZ34��-�H�Ch����Ov_�?�8��c`b�U�M0��M5XǓ��>s�1��/�g���#>͑r����=!U�SFUwk��4� ��虾�
�2�7hV����qɱ�Ke����3�݆��p��וoc�����%覾�B	�x.��9_�<^�xVK0w�m�>���<�y,�����#�oH��&v�]^��o�:se7�� AP���fè���J�d2���(�_����#}{����$8�^�z���:��t<�k0uZ��v�\w]B�7lg�V�(f��<�b`T�%��qS����O˃p��K,A�M�^ǖ�Ȅ��aD�qg7U��^٢���8�)�<���X�ڨ�b�j�T�ez�'����/��9S&��>GC7���9I���Q��-MX2g6~t����Kﱿ�g����:����r�佞۔H��c�k0x�G:�0��<0s�6��vp���0B���Ù��
@Қ	���m���J���U���< ���z&"�]%��`"\�2u�w� �~�s�?�8P)�r��?�wz���jH�u{� �� :�`����T�&0&�4c�Z������<j��,	�h�T��Z�a��um*���fZ`��D�c!��L5�V�CɈSCV�(g@�D��a�.oD~�R'�
;�2i�n*J���8����.�5?�U:�7Hd��&�]���c�6ǫ�v���q��N�E�zn�Q)˖ƈH,�3M��87�C���򙾁�ɝE5+W�E�������Y�b��K���* q3���b��T�N%��n?��]�	½~�\��10�Y�/�f�rK���
�M�x�"Ϳ!�k��� ���^�|hj�)f����>�u��^ku�o (��FH�d�N,]m��T� ~�\]d�g��ѓ��e��fl�"uڶ�%īM�D@�schR��	����8�H���l�_�ٯVUm��z��Ղs}�����(�{��cBs���W}����AŠ\p]9T��Y�9���;A�1�c�|�����A,��T�(7}�ȸ�Д;f�<�K��B��Wv�����aq�ҬM2�(��iX̓Z��ǿzԳ銮�7`�
�n4k���y;O�<m��_}Z��{ā	�:ݚF@�Uh*��u!�%OB%�2��i��5����})�T��Z��NTIeQр$���
�BY���K��Lr��=�ߥ4	B�r�uo�19�jL)d���<����)�6uO�S:�@��	"���$�F�8�z�l �����噾�A i-Q�['�m��y��b�Dd�,�� ��Ӷf�}�O���E�X-? ]l��cyCC�����\�U��e舢fv�i^���ء!{�oh(��N=�B��\��>ע���\��B{�oX�5��ʌ���S]��"U�g�5�S�s}C���z�w&�u�#�u��=�Ր�=����Z��nEЦ�E�2o4w��OH�wo������u�cUZ$I��GK���ZԈ�H=�7,D�+�_�(&e��ooE�{��Q����\���k��mVX6��~���Ѿ��5x�y����A`�]"X��(��O|RES�7�|�/O�}+�j. ��3}����\�O��1־��<�	�v�.F3F{#�3�ݚ�4&�ª���rM$D�r�RH��G������:��$�tz��3;� ]�kL�w���A
�o��p!#'+�Y���M��잏>�����없c�]41O�`�x�e�8��9����`]�s�� ���LЦ��Ȑ�:��6FGo{��\����{C�s}&@��j�F��<�lVC]�4=��� ����4@#3�O}ȩ�J4�[{o���?��LTu�LpQ�-z���$�a�ڞڸ����f+~�\'���HR7Ø�x���Z��`6�׵U�}p�o�0(
�`��Z&in�ޠ���Q]zq�Z'��˧'�Q�1˭[,gh\��ɱ��'/y��O���K�[�jK�I������vp�=�7�
�u� F���V}WH
D?�A�����f��ޮ�/��QK��3BOb���k�;����]�d��FVXL�,,�O��ts%$�������,�8F9)p�k���;Y��F����90t�t�����dQ�!��?�?1��|�z�ol�n�:QR��kb�Y��>��'�?e9�=�ߌ���/������!d      �   A  x�%�ۭ�0C��b�_�z��ױG��XH��)%�K��{�g��+���S�*)�դ�2T���Pm�+Cu(>�y�m(��UƼ��%�^\b>���ԋK�!��+�b���������~�|�nP��a�A��ߓA���4���"�
�oY!Q(��
�B�^V�D�Z��b;��XlW�-�^�؞ (���ӱ��[�s&�����@<v�7����������fdq� �φ�L���v�`�-H�N����}��F�s���}�<j��AE;��4g&MG�&��
�w�<F�ΞgH���@���vy;�u�����Q����u�޾������>U���T��3�T��if��h7���.�1eh3�c��f�ǖ��Q���f��m&j���a��/��a�����A���88HO\8�F�����3t�����ۄ�����tۜ2ta�K�.ls���<����<���.���48�'CxA}8�5��`y����2��`-L)��Î��zC�}8X�7�p�Po��`���Y��F}�����zC��6�=l�z_���������      �   
  x����r�0 k��0�gp��m��nIMd�p|}�h�8�f�Э�]���)�5Wm�t�^4��eU��yT�U[Fn�Q��@1���k�PEh%\��E�B7O*pR�i{��eiV�i���5��Jx�w��g�(ckݍ��Om���cGyZ�NR�a�T�曮7��h�A�)��f�^\?�������|&5������3mc��t�ߐ5��&M[v���3���<�+�x�d�_���z~y�sE�/�N��      �      x�3�4�4A�=... :�      �   \  x����n�0E׏��yصʲ겫l	�y,_�$mȮH����{|�1Ԑ���Q{�����(}>M�f�]f�� ���3�)�J�*���>��"�(�8C����(2��e�)��4���x��ʸI��xׯY'6��)�Vd����9t\ő�u�*EŘ�x(j�{��{8^�� l!8ֶ�����zA�&y��p�Ӳ�����=d�� �Yf�l.f�|*QkI���>)���+��7$�����W
[Sצj �]gYD�/�"�'��+��:j������o�����aiZ���C$f�+��x<��� ��A�CO�G�)��S���ߴ�ζ,�0�K      �   o   x�U�[�0�﹫p�;�'�16�&��������Rpr(S�q}�1Ae���B/���Y,F	7y�n^/�K�{e?�6#�(j�x���Ƴc�� ZK�R��S��4 p�3�      Z   E  x��k��6���W����d�jj��K�-�Ky\qH��h�]YR%�[7X������%7|I�4���j7i��f83"�EI?8��r��i�&�&|�"	Y�\|��E����7-&���$c�IY���cP�(����0((�,Y��c0+�S2�i0�yI�9�9��'%y���d �k�|?�s�K~`4��,/xBV�DtNʘ�Ns�ݦ�2�@�I������QN"N�1����1+ħ &3C��� �� �����C�wM���#X�,=x��$��4VB5+��K�x�e�����nI������)t�Kη6��q9)�g�	�L���P�/#Eq��&ቁ!�E�GΜ��0mޤ�4�$~��Bv���[,�p�B���h"�m.>���'!gk��~2�!��{uu��^	�[B7�H����ffK<'q�,�gq�R��Ӡ!z����1r:�9���dQB$F=Gg�f�]~�6iɥn(��D�?t��FU���dzEci4�h��LC����J�t�������
j�7��u�Ҋ1��Ըw�afy�VCć�T�n
#�,�����Y�UZ7m�%Ǉ��t�+������&eǏ���ۦ@���  �@PH&��*�h,��&�<��e���T� �s��1p�w}��S8S�%�T���DY�-K3�$�V��d��օ���zY#�<�Hg��Qe�����Ѭd�vZ��I8�ʬ���<I�S�=&�,��z���\<]R��k�%��5�G�0�Ȃ�R0�z8߿���#�$̨5D�a��h�)KD�����W
�{��aN	�єp���|��i���<�ɂ/a&췲r{�͎89��d�%�QC�a(;��f��)���6�z����!�w���x@"x���ǺP)WG�|V���$q%xF�+
k\ے��8��nM�xhY��Q�9sqd�5�?W&ㅍ�R��{���*\a�F����U�.�s���i��K���w{P_
Y�p�onR+[*]��Jem;�4��/�ԍ��ml�
B��,g�y�j�HEٚ�:C4^��x6M�+?v��<?��-�;F��4U�pv�W�/f�|��8��/ǿ��`��
�}q��`�mnM�=�fe�$���j�U1?��b��JO`R�A/�<�{0�D��$o�G�6�iP~p��nţeċ� �Gk��ŋ�r�i"�����Y�3�F��� �@7j�]P_�>�D*�����&%_����+ �����'�;��&0�"��<b�i����$9��ŴC��%X��BŲ����B�Ɣ�e9�c���Jt����gR�ba����p� =+���hv�1�I���q�|~w���]�׼�zcAc�ç���T��|�i��sJ#^uݧ��So��m�,z \n�R@إG�e�KN�`Z*��F,��B��4@�ȧ1��t5xө�D��B�����G$ҭ�E9�R�P_W�q�u�+LXͬg�D�D9{�5R��!�F蒓WQ	�J����|#��wzd��#�� �i���䁊R���(�BUQ�L�_�R=�GZ���^	���{{���9yY����v�\Iѻ�7�Oj�.�(P���TB?&�kBƚ�_�;��f���aj,y�"XP53���Ok��:���5� X�p�˄��`-Kc�k/Z� ����k��ڦQ/�c5j� �:��*V^���W*NWQ�	�DZŴ�,Z�s�P���F�(~��ӎ�����4�ŵ��\״��k�ы�v���id�9m�#�&�#[c��)��xI]����� �V.9.ԛ:6�����
e+_p�.�%�wò��gq�#�i��}�J����a��s/��żȵY|{���0��T.
O���53�Y����������̺&I�N����p�����v�*�X� ��ȭ+
,*�j4�?ٞ��`E~&�td�	>%��h���r�˫Q�d�ן~vY�)�6%���EԄ��]�-���rIi���վ�=���	�����έ:c��#���U
MP���l���ڂ7�[��(7]3��|s,�S���c�Y���X�o�/�z�Ƿ�/|�Iz�|���ii�9:�f�w���<���'*�>�~�n
(7K�������q�*�0��B�4��352�G��������������_I��)��CH�1ЁMM�ϱY�: �ʙ5h����핎Vg0Zɨ�����h�O��	mE�J�S4iLߝ�`�Nz���V$�d�x�E���2�A8�Ӊ�=��XC�1�1�+��鸁Z��+6I8��y�����\]�����U��M�r�ś�� c���vx:5h���e��#K�-
y�<x�}�-A#�_>�Q�i!?�U��bK��(�D���������4���Q���?��3�����@($�:���4=��8;SG<�r�L4U ���oFo_=}���EY����˟���'�7K��c�,���S{��;Nz5Vᒆ�����'a��	5sFN���y��r]n�.vG�Ē���sMN���;қ~ǣ�����to!FM�x��l��tF��P��ӗ�?�$���u[��$	i$�0Y�2=��
5ͫ*�v���[��6,
�X3@�Xn��(,s^ys��W�E��Y���e�;�=o
@�_ ��� �̻�e��n�ɒ�ں��0w����wcq| ������I�"�9!�6�7�l�@d>����Hg��)�Z^���E|����!���#ޒ���d+�^W0�"�BK�?h� �/V����KR����x>H'*�^+0�e?Ț�y[����l ר	{�1��9`$�r�H��qr��6� ��z�1�f��-.�I�^����˽%ݭV�ѧ&A��FRr���q-������4h��2����l����I�6��v��O��F�I^�ɯ�%�e�� �y�S`G��:��W�;�\���,t0A�(�m�9�?�Vy���:�!W	�� G��[g�jP��җ	��߁}�w=�3��U�k�Ԃ���ېd�m��4�֠pN����{������"Wԝ�m>���˹�5���h�|ߋ\���!u�rP?�r�X$9o"ߋ޻V�m۸ �q^��ҏ��x�q���o�S�5v��G9��'ItR� �.��WI�ݷ���]�R�jϬ&m��X��Ҳsv�k��b�naW2���<4�o	��M
ݖ����(+���d�z�ڵxA
�WSV�o.��;v���H�ŢN�4��4d-��o���0_U�|/��\w����bZ9OGt��d��1��X4U�X�*:��vɜ�K�<e�[5q�(B0�V��1��޲�$�%���+���PW~H�M��G������%���&��H&g�����R�}O���4��������S��f.D��ŗ��sD6��,�]�[���Q~j�zwS�(��'b��G��]9b���ײ���g�����*^��4��o����W���uC�{�X��9ο�|��t)���:��_��P����B�K���z6�
�[��VA�b��S_�2��X�B��� )\�ػ��S*;�v�]����f�=s`��3�V���̖i�b��L����Ƿn��?�d�%      �   �   x��AN�0E��)|��ʴ� �l��&�:M����)��#$���������]��mm���3}s�Mmo�K-��Bx���{r�r[,\
ګ�Ā�}� �A��Sʁ% ; {˥��1l�� Yp�1�k�NP()�KD��|�%d��2�@q� fo	(�#��6�,G8�k��o��F1ݨF�լ�Y�����4OӬ�`����?ӛ�b����O�^X����߾�      �   �   x���1�0����.Tq�� �k�V `��<K0D��ʐ(�[��$��^��zo��>\�m�~.|?DQf�%`3Juk;�c����֠��<��e���*>�9C��R�P�sg�~҄�j,��Ƃ�+m,��Ƃ�+m,�y ��b�d      �   f   x�3�LI1*02*07�,�4ɰ�6�J)/�J2�tKM,)-JMQJM�,H-�4202�50�50W04�20�21E35�25ֳ04��#.sفU��aq� g^7b      �   4   x���  �7c�Ӝ�b�uȃ,�BA̰a���h�qvNG\�f���Q       z   F  x��WɎ�6=����9Qs��c�0	��2�J�[���m{��R�Xjki;0YzU��X,R���K���"���ǰ&�3K@��*�}]���/r��_@�y��j����2 ��'��ԫA�A����B��ޢu���ej��1�R��t)q����`�.d.a����:Z��0Pqy��J�(��Tn�p� PU�ʺ�؍'H^_��Ve��Y2`9�?A�M�ܚG�hRP*Z<.E\�,���ga�E��$��M��)vf�}��	�������ccz�Z���o	�o��:'�Dͅ�gF���]v mr?n�У(l��Y`�1A�z���Gj.M�)s,(�8��a�V��sZ6�LN"�$>
���J%w���J���<�WN � a���b:=�)�G�Bǅ�%(�'�](,L������D��<J���z�����*�M��:)�6�?�a��3w�uca���T��Z��ku����8�[��25�~Yp3�a����Q��*6^�`̒����&�1�3�������ϛ4ճJ��q�Ԃ��%A�AM2*�bÉBrE���q�U�9��y7�L��#
��GX���{QdS��� ��Fh�� SA�d�(�!�`���"�Z�� �Ȅ�	ۈP�M��2y�n�G����S5�#,
����z`ʆz8�H	u���L���9ܢ�ο �]C��^!�B�Rjٶ���J�<DL;dx�ڿ ��A���Bz>�H�U�E�K�\����cQ�&c�>��1M�.�5򦋼�+ă����?��D�	�7���<_�
2n�s*t��z_±��`Q�����k+t:.#fm���;}-�����ө(�1��(���М5��/RY��?E�/��j�_����s��� ������Ca����a��l`J,A�d�QhA�/��'Dy����8�X�R�D��nw�l���ö-���cQ���^�uS��y�m�8@6��$�����t�*��P����"_}�e��>�J�k������ny!C��0��D!�SY��F,u���>\P]3y�z��|.����#�bn9?i��w����?�{�J      �   =   x����0���0�C����s`�TH�,7L=�Y�.Ro9�Ǿ���S�/e�8�+��~�C
      �     x���An�0E��.�����݌P4�T
��������{�E��O�@znk�^�ʶ\~����O��u��K�&+߅i�|y���V���G�C�Td�B�9$��#��{�X�#Q��$�a�"l�{LX�Xb�Xd���3cǲgƒeό-�^
�Y��=G�c��z��s�b0����|7ltTX��'F��c���YU�!Y[��
����G�ڰ;B��3�g+S]K{\��I��!aK@ �� �u������ �|�M���2�+      �   �   x���n�0D��+�d�A�k�ko��b�u�p��M��K����*��fW3�v2��%F��{���`��Q�>o��68��Ǡ����)!(�S�Ȃ�j��`\ִ`�Q���3H�]���x�a�t��zf� ����@M.|�u���t'7�����=&�h�\���髶m����%𮗢�?Jѵ����B����Zt�A.eQ?� �      ~   �   x�uN�
�0���Ȩ�!�b4����SGk�!�R���Zh�;���OÕߖ8O�;��<,m�vn�c8��w)�2cyƀp0���T||.	QIuQn���o`@��k�f7��JŻajS+�bc�Ƒ�)֔$c̪C�^��ȕ��\�����������;��@�      p   >   x�3�t�K��,�P�H���L���!##S]c]#CC+S 2�30��60�#����� ,g      r   �  x�͓͎�0���Sܮ� ��ɰ�:�t���ng�1����m ��k`QiD��4�te����;����/���/l�S��9���[xD�+��J#L�=�O�;�|�
Ë��<�k'PW܈�u��i�Z+�I����%��8�RV��Cey��9�N��������%�ܝ�a���;��FI���[�,v��țDY����!
6��+t�_��JH��c'pS�I��9���5��r�����;�����{�U�W�z��Y���QR���Y�XT��eZ�ǫ��ν�}��ə|ȍ���nZ�q� /�O������ҡUKK��aR���ڄN�y��B�7��D­i�W��6���r`w>؊�,
��K�%���f7u7^[_���$�緇�����X6��?Y�4[�)�)��V+lL�B�	�n��{���v�?C��C      �   4   x���  ��0�'U�v��C��K"���/4�m��>���¶�7H~�<_      �   �   x��O�� ��)�� �Q��]��P�YiQ�����]�Mn��Orǈ�f����^�q�;Z*�7�\�
op(x�5,��ͤ	�a��Y�:�#�F���;¤6��fL�Y��D�L3�����U	+�)�%%��dO랱���yL�Ⱊ����E�o��v�GCU��y      �   K   x����0�0L%b���t�9�_�t� ��4��6�8(V���t�B'�Pge�n�މΟ�8�n���{H� Hf      b   v   x�3�,M��LO���L������`|CKKs����������\N�DC��b#}�HC=�p��#��2��҈(C����$�D�$�b��,w3�|�T��@T��b���� 9%~      �      x������ � �      �      x������ � �      �   }  x����N1�ϳO�`Q�I�m/�z��3��v�jgw���x�h���JH9ؿ���>�a�Sz����������\�[-bn�Ӱ1���ƣ�|�j��N������ݲ���<��.�v:,�U9-*�M�)��'��n_��ܻ���@�cT)����h�����|-����4����TȷF�Tb��$ŢDP&	X�M�c҄�['�,B��-�pw��y�qm��z����+H�@������v{_F�u:�H��xw�g�y�rG�y�o����F�#߿���~�m{���%b��8RtNj�N*c)�h�lu.Q���9i�4TZd�Ђg�{j��`�M��������<�!*�R�:�ȑk�*�H��t����;���j����l      �      x��]�r�F���<�[�gKd,_G�ɮ�8��dc�,Oj�q� �)"	 %+)U�k���l�ї�`�$hP�OD��O������|}��V��b�
-��<ZD�� ���rUDU�ס�����,���j��Q2��:�kX��J�������*��.24<��:�(*�7%��x��Y�ߥ��G��y�.~LQ�O��h����M�UV�ˋ��[���"Ay�����@U�DUDUJ�_������$��Yt�2��CZ�Xl�|��lkQR�T���tI���/�Y�Y�1����L��%[3.�G��T�7�5:G�*HM3J�y�(G\[iԅ��l%oҤ�A*��.�}ԛ��r�;�BA)�G�i^̣��TA]�X�V��FY�iI_Њ�J����N*�	��B���j4���y
�F��ո`�J
-�n�}�q�>���R���B3&�G�e��St��O	�BMM����uJ��t�a�h*���s"J��u�.5Ws�3�S�+dƳ�T4@AÞ��<��6�!\	���^��@Q�����[��t=+R�{��e�ֵ�DWU|�z%�g����u�{�4-��Ս�l[�7\�:p�eP�]_" ��W�2Y�4��x�i����y�?|��O��4���Ww�2 ���8����4�� 8y����/��N6�}�����Э�`<VA7 -8�[It�2Sq�!X�����tЍ���#��d�>|û���wWG����}�|'N�Gpc�����u�"�	��4,p_�5�!{b?27/ܛ�Y�ヰ'������'��#�Ѐ}�M����K�\vE1��\rȥ��枛�V���
�n�6�J�Z=�PI�f�G�X�雭(Rz�|1��8
�<=!Hq������,�0�X�`i>T��
Y�@sz��f���Vv��(CQ��1��~/�>o��RB��S���P��\�����i�}��9�3_��/úPU�U�UT���0�:�h�](1�TQ�x��-�9�g���s���
(�C�0��W,i+*�K�������J.m���Sx7�r��U�U-S�6M���s#h�Wl�g�z������4'JL�VYT(���`��I��Ľ疿���4:._���7)�i�b��]]��	�v̵}S����"y�wL:�dqH�G�T,�����"�XU�W+�IG[��e���Q���UZ�D�`7�� }'�_���GOqq/���f�@���S�^��F�|��l�zkUWb��fY�]U<u��te���Ƨ���7'��V�"�i����6�օi%:}�֜����</�������mCw��B8Da��jA���D��aH��5*J�l��,��k-K�o�1kp�.~F�KxbV�!�b&�}
�!H04��d�����7�����SyKc�c��*<J派K�}P5�/Lj��g�.εHf�hԤ�jr��Ѭx���:�Y�}P�O��$���	>֜C��U�M�]-J*dr��
�J��w\m/�l5_Ը9L�x5'����MQ�1JDDg� |Sʗ.􉠲�/�oB#M�Ȟ���	�K;ɇ�*���:]��La]�<>f&Q��C����V��I#� 94���{���^0HCv��?
�&%��Y~ed���=}�9�{���y��s6�	���
+B_
���O8ɝL>;��50��\s�'s�s��;nvU�(M�Y��
̠1�������d����e��BږAˮ��+�x@J����)7}[��"�y�\��xi�s��J.S���0��~N�Ā:�����|,��%�L�ճaH��&��وFi�����f� 6@�!֛��� �������F�goK6���T��g!耗��Ą����4<}��9��6����q��)��&�H$]"��]�ww
!!�SSh4����_�s��쀢�*��R?������ ��w51�z"⺛Y1�YI�����r@8kK}K, {�.T ���Ӳ��^K�ت�Z�'2�� �3y��
�3�0���T��%4_V�d
d/�;0Ǯ.5b�ufY�-XE`=bN�x��4�:�0˪s��,���Lփ���F@��D]!�/�R��7��]yR�n��u��=R�6@�{����c7g���oq���X����jm|��[������`4@�;S���c�9+E?!��)�?1����s�r�Cbh�R��v<���z{B�BT��R@�[v � �`�%��Ka[l���&/��Y~S�ů�N-c+ݙ��_Er༜��o�Z_W��\
�c���Y�H6�t�9Z]��Z#*�+
G�Q*��:�
��;R���B�*'=ؗjV �B G��10��Ĩ��嶨�L�j���4��:I;���l�
8����κbf���V�|	�Zl����	o@g������e���$���;�Z�q���N�'�G$Q���k:��u���_�~��ُ?�:Q9�6]�=9�&��UP1O�ҍ�&�@
4�&	\.p�C�r���F'0a�N��'����9�;(��vO�-��}L��8�#E㱢4VˉZ>��keY����Z�������:վ{v�d�n��8(�k�MN9XFe=T��@�5�=5j�DɋS��!��:zO�kC����К����[@��� ��Ak���d��B��T$�N�p�:��/r��)�3�/�X9��ķiU�˲���VG����xu�kNX*fךp,��!����z͞x�=L��,�V�錕W���K
� �P �{��%��9F�k��Ҭ5<�6j�D}�{a�M	�bC7_�r�յ^���߀X�;����(U�cϚ��^��?ΖQY�䅺]P�����V���z˥��W����Lґ;
I��H8��S*�j.�bqgs	��U��8q��ȉy�&'fc��N�K��p���4Iȯz��m�8*LhA�0��%tK���t��{�-�"p�M�!+>��ezz��̋۱�AJ�2�Y��Ҧ�R�1����	xY'iwoh`�@���
�K���uJ��I�?�DR�G }�����9,�A�=ŬP�f"��j���+ge�I����6V�֔��� �#���6fw��	�C��Y^�Q���gICeȅ�<݄�kha3���`��_��d�4z�V��ne�6�+4W{@�ϗ���K#���CeyeŧXR�� �}��uF� ҲXLڅT��2B
f����4XٝZ�Rp3�ԮHT�bUVJ0��Q���ho3�x=�1�E�����5C
��G�n�$<Z�ǀG��
<�D�����1<s	�K��k��f��eC��Gy��&�h,5�n�����4S:��أ,�o����M���ķ��zFN~D�$�?>J�3GI���ʪt�m@jI�*��B�_U���_2�бG������2@�(�����఩z6�`UwoU}@ԨPՑ�͚�`	�7rw�qi�Hf^��c�����+�[غ��x�nD<����h�����&.A:��1VHE��H���e����(��x�EE�~=�%����um�\4{ ���+_H��ҩ�,�vA	�࿵��)�<x��.+���MjJIk�go� O��d��N�泬����s�Յ;P�ذ�=+�����ᐑ���iq��	���mYB0��T�]kk�Һ�j5��Ɣ���1�wwݻoUѿa�w@�I{��~��_��F!�������wܲ[+)+��q�UzW�B?�&IMc������w� i��må4&��{ ?���� �3 ӱ�G?�G�u~�n�jd������0~&`���,���t�ps�}���ؽ��iZ���h�8L˛o��E��o:l��������id�>�k���~�@�)����]OK�Žk��[��[���2W�J֋�$�H/h� �0�M�&w}m}��|�%?G�\���eu:��v���iJo�)�{���@������+L\�����;��
(X�`��
�K�|'��6z�Y�֚�V;nv=��f�ޭ�x\Tu��EU1n�n$otˬ��uSg��J�� ���.�m���˗��5��ä&Ljz5�9�;�U��qh�����h��� �  P,�U������W���{G��5��1�?����t��֨�eCC��C�n�v��_���.�~�~.����l��T#勌���*�FQ���X�*�|N��y��λIa�����*��w���%Vb�~�R���~��1��<���/�-�Gv���H�l�89�-&p����ÙU:@�lï}� *0T��jut�U�r�@
)�೑ߙIm���h����4o�|��5��V�'�۫QӖJP�>Npv��R�i�i��֩9䴇�tt����o;���i郞�y��#I���!�5u��q�Z�xЬ�����)�9���GY]J�;�%=�`��m�v��g5z�z8S�@)�������I	�h� 0��i�NW��P<�u��׾t�~."��ԭA�tR���M��`?g�n}�88�����������-������l���0�{�=d���H���;��'G����}qrr�Zd��x��a"I2�������r�h\T���#V�GKTU��is\��+�dNӬB��F]��f+�.�?�<"�6]���,������b1u��)h��x��V�"�<�D =A�����J��Yt���R�d�Xb���7���*��1D�P��,g����=��@�(9ؚq�>��5�hVܮ5���(�c�?p�x�@J�Q�P���Gy>  �E�����B�����i��������5��wQ�F^=[e�V�������}}�V����L]��NtUŷ�W����=�-�ֺ��>|�o�m����P�j���@�P����P�d}`�ĭ�nZM{�����#lP����XV��<���В��@�9�i��w�]e��{Ҍ�Aj?ڈ�X'u:�/Q��[��@{!-5[6Ǉ�Үͼ���~ ���;��L���j��D�s�T\u�o-ۧ���M=��.T���Uj�]�Z������+ni���k'l��hU�U�V9hU�M�|�a1�:.�t �`��O1Ӏ�2B�u[��^���pN�p=��UT��݌n��j��7�X��e�b��~��%�́"��58q�>���\DL*�!�� ��͓P��g�U{��EMG1��,�{K������;�Zв�ox��AX]i�����r��� f�6.@ds,K�`�]��my\6[FR��;eu��T��>�]/j�]�][tU����E���2�E�^�E��Բ+"�=�^�Z�Uk)�ߧ�����R._�@�-��j�~�k�}��J��$��+p1�]
3RG����[1�WyX7+�R�W]�[m!��ަ9"3?*��okj-����Z���ؾ3�vq�q![�?g�����c��rA�nIFMT4�h�VT�LAT�d��4r�*��J��XK6\�%�P1s@:Ț8ݧ�vI�q����N������8���͑�n�rL��zr�h(��D}���h�~d�b���]@�.��ip�z��:w�0Wr���Jc�ՠX	��j#�'�Z.�͖C��r��P7���N|u3�I�*��]h���u��0-?�K�n�_e��y�e�X�}`��n�3��°�VRip ��:�}2[gO����Ĝ\Ѣ�DB.'�1m3��FY���T>Б�1_���%.o�+r�=C�pg���8ʲ�(�z_Э����hU;�R��$ULT�-�)P:%��4%��>u��W�&�ը�chK��4P�Z��<�̐��]�LȺ��j��P�f/�̚
��'�ɟ�Z�yy�O+E��t�`��*R�S�1�O�jQݤU��rě�t�Rj�b9���\ɭ~�]~R��̓e�cz�h���p}�e���z;��xfTr<�A�3g�OI#+.KW�&/5��b@U�I�VHT�1~�*EIR�K�?����"�rE�����$'Ї�c�8�󹢲�/ϯ���z���v�%����E��SuaxuK�&�)9oV=#<-��5F+�:4PY!��Ԋ��ܕ�Ff�:��T�.���D��%�
�/6�9H3.������TՏ��pq�GW[��O\��"����x�g����-���^�ж}Mn��͍h�#��퉺��_^��yE�+4��Q�E픷�x�ݢ4-r��naB�䶉��h�2�?����@�����]�4��+K,MD4�?6<#��/cEWՇ�.��f�-'�jU̈Y^��L3�ˋ�v]`�L#���/�������2��o�|���������࿱�8Zpe�h0ͳ,�L�r@������|N�T,�ۿ�c�����߿�7B��A�������F��|-��1y7�ۡ�笘G���l' �l�x�b�@��^�q�ZTC1��h�i�M�b�6� r+��8�%f�5"u�űZ��8d�o�A�A���� ���m+<��oƚL�uji+�|�ë�F2G�3�ȋ���ރ��O���E�SMDѥ��bvI��q�Xe�GL��Ӭ,wxN��;�`�,�d�iͷ�g7=y������#l&�G����t��]����roO ���������A�K�!o�ux����������
dg�{��xpku}���,��w=T��z94�@$q ��[�Vˈ�Z��"�z˱Thl�^��	f
��̵��>���A{�%�СS�V��D|։W��ӑ�;�:����#uCN�lZ�>�Wvty����A6������?�V���=�(u7g5� n���>~�͉����������>�f����n��j����3uUB��G�H~T��t��Uv2�U�{u��wV�a�t�Zx����J�[��9@B��o�!�l�};�b(�.�|Ӣ�_�Ǝ�.���r�\N���cms�J�ƽ�,��C39�姞7��$���p"d��ͳ�'=%`l`��"����7�|}��М'd�.N*ViطWU~&��?��a��,�o���Gޚ{����_[�����=\ �\ �Xc`���R���� ����ٱ���Fg��M�qw���6�7��2ˣd"(a{X&���<���Zc��O
����`@,���7E*ر�?22%��錔�b�,�>���^h>1cz�)9)�BW���x���I�g�������xȠ�W�=�8ׯ�>{���7_?{��Ym�wǫ��(����( @���9�H��2==��"���X}�%��� O�~/��\`�|vcnZ�={eA�����?�糧�bUU��}QA	�d��*>�m�� ��F�r�J�jí�f�L��W ���D��|M2)P�.�=K�σB� ����3�׎*��.T����$�~G�w�!�����4�� aA	��7��p��e^�0,���Q��,P�@���]+53	X�7��6p*I�K;G�@AyV����iT��x'�o��8<�i��󿣴B�{I���An�|=�Y�7I�>��1d��v�TQ�P�%9�/E��3<��l>Y�9��|/�N��gv���k܋�)��і!5�p�Tࢁ����Ks��Qst2�xlq�5e��ͮ��YMqYWJV�s@���!�2��"�v��`�j���	f-��fStQ��ó�Ɣ[���-�4+�����M/�ߔ�A��򾓅&8�W�� _����a����'�� &D�A�B�6�ޫ�ŗ1��0����\]85�a� \-�Œt
���e�4�]@��v~�5e�+ç�tM5��������������e�w1      x     x��]˒�6]�_��ZI��l�.�d15�l�2.DB�A���T�}��$A�즌�L�"p���v�/���h�c����M��xs�9�����~��>E���p��p�(>9YZ�ǥ~r�<������&~9B�����~<7�(ƞ��>���4�$�F�������p����֋��>�-
�y0�ѣnr�A��u2������.�1�#L�>a�����-��<�s��o��iO���s���ܼhar���~:ϗ�&����ާ��s�I�$Gi����Q�4��8N����~���6z�3��禹ʵ�q��G5���7��Pt��9��qsG	ޖ��5����z��?�D�^��4�������K�
{���n�N����8"���Cj%C3���1��v�t��rQ@�x g�F߈�G&-���=Š&8=�Q֝3��d3 w�3���U�v9y���������$�!�F�B��n�^���p�ǈ�� �
���g��8�ٕ�q������m��R��;���{`3>������h�U&�=7�J7Tž�;��p>4�)V���]y}����m�%��A��s��$M�cpF�AV�Zt`L�1t���l���:�6�(G:dm%�J��p����m�T�z�����L6aU5��aJ ���TG�Zi\�4�ԃŷ�eek���1QH��bCo�:�L�WZUº8�dL�?H)�*�����Y��O̱��C8�ڍ��7����Q�0H6����Er�wӓ�2-\<QY0VTp0х���jŷ��i�ȀA�Μ�x)��pѣ�P�AQacq�9y�.�o�eO)>�l���C��{������^��[S�k ����ҭXd+�k[ h�6�G+=Vz�g�Z�#��Q���M*u�	c�W��	�����JX\��t��?�W�I�8:ƆWk�i���m!���m���۫���^��Z%3�ş���+5�!599 jX^rLa�J��G�b�PD+#k�y���`����B��W��%Q�ka�԰�Z��B���P��VM�|Zo�z�ψ��$���@#��Niɉ�=�����@�[�D-f����s~��a##]Ad��iD��	��&���j|Ԁ0!�z#��FIk[1`~r�Sy+XV�F}N���W�p@����}OT���͸ziPn�!��Ǳx*?
^�L$�$_����a�G^����p�԰*�=�)�u-lZ����?>��˯�Xw�56��&����#�
T�J0|��\ �h���vU�ǉ�c0t�I1���P��!d0�WdR{Eb�o�zgCkZ_Ah}���Hŭ���u]l��@�.9�����"[q[��Yձ�s�s��HN+�I�i��MŔ�h�)3���:��@�F�0�qq���$��m�7�X�ʹ~�L� zq_<4��%��N��M)��?�ڨT@��V%;pti.p�D|%�G�r�G��V׭�O�uɤ��
B鵧��i�~d�"�h`u� K�v��*�U6���L&=EHfR�DpUq�L������Yh�o�;%���(����V*�?璋��<p�,NQ�}c{^'<RF�`FlT`��k�
F>�o$0	�}���0����c}�Z�7��>bq�7��۸����P�Iz��2��]qsi�
�T�9>
�	:�5!���oJ�7rTa#���O���&����[�\P������7YV�:NU��>��Y>~UJ�������($�������(���
�6�����bƜ{�g/]gJ{������O�O����k����=mldc�+���K�r@FLF����B�Q�s���������X���u=���?`�b���;i$�kAS��p�eJ��J��V����N����F66����f��|8x�cr�>�=���J�����[q���7��3�<O��/��mw?[����G���8?�;����������$p�@�I���D4H�L� .����x��~������_�Ӟ0�`�Eŗ�m�iB�Ozz퉤���\x�I�`��3'C�)��w���I�w���D��*x��T����(N��"@n`�	�!<����u% I?^(;�9<���L �4Ew�G�E���v��\�#�\�S	��p{�5]�fews���k6f+�!��͕���!����w�j��nd"B���,_�����6 �J*o���')d�=��.�ԂA�P�ϙ$�O�W�[�)��ZH#e/����N(JC���?�\����y8��}Ipq���h��C��PE�(#�z��&���b�%�z����U�%
yaİ��c\�ҋ<�0^�i^$�
��|8�K?�o��M�&�QǞ�����L6�7*e+݆��ru���� �We5/`�ѷ`��|���#��KB��ib����l6Cke�"�
+�
7ϧ�ޥ����>S�I��H������T~2�(�.�H���v���AWN��a.��sw�C�9�CU�i�Q���*����Q����H��AG��6����O4p�Ԭ�4Ak�I�Ml�̆���*�:�*���XQ`��U:RU�Sh�'����;�ݾK,��P���1�N��c�1~c�佉�q4�9C�_�e�T��*�ѵ�~l1ޚ�C��5{z��i����Gv��K�e�^��G�K���L���������l]�(�Mf����F�Z�G]��Q:�'W�w2��ΰ�1_u@Н4�I�yF��"��pxW�H�-q;��if��=I�p��]�g��ۏ3fG�����9��9w�NǞ�]�[h�c��b����n��^x#��S��x��	�/e��>n��*�������MZ@#T����|�̭�#S��gzR�%룉En�j���[��֗S�@��Q����l&�'֖���2dL�U*�L�S�j�3=`�k��B��B���Ȑ�$ތ;�X2�~�Z�ȤE���&V\G�]����f�(y��e� �A.���H�ӛt�Bl�<�ͪ� ۏ)����'i^�ݙ5�4�����m��W�cy��˦�d�����_d{k$y��ח~`7�ZOu5�.���X�o��Y�����6��Dm���M���h6��ǫ���.
F~�
_�΂�� �i�8@����l�a�tri@w�r��m�a9sNrD��aW&r(@�q���(�X71Q��1��SCџX��'����xu���7o~ܽ�a�����n���՛݋�w�����w�ovx�����w��>�ooߧ�����˗�'2]�      �      x������ � �      v      x������ � �      u   �   x�m�K� ��w��5<M�Z:�pU�0q�%iu��L�?9|�#f�f'�b���\0��Rƺ���91P\�6&42�L<���s�j�J����@��Tr�=�l�.�����YH��	��>�;���ej�I�A_N���%+������ٗ��i�)�<���Ś��e���E�sx� ��{Z�      ^   z  x�ݘ���0���)"�-����z�mwl�(# ��V}�Cv�C6=�R"���=3L�J�y�$ɾ�*�ܴiD۸U�82/w��7���u�`Q�8�w(_{^�sC�}!d��n��F-���|v�ߊ�<��2��A @�e�{���Cp�I��J��� <� � Hv�U�7�yD�[l;͊�L��q�����g���q#T�e:	�*[Q�N���VԮ��ᵾb���Q7N%�"o�\��=b��O��Yc'�;�)�B�_׶(�\vU���L��Z�xPu�]�B[�}��v��F��<�u���qP��=J�������~0K�N8�#ȋ(4VP�f!�w#|�C���Vp؊���^�/�p��̎�Ve�����q�Փo�r��
pY�n$��I�&,��,������=}9!�� v#��8��3��3zYG��}Ñ0Q͑¤G7+���}-��\n f0x����$�-�Hx��*��)V�/j�� |����KW�T
dTr���}�I��>*X���FB�qu\e�t�׏��3!B߈��b�������.�*�`y�,Ԫ`=��'!�nЏ,��\�y�b���� GC:�������N+�Jjr����>&�%L�L�|��f�i���lc���B��ˠ�����~XA��u�H�h��\��)�13�������o�J9�a�s&IV�Na��-@&���O�v��3xiv!�Z�84e����	���8�7��ƕR�tt�6���y^���<������H�#�i�#8r��t���K<h�[N���g亾���s�yc1���(�W�,;��X������GYs�5�f�-��9��=�x,a�{�W�c��{w�Z�2D%�      �      x������ � �      �      x������ � �      �      x������ � �      `   �   x�}��n�0Eg�+�6���4[�~A�,��������\$�h�tժs�)��>�W,gW�*|�����4����z��4��PR�D��s���������q�����i��t����W*S��b��ms�N�G0�yap�L�f�10A�A�1o����a�iIt�N)����e*�M)7�*��F��$�"�Q���lF�Rk��}A      �      x������ � �      �      x������ � �      �      x������ � �      d      x�3�4�4����� �X      \      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x���ے�(��駘(T���۝y��AA<!Q�~��������#4��#�O �e�笫u�Y�+�M`�ꦲNZw��՝s��\�$Z1=Ar���%feJV��t~�}y^0h}�ҍp���y�`�Y<7�����I��I��ܹh�x:X
b�榎ĵ]�WM"}��z��c���?Rd	��A��30��ܭ�?k�/�˝��
w��4��?��؋4��r���p?�v������E���,\���z�7Y�e��Jܮkr��J'?,CP��DWV�{�X���<��:�}S��T �npԙ-F.#�4��]&�y7~5S�Y���?��S7bw�Wd�b?��7�=8''���"=摒*��s!$^�J�|�ʲ�֜�1�G��&h���b��iI��Hу:�B��H3�X��@B��r�� �u��o�[,�n��0M ��W{*��m��Z�p{�^�����:y�T^N��Y��Ѝ�8xj�g3�K��_ߢ��鑯Lq�}P�ne
�40�)Ȣ�"��d[~�)�\@��Y��\�jE�ȊKo���Y&��n;�A�ĸ$i���a����P;��}�Ya;�i�ѰL�Fr��1�9~P��ʀVm%u��I��Gͣ7��?�ͷI~Byr���,���q���������c�P�(}P��N8��F�1��v�[+��?�Ò,a��ӯo|�EVG��qsQ����/5�R�%o7 ����D�����ǹ����lcw��Q�8���poM�?�x��������&      �   a   x�%��0��0U������(&�ҝ2�<͉i��j�����n���-��V5�T̲Ec<[��kP>K(�m8��AR��͛�m�}H���      �   �   x�u�M
�0��u<E.`0�Ov��K�&j��&������Y�|�ea�>;=<�n貛)+;����m*tV7�[�ǾUX7�����[�Q�5�t��~R#A���0��0�`���7���@Č$;����V�Sbm��,u��V�>}t�EP��m��|��	�	��p���~5a�      �   �   x���M�0 ����+:xuls~�S$^3(���6�9��}���==�����{���e��2���5j2@�j��i�	)1j¹��Qb���
H]		,*,�-�K�fy��6G�E>z���x��.��7l=�i�H�gE}x{q%WP&�h�Ե1�1��8d� ���	���B�W=�      �      x�3�4A�=... ��      l      x������ � �      n      x������ � �      |   �   x����r�0D��+�㻓d	�nݸu�0��#����q&i����v	��[�ڮ��ٍKd=�B=AGF6�䒌G�L:���]�R0,�d�[t��C��{�u�C��4K���[�.	=Z��"{��o̒O.�1��������Q�n�ԯ��[��F��*��a�ķ�(�	'W�      �      x�3�4�4�4�2�4�F\1z\\\ >�      f   �  x��Z�r�8}&��-ˀ�b�`^0(�*\\<�����h��٪��`�nI��Eʨ�h�^���5��n�sU�7M���t���ԕ�u�E*����������6�hu��%��fO�6(\����)�}��\�9�!�����hAj�lv��6���ѿ��߭���7r-	g�!��m8W��D��Y���@3CM����@;í��A	��P��R��f���Q�h�}���>	AqO�Ihc�Ǟ�miaOirs�4�}�����
��R���bqz�x�O�R�+�`F�W᭥��ϔ����{S_�bJ�R#P�(e-���n�S�~��*��"Gz%�ˡ
;�'�FŴi�����@��Pg��8� ���ߴ$9~���:A�ʐ�z� �%�A�
���� ��`0eT|���~�﹩�L��|�"X���P�E�ڊ_?>/������	���y0Ui!���[�����:��$��^�B��h��v���5�����t���\b�]���I�s0�t�Ɯ&����'h�m��$}�ߌh+%���
t�z�R �"��tG`��ڂ�y���߬��zl����ǥoVakh��*l���
�W�?��-0Vi�R�9d��,������¸��X��pD�1��:�^seuSWM�W揶��[sz=M��0���'|t��wU���/k��A�=��@t�7�^M�=5��笩�_�7�Qf�[�u��Ce���xc=88�����n�®%/�y]�\���2+�j˽�y����A4�q��������H-GL�]�r�c9x����K�!����(��'���zv��ul���e��'�~'�l_)��q�m�W�R�Bf$���8)�;es�X���� jwXcr%�v�#��U;y��Kd�
>���Ёn�q+�P�dC�K��,���2����:��v��?��v�Q�Z2�qY->3��q�i��b���R�Ǧ~������e�RK���s)�,�ƞI+���!��U�mtըJ��u������{��h�R��'D��y�qD�z����t
~��r�A��#�uj?���ʎ���� ����?T�j��>NE�����#
}�W<VԎ��F��
��)�è�5����D8=�S;�T8�����q�Հy6yU�ց���KC"-���/#�<26Q��(�O���f �R	[�~��a���stR��ۡ�빈��aJ���)�;�i9(��0H��]��D1$�����������[W��c�5W����Kq6��.V�����:��[%�W6�ܡb�������� Ud�<��F�ť�B�㐢j&�>;�������D�k�1a���k�a"44��]1Hs������Dp���d�Z�u�~�;r�+*c�FI���T���K� ���a�u\6�Z	�H&��3������_sY!�      h   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      j   �   x�3�LL��̃�鹉�9z����9�ɉ9�*F�*�*�iz.%��E�����)Ia��%�QFee���e�I�U�>AEY��A��ő)z�1~ T�i�FF��ƺƆ
�V�fV�z�&F�8�,�R\1z\\\ 3�+�     