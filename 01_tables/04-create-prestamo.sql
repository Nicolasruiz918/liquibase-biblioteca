CREATE TABLE prestamo (
    id SERIAL PRIMARY KEY,

    usuario_id INTEGER,
    libro_id INTEGER,

    fecha_prestamo TIMESTAMPTZ,
    fecha_devolucion TIMESTAMPTZ,

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ,
    created_by UUID,
    updated_by UUID,
    deleted_by UUID,
    status UUID,

    CONSTRAINT fk_prestamo_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuario(id),

    CONSTRAINT fk_prestamo_libro
        FOREIGN KEY (libro_id)
        REFERENCES libro(id)
);