CREATE TABLE campaign (
  cf_id INTEGER PRIMARY KEY,
  contact_id INTEGER,
  company_name VARCHAR(255),
  description TEXT,
  goal FLOAT,
  pledged FLOAT,
  backers_count INTEGER,
  country VARCHAR(255),
  currency VARCHAR(255),
  launched_date TIMESTAMP,
  end_date TIMESTAMP,
  subcategory_id VARCHAR(255),
  category_id VARCHAR(255),
  FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE contact (
  contact_id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR(255) PRIMARY KEY,
  subcategory VARCHAR(255)
);

CREATE TABLE category (
  category_id VARCHAR(255) PRIMARY KEY,
  category VARCHAR(255)
);
