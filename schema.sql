create TABLE users (
    user_id serial PRIMARY key,
    user_name text unique NOT NULL,
    password text NOT NULL  
    first_name text,
    last_name text,
    email text,
);

create Table words (
    word_id serial PRIMARY key,
    word text,
    word_definition text,
);

create Table attempts (
    user_id INTEGER REFERENCES users(user_id) NOT NULL,
    word_id INTEGER REFERENCES words(word_id) NOT NULL,
    attempt_correct INTEGER,
    date_attempted date,
    language text,
);
