INSERT INTO users(user_id, first_name, last_name, email, encrypted_password, email_verification_token, email_verification_status) VALUES ('zRAPD8AGBu3D0E63bKsZqHpAXczBjb', 'Jhon', 'Smith', 'agent007@m6.com', '$2a$10$sxyPcu0alBd.jT.jHfPtRukvPgqkNXF4unm1MRXCN/0PtdHzRqypK', 'email_token', true);

INSERT INTO addresses(address_id, city, country, street_name, postal_code, type, users_id) VALUES ('agent-007-address1', 'Toronto', 'Canada', '123 Yonge str.', 'A1B2C3', 'billing', 1);
INSERT INTO addresses(address_id, city, country, street_name, postal_code, type, users_id) VALUES ('agent-007-address2', 'Markham', 'Canada', '456 Old Rd.', 'D3E4F4', 'shipment', 1);
