CREATE TABLE reminders
(
    id bigint NOT NULL,
    created_at timestamp with time zone,
    reminder_date timestamp with time zone,
    updated_at timestamp with time zone,
    user_email character varying(255),
    task_id bigint,
    CONSTRAINT reminders_pkey PRIMARY KEY (id),
    CONSTRAINT parent_task FOREIGN KEY (task_id)
        REFERENCES public.task (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)