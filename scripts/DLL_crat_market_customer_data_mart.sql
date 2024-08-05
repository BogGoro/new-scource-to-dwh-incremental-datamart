DROP TABLE IF EXISTS dwh.customer_report_datamart;
CREATE TABLE IF NOT EXISTS dwh.craftsman_report_datamart (
    id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,
    customer_id BIGINT NOT NULL,
    customer_name VARCHAR NOT NULL,
    customer_address VARCHAR NOT NULL,
    customer_birthday DATE NOT NULL,
    customer_email VARCHAR NOT NULL,
    customer_money NUMERIC(15,2) NOT NULL,
    platform_money BIGINT NOT NULL,
    count_order BIGINT NOT NULL,
    avg_price_order NUMERIC(10,2) NOT NULL,
    median_time_order_completed NUMERIC(10,1),
    top_product_category VARCHAR NOT NULL,
    top_craftsman_id BIGINT NOT NULL,
    count_order_created BIGINT NOT NULL,
    count_order_in_progress BIGINT NOT NULL,
    count_order_delivery BIGINT NOT NULL,
    count_order_done BIGINT NOT NULL,
    count_order_not_done BIGINT NOT NULL,
    report_period VARCHAR NOT NULL,
    CONSTRAINT customer_report_datamart_pk PRIMARY KEY (id)
);