CREATE TABLE public.tipos_documentos (
	tido_id int NOT NULL,
	tido_descripcion varchar(255) NOT NULL
);

-- Column comments

COMMENT ON COLUMN public.tipos_documentos.tido_id IS 'Llave primaria del Tipo de Documento';
COMMENT ON COLUMN public.tipos_documentos.tido_descripcion IS 'Descripción del Tipo de Documento';
