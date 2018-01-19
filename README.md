# kittens-api

This is a project for [The Odin Project: APIs.](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis)

This is a barebones webapp that allows you to create and delete kitten records. Most importantly, the index and individual kittens can be requested through the API. API reponses are JSON.

Request:

```
GET /kittens/2 HTTP/1.1
Host: localhost:3000
Accept: application/json
Cache-Control: no-cache
Postman-Token: 9b691dfa-e9d7-be0b-1bee-b2ab9305834c
```

Response:

```
{
    "id": 2,
    "name": "appa",
    "age": 1,
    "cuteness": 10,
    "softness": 10,
    "created_at": "2018-01-19T21:18:22.456Z",
    "updated_at": "2018-01-19T21:18:22.456Z"
}
```