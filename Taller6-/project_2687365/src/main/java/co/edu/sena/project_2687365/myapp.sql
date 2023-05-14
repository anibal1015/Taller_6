CREATE DATABASE myapp;
USE myapp;
CREATE TABLE users_tbl (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_firstname VARCHAR(50) NOT NULL,
  user_lastname VARCHAR(50) NOT NULL,
  user_email VARCHAR(50) NOT NULL,
  user_password varbinary(255));

INSERT INTO myapp.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',AES_ENCRYPT
('password', '$2a$12$ddqbWgqCoTtTSrc.QXz97OBVXQswzDwrGLbnEE/aa0JD8s58JnJSi'));
INSERT INTO myapp.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('alberto'), UPPER('gomez'), 'ango@gmail.com',AES_ENCRYPT
('3169648Aa', '$2a$12$ddqbWgqCoTtTSrc.QXz97OBVXQswzDwrGLbnEE/aa0JD8s58JnJSi'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$ddqbWgqCoTtTSrc.QXz97OBVXQswzDwrGLbnEE/aa0JD8s58JnJSi') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 2;



        
                                                        