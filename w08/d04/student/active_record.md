# Hello!

Pair up with a partner and read [Parts 1 through 4](http://guides.rubyonrails.org/active_record_basics.html
) on ActiveRecord Basics from The Rails Guides.

Be sure you're both able to answer the following questions:

- Define Convention over Configuration
  <!-- CONVENTION is the built-in rules of the ORM; CONFIGURATION is overriding/creating new rules for running the program. -->
**These questions will be on the assessment tomorrow**

- What naming conventions does ActiveRecord follow?
    Ruby classes are singular CamelCase; SQL tables are pluralized snake_case.
- What optional columns will ActiveRecord use if they're on a table?
    created_at
    updated_at
    lock_version
    type
    (association_name)_type
    (table_name)_count
- How do you create an ActiveRecord model?
    create a subclass for the namespaced ActiveRecord::Base
      ex. class Product < ActiveRecord::Base
          end

Given the following sql

```sql
CREATE TABLE space_crafts (
    id serial PRIMARY KEY,
    type varchar,
    capacity varchar
    piloted_by integer REFERENCES person(id)
);

CREATE TABLE people (
    id serial PRIMARY KEY,
    born_on date
);
```

1. How would you update the schema to allow ActiveRecord to automatically record when a row is updated or created.
  user.save automatically records the created/updated row.
1. How could you rename the tables and rows to better follow ActiveRecords naming conventions?

1. How would you create two ActiveRecord models based on the tables?

