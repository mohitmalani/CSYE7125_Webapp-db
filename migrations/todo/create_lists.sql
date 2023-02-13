--liquibase formatted sql
--changeset oliverrodrigues:create_lists_table
CREATE TABLE lists
(
    id bigint NOT NULL,
    created_at timestamp without time zone,
    name character varying(255),
    updated_at timestamp without time zone,
    user_email character varying(255),
    CONSTRAINT lists_pkey PRIMARY KEY (id)
)
