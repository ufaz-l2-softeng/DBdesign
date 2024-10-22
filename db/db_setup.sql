CREATE TABLE users (
    id INTEGER PRIMARY KEY ,
    username TEXT,
    password TEXT
);

CREATE TABLE inventory (
    id INTEGER PRIMARY KEY,
    name TEXT,
    rarity INTEGER,
    image TEXT,
    user_id INTEGER UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE items (
    id INTEGER PRIMARY KEY,
    name TEXT,
    rarity INTEGER,
    image TEXT
);

CREATE TABLE cases (
    id INTEGER PRIMARY KEY,
    name TEXT,
    image text
);

CREATE TABLE case_items (
    case_id INTEGER,
    item_id INTEGER,
    PRIMARY KEY (case_id, item_id),
    FOREIGN KEY (case_id) REFERENCES cases(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
);
