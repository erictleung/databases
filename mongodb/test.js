// create 'test' database
use test

// select and insert into restaurants collection
db.restaurants.insert(
   {
      "address" : {
         "street" : "2 Avenue",
         "zipcode" : "10075",
         "building" : "1480",
         "coord" : [ -73.9557413, 40.7720266 ],
      },
      "borough" : "Manhattan",
      "cuisine" : "Italian",
      "grades" : [
         {
            "date" : ISODate("2014-10-01T00:00:00Z"),
            "grade" : "A",
            "score" : 11
         },
         {
            "date" : ISODate("2014-01-16T00:00:00Z"),
            "grade" : "B",
            "score" : 17
         }
      ],
      "name" : "Vella",
      "restaurant_id" : "41704620"
   }
)

// select all objects in restaurants collection
db.restaurants.find().pretty()

// find by top level field
db.restaurants.find( { "borough": "Manhattan" } )

// find by embedded document using dot method
db.restaurants.find( { "address.zipcode": "10075" } )

// query by field in array
db.restaurants.find( { "grades.grade": "B" } )

// conditional query
// Query selectors https://docs.mongodb.org/manual/reference/operator/query/
db.restaurants.find( { "grades.score": { $gt: 30  } } ) // >30 score
db.restaurants.find( { "grades.score": { $lt: 10  } } ) // <10 score

// combine conditions with 'AND'
db.restaurants.find( { "cuisine": "Italian", "address.zipcode": "10075" } )

// combine conditions with 'OR'
db.restaurants.find(
   { $or: [ { "cuisine": "Italian" }, { "address.zipcode": "10075" } ] }
)

// sory query results using '.sort' method
db.restaurants.find().sort( { "borough": 1, "address.zipcode": 1 } )
