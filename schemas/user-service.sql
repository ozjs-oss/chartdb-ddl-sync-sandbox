-- user-service schema snapshot
-- (실제로는 CI가 pg_dump --schema-only 로 자동 생성할 파일)

CREATE TABLE users (
    id          BIGSERIAL PRIMARY KEY,
    email       VARCHAR(255) NOT NULL UNIQUE,
    name        VARCHAR(100) NOT NULL,
    created_at  TIMESTAMPTZ  NOT NULL DEFAULT now()
);

CREATE TABLE user_profiles (
    id          BIGSERIAL PRIMARY KEY,
    user_id     BIGINT       NOT NULL REFERENCES users(id),
    bio         TEXT,
    avatar_url  VARCHAR(500)
);
