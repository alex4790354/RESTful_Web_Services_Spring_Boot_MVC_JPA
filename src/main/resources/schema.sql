DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
       id                   BIGSERIAL,
       user_id               CHARACTER VARYING(255),
       first_name            CHARACTER VARYING(255),
       last_name             CHARACTER VARYING(255),
       email                CHARACTER VARYING(255),
       encrypted_password        CHARACTER VARYING(255),
       email_verification_token   CHARACTER VARYING(255),
       email_verification_status  boolean,
       CONSTRAINT users_pk      PRIMARY KEY (id)
);

ALTER TABLE users ADD CONSTRAINT users_email_unique UNIQUE(email);


--ALTER TABLE book ADD CONSTRAINT book_fk_01 FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE CASCADE;


