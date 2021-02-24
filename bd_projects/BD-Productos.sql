-- Table: public.productos

-- DROP TABLE public.productos;

CREATE TABLE public.productos
(
    producto_id integer NOT NULL,
    producto_nombre character varying(255) COLLATE pg_catalog."default" NOT NULL,
    producto_cantidad integer,
    producto_usercreacion integer NOT NULL,
    producto_fechcreacion timestamp(0) without time zone NOT NULL,
    producto_usermodificacion integer NOT NULL,
    producto_fechmodificacion timestamp(0) without time zone NOT NULL,
    CONSTRAINT productos_pkey PRIMARY KEY (producto_id)
)

TABLESPACE pg_default;

ALTER TABLE public.productos
    OWNER to postgres;

COMMENT ON COLUMN public.productos.producto_id
    IS 'Llave primaria del Producto';

COMMENT ON COLUMN public.productos.producto_nombre
    IS 'Nombre del Producto';

COMMENT ON COLUMN public.productos.producto_cantidad
    IS 'Cantidad del Producto';

COMMENT ON COLUMN public.productos.producto_usercreacion
    IS 'El Usuario logueado que creó el Producto';

COMMENT ON COLUMN public.productos.producto_fechcreacion
    IS 'Fecha de la creación del Producto';

COMMENT ON COLUMN public.productos.producto_usermodificacion
    IS 'El Usuario logueado que modificó el Producto';

COMMENT ON COLUMN public.productos.producto_fechmodificacion
    IS 'Fecha de la modifición del Producto';
    
    
-- Table: public.tipos_documentos

-- DROP TABLE public.tipos_documentos;

CREATE TABLE public.tipos_documentos
(
    tido_id integer NOT NULL,
    tido_descripcion character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tipos_documentos_pkey PRIMARY KEY (tido_id)
)

TABLESPACE pg_default;

ALTER TABLE public.tipos_documentos
    OWNER to postgres;

COMMENT ON COLUMN public.tipos_documentos.tido_id
    IS 'Llave primaria del Tipo de Documento';

COMMENT ON COLUMN public.tipos_documentos.tido_descripcion
    IS 'Descripción del Tipo de Documento';
    
    
    
-- Table: public.usuarios

-- DROP TABLE public.usuarios;

CREATE TABLE public.usuarios
(
    user_id integer NOT NULL,
    user_nombres character varying(255) COLLATE pg_catalog."default" NOT NULL,
    user_apellidos character varying(255) COLLATE pg_catalog."default" NOT NULL,
    user_nrodocumento integer NOT NULL,
    user_email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    user_password character varying(255) COLLATE pg_catalog."default" NOT NULL,
    user_tipodocumento integer NOT NULL,
    CONSTRAINT usuarios_pkey PRIMARY KEY (user_id),
    CONSTRAINT fk_tipos_documentos FOREIGN KEY (user_tipodocumento)
        REFERENCES public.tipos_documentos (tido_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.usuarios
    OWNER to postgres;

COMMENT ON COLUMN public.usuarios.user_id
    IS 'LLave primaria de Usuarios';

COMMENT ON COLUMN public.usuarios.user_nombres
    IS 'Nombre completo del Usuario';

COMMENT ON COLUMN public.usuarios.user_apellidos
    IS 'Apellidos completos del Usuario';

COMMENT ON COLUMN public.usuarios.user_nrodocumento
    IS 'Numero de documento del Usuario';

COMMENT ON COLUMN public.usuarios.user_email
    IS 'Correo electronico del Usuario para loguearse';

COMMENT ON COLUMN public.usuarios.user_password
    IS 'Contraseña del Usuario para loguearse';

COMMENT ON COLUMN public.usuarios.user_tipodocumento
    IS 'Llave foranea del Tipo de Documento del Usuario';
