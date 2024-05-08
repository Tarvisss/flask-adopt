
DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE,
  new_arrival BOOLEAN NOT NULL DEFAULT FALSE);

INSERT INTO pets
  (name, species, photo_url, age, notes, available, new_arrival)
VALUES
  ('Woofly', 'dog', 'https://www.what-dog.net/Images/faces2/scroll001.jpg', 3, 'Incredibly adorable.', 't', 't'),
  ('Porchetta', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 4, 'Somewhat spiky!', 't', 'f'),
  ('Snargle', 'cat', 'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg', null, null, 't','t'),
  ('Dr. Claw', 'cat', null, null, null, 't', 't'),
  ('Sally', 'Orc', 'https://cdn.pixabay.com/photo/2024/02/21/19/41/ai-generated-8588448_640.jpg', 6, 'Hand Full', 't', 'f'),
  ('Benny', 'Griffin', 'https://cdn.pixabay.com/photo/2022/11/29/21/47/holographic-7625460_1280.jpg', 90, 'Sheds a lot', 't','f'),
  ('Lenny', 'Dragon', 'https://cdn.pixabay.com/photo/2023/01/07/09/20/ai-generated-7702855_640.jpg', 2000, 'Spits Fire', 't','t');

