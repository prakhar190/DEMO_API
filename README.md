# README

The following routes are currently working

*   POST   /launches	{"rocket__id :"1",	"name" : "Launch 1"} => To create a launch send with JSON data.

*   GET    /launches => To get all launches as JSON.

*   GET    /launches/:id => To get a particular launch.

*   GET /launches?rocket_id=2 => to get all the launches with rocket 2.

*   PUT /launches/:id 	{"rocket_id": "2",	"name" : "launch 2"} => To Update a launch with JSON data.



*   POST   /rockets	{"rocket_family_id :"1",	"name" : "Alpha2"} = > To Create a rocket with JSON Data.

*   GET    /rockets => To get all the rockets.

*   GET    /rockets?rocket_family_id=2 => To get all the rockets with rocket_family 2.

*   GET    /rockets/:id => To get a particular rocket with id.

*   PUT /rockets/:id 	{"rocket_family_id": "2",	"name" : "Alpha3"} => To Update a particualr rocket with JSON Data.



*   POST   /rocket_families 	{"abbreviation" :"A2",	"name" : "Alpha2"} => To create a rocket family with JSON data.

*   GET    /rocket_families => To get all rocket families.

*   GET    /rocket_families/:id => To get a particular rocket family.

*  PUT /rocket_families/:id 	{"abbreviation" :"A3",	"name" : "Alpha3"} => To update a particual rocket family with JSON data.

* ...
