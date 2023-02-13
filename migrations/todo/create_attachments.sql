CREATE TABLE attachments
(
    id bigint NOT NULL,
    date_attached timestamp without time zone,
    name character varying(255),
    size_mega_bytes double precision NOT NULL,
    task_id bigint,
    CONSTRAINT attachments_pkey PRIMARY KEY (id),
    CONSTRAINT parent_task FOREIGN KEY (task_id)
        REFERENCES public.task (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)