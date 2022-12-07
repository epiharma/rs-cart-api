CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE carts (
                       id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
                       created_at timestamp NOT NULL DEFAULT now(),
                       updated_at timestamp NOT NULL DEFAULT now()
)

-- DROP TABLE carts;

CREATE TABLE cart_items (
                            cart_id uuid NOT NULL,
                            product_id uuid NOT NULL,
                            count int4 NOT NULL DEFAULT 0,
                            FOREIGN KEY ("cart_id") REFERENCES "carts" ("id")
)

-- DROP TABLE cart_items;
INSERT INTO carts (id) VALUES ('725a0f65-a62e-48e2-a625-53e9be40d833');

INSERT INTO cart_items (cart_id, product_id, count) VALUES
                                                        ('725a0f65-a62e-48e2-a625-53e9be40d833', '4d323701-a936-455e-a3eb-59d15d990502', 1),
                                                        ('725a0f65-a62e-48e2-a625-53e9be40d833', '486b8ce2-a6e2-4478-b894-3270ad72c19a', 1);