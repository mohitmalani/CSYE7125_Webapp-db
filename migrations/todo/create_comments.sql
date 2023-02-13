CREATE TABLE comments
(
    id bigint NOT NULL,
    comment character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_email character varying(255),
    task_id bigint,
    CONSTRAINT comments_pkey PRIMARY KEY (id),
    CONSTRAINT parent_task FOREIGN KEY (task_id)
        REFERENCES public.task (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)