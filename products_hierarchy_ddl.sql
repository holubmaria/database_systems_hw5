/*these tables were inspired by this tutorial https://www.sqlservertutorial.net/load-sample-database/ */
CREATE TABLE categories (
	category_id INT NOT NULL,
	category_name VARCHAR (255) NOT NULL,
	PRIMARY KEY(category_id)
);

CREATE TABLE brands (
	brand_id INT NOT NULL,
	brand_name VARCHAR (255) NOT NULL,
	PRIMARY KEY(brand_id)
);

CREATE TABLE products (
	product_id INT NOT NULL,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	PRIMARY KEY (product_id),
	constraint fk_categories_products FOREIGN KEY (category_id) REFERENCES categories (category_id),
	constraint fk_brands_products FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
);
