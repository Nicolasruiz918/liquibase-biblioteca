CREATE TABLE libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(50),

    autor_id INTEGER,

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ,
    created_by UUID,
    updated_by UUID,
    deleted_by UUID,
    status UUID,

    CONSTRAINT fk_libro_autor
        FOREIGN KEY (autor_id)
        REFERENCES autor(id)
);