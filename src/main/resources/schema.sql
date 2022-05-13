DROP TABLE IF EXISTS user01 CASCADE;
CREATE TABLE user01(
                       id BIGSERIAL,
                       name CHARACTER VARYING(255),
                       CONSTRAINT user01_pk PRIMARY KEY (id)
);
--ALTER TABLE book ADD CONSTRAINT book_fk_01 FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE CASCADE;


