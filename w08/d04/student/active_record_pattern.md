# Morning!

We began this week persisting data with Postgres, then moved to using the PG gem
to dynamically perform CRUD operations to our database. Now we're moving a step
up and putting a layer between our application logic and our database. That
layer is an ORM, an Object Relational Mapper. It translates the values in our
database into objects.

#### Questions

Read the following [article](http://en.wikipedia.org/wiki/Active_record_pattern) then pair up with a partner and be sure you're both able to answer the following questions:

- What is the Active Record pattern?
    A general, reuseable solution to a common problem in software. Stores oblect data in a digital database.
- What do tables map to?
    Tables map to classes.
- What do column names map to?
    column names are methods wrapped to the table.
- What do rows map to?
    Rows map to a single object in the table.
- What is an ORM?
    Technique to convert data btwn incompatible systems in OOP.
- How are foreign key relationships exposed?
  They are exposed via a type of object instance with a certain property.
### Thought Experiment!

> After you've answered the above questions work with your partner and imagine
how the following SQL would translate into Ruby following an ActiveRecord pattern.

```sql
CREATE TABLE users (
    id serial PRIMARY KEY,
    login varchar NOT NULL,
    email varchar NOT NULL UNIQUE
);

CREATE TABLE bookmarks (
    id serial PRIMARY KEY,
    url text DEFAULT "",
    user_id integer REFERENCES users(id)
);
```

- What would the table map to in Ruby?
    The table would map to a Ruby class.
- What would a row map to?
    A row would map to
- How might you access values from the rows?
- How might you access values from the foreign key relationships?

