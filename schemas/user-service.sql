CREATE SCHEMA IF NOT EXISTS "public";

CREATE TABLE "public"."users" (
    "id" bigserial NOT NULL,
    "email" varchar NOT NULL UNIQUE,
    "name11" varchar NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
);

CREATE TABLE "public"."user_profiles" (
    "id" bigserial NOT NULL,
    "user_id" bigint NOT NULL,
    "bio" text,
    "avatar_url11" varchar,
    PRIMARY KEY ("id")
);

-- Foreign key constraints
-- Schema: public
ALTER TABLE "public"."user_profiles" ADD CONSTRAINT "fk_user_profiles_user_id_users_id" FOREIGN KEY("user_id") REFERENCES "public"."users"("id");