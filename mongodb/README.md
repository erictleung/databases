# MongoDB Notes

Need random data? [JSON Generator](http://www.json-generator.com/)

## Download and Installation

Multiple ways to download and install MongoDB. Firstly, you can download MongoDB
from their [website](https://www.mongodb.org/downloads). Otherwise, there are
other package managers that'll help you. When in doubt, their
[website](https://docs.mongodb.org/manual/installation/) has great instructions.

*Homebrew*

```
$ brew mongodb
```

*Macports*

```
$ sudo port install mongodb # database management system itself
$ sudo port install mongo-tools # utility tools like mongoimport, to import data
```

## Usage

Default, data will be deposited in `/data/db` (on Linux/OSX systems).
Otherwise you can specify where the data will be deposited with:

```
$ mongod --dbpath <path to data directory>
```

## `mongo` Shell Notes

- `use <DB NAME>` - create new database, if it doesn't already exist
- `db` - display current database name
- `db.dropDatabase()` - drops current database
- `db.<collections>.insert({<JSON OBJECT>})` - insert one JSON object to db
    - `db.<collections>.insert([<JSON OBJECTS>])` - add list of objects to db
- `db.<collections>.find()` - display data in collections
    - Search with "Key": "Value"
        - `db.<collections>.find().pretty()` - pretty print data in collection
        - `db.<collections>.findOne()` - get only one document object
    - Conditional search criteria
        - `$or` - search multiple criteria that match at least one criteria
        - `$gt` - greater than
        - `$lt` - less than
        - `$ne` - not equal to
    - Return data you only want instead of all key-values
        - e.g. Return only name and no object ID `{"name":1, _id:0}`
    - Add method `.limit(n)` to limit to `n` number of results
    - Add method `.skip(n)` to skip `n` results
