CREATE TABLE tags
(
    id bigint NOT NULL,
    created_at timestamp with time zone,
    name character varying(255),
    updated_at timestamp with time zone,
    user_email character varying(255),
    CONSTRAINT tags_pkey PRIMARY KEY (id)
)
