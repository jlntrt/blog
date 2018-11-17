-- +micrate Up
CREATE TABLE posts (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR,
  content TEXT,
  active BOOLEAN,
  user_id BIGSERIAL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS posts;
