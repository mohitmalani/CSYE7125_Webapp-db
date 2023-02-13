CREATE TABLE task
(
    id bigint NOT NULL,
    created_at timestamp with time zone,
    due_date timestamp with time zone NOT NULL,
    priority integer NOT NULL,
    summary character varying(255),
    task character varying(255) NOT NULL,
    updated_at timestamp with time zone,
    user_email character varying(255),
    list_id bigint,
    CONSTRAINT task_pkey PRIMARY KEY (id),
    CONSTRAINT parent_list FOREIGN KEY (list_id)
        REFERENCES lists (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)