
-- Question 1:
SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

-- Question 2:
SELECT * FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

-- Question 3:
SELECT * FROM "products" JOIN "warehouse_product" on "products"."id" = "warehouse_product"."product_id" JOIN "warehouse" on "warehouse_product"."warehouse_id" = "warehouse"."id" WHERE "products"."id" = 5;

-- Question 4:
SELECT * FROM "products" JOIN "warehouse_product" on "products"."id" = "warehouse_product"."product_id" JOIN "warehouse" on "warehouse_product"."warehouse_id" = "warehouse"."id" WHERE "products"."id" = 6;

-- Question 5:
SELECT "customers"."first_name", count("orders"."id") FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id" JOIN "orders" on "addresses"."id" = "orders"."address_id" GROUP BY "customers"."first_name";

-- Question 6:
SELECT count("customers"."id") FROM "customers";

-- Question 7:
SELECT count("products"."id") FROM "products";

-- Question 8:
SELECT SUM("warehouse_product"."on_hand") FROM "products" JOIN "warehouse_product" on "products"."id" = "warehouse_product"."product_id" WHERE "products"."id" = 6;
