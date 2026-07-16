-- order-service schema snapshot
-- (실제로는 CI가 pg_dump --schema-only 로 자동 생성할 파일)

CREATE TABLE orders (
    id            BIGSERIAL PRIMARY KEY,
    user_id       BIGINT        NOT NULL,
    total_amount  NUMERIC(12,2) NOT NULL,
    status        VARCHAR(20)   NOT NULL DEFAULT 'pending',
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT now()
);

CREATE TABLE order_items (
    id            BIGSERIAL PRIMARY KEY,
    order_id      BIGINT        NOT NULL REFERENCES orders(id),
    product_name  VARCHAR(200)  NOT NULL,
    quantity      INT           NOT NULL,
    unit_price    NUMERIC(12,2) NOT NULL
);
