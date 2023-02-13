CREATE TABLE tags_tasks
(
    tags_id bigint NOT NULL,
    tasks_id bigint NOT NULL,
    CONSTRAINT mapped_tags FOREIGN KEY (tags_id)
        REFERENCES public.tags (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT mapped_tasks FOREIGN KEY (tasks_id)
        REFERENCES public.task (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)