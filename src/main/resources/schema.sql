DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
       id                    BIGSERIAL,
       user_id               CHARACTER VARYING(255),
       first_name            CHARACTER VARYING(255),
       last_name             CHARACTER VARYING(255),
       email                 CHARACTER VARYING(255),
       encrypted_password         CHARACTER VARYING(255),
       email_verification_token   CHARACTER VARYING(255),
       email_verification_status  boolean,
       CONSTRAINT users_pk      PRIMARY KEY (id)
);

ALTER TABLE users ADD CONSTRAINT users_email_unique UNIQUE(email);

DROP TABLE IF EXISTS addresses CASCADE;
CREATE TABLE addresses (
       id                   BIGSERIAL,
       address_id            CHARACTER VARYING(30),
       city                  CHARACTER VARYING(15),
       country               CHARACTER VARYING(15),
       street_name           CHARACTER VARYING(100),
       postal_code           CHARACTER VARYING(7),
       type                  CHARACTER VARYING(10),
       users_id              bigint,
       CONSTRAINT addresses_pk PRIMARY KEY (id)
);

ALTER TABLE addresses ADD CONSTRAINT addresses_fk_01 FOREIGN KEY (users_id) REFERENCES users (id) ON DELETE CASCADE;


