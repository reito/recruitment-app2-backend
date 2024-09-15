-- BEGIN;

-- テーブルの作成
CREATE TABLE IF NOT EXISTS "schema_migrations" (
  "version" varchar NOT NULL PRIMARY KEY
);

INSERT INTO schema_migrations VALUES('20240914112631');

CREATE TABLE IF NOT EXISTS "ar_internal_metadata" (
  "key" varchar NOT NULL PRIMARY KEY,
  "value" varchar,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL
);

INSERT INTO ar_internal_metadata VALUES(
  'environment',
  'development',
  '2024-09-14 11:26:59.316915',
  '2024-09-14 11:26:59.316915'
);

CREATE TABLE IF NOT EXISTS "jobs" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "category" varchar,
  "salary" integer,
  "created_at" TIMESTAMP NOT NULL,
  "updated_at" TIMESTAMP NOT NULL
);

INSERT INTO jobs (id, title, category, salary, created_at, updated_at) VALUES
(1, 'Webエンジニア', 'エンジニア', 600, '2024-09-14 11:40:12.494717', '2024-09-14 11:40:12.494717'),
(2, 'Webデザイン', 'デザイン', 450, '2024-09-15 16:36:30.298107', '2024-09-15 16:36:30.298107'),
(3, 'Webマーケテイング', 'マーケティング', 540, '2024-09-15 16:38:26.535837', '2024-09-15 16:38:26.535837'),
(4, '介護士', '医療・介護', 300, '2024-09-15 16:41:43.685574', '2024-09-15 16:41:43.685574');

COMMIT;
