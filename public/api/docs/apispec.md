### RunaChallengeApi

# Group TimeTables


## TimeTables [/time_tables]
### Resource TimeTable
All endpoints for the TimeTable resource

### Get all time tables (as user) [GET /time_tables]


+ Request returns time tables for user
**GET**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "time_tables": [
                {
                  "id": 48357,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-07-04T16:36:10.000Z",
                  "checkout": "2019-07-04T23:36:10.000Z",
                  "seconds": 25200
                },
                {
                  "id": 48358,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2018-09-10T17:48:45.000Z",
                  "checkout": "2018-09-10T21:48:45.000Z",
                  "seconds": 14400
                },
                {
                  "id": 48359,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-08-10T20:57:03.000Z",
                  "checkout": "2019-08-11T06:57:03.000Z",
                  "seconds": 36000
                },
                {
                  "id": 48360,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2018-10-16T05:33:47.000Z",
                  "checkout": "2018-10-16T13:33:47.000Z",
                  "seconds": 28800
                },
                {
                  "id": 48361,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2018-11-29T14:02:43.000Z",
                  "checkout": "2018-11-29T18:02:43.000Z",
                  "seconds": 14400
                },
                {
                  "id": 48362,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2018-11-02T19:22:49.000Z",
                  "checkout": "2018-11-02T23:22:49.000Z",
                  "seconds": 14400
                },
                {
                  "id": 48363,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-07-17T08:00:28.000Z",
                  "checkout": "2019-07-17T13:00:28.000Z",
                  "seconds": 18000
                },
                {
                  "id": 48364,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-05-26T15:35:14.000Z",
                  "checkout": "2019-05-26T22:35:14.000Z",
                  "seconds": 25200
                },
                {
                  "id": 48365,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-04-02T05:33:09.000Z",
                  "checkout": "2019-04-02T13:33:09.000Z",
                  "seconds": 28800
                },
                {
                  "id": 48366,
                  "user_id": 33287,
                  "status": "closed",
                  "checkin": "2019-02-10T13:41:47.000Z",
                  "checkout": "2019-02-10T23:41:47.000Z",
                  "seconds": 36000
                }
              ]
            }

### Get all time tables (as admin) [GET /time_tables]


+ Request returns all time tables
**GET**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "time_tables": [
                {
                  "id": 48382,
                  "user_id": 33297,
                  "status": "closed",
                  "checkin": "2019-05-03T03:32:14.000Z",
                  "checkout": "2019-05-03T10:32:14.000Z",
                  "seconds": 25200
                },
                {
                  "id": 48383,
                  "user_id": 33297,
                  "status": "closed",
                  "checkin": "2019-01-04T17:51:12.000Z",
                  "checkout": "2019-01-04T21:51:12.000Z",
                  "seconds": 14400
                },
                {
                  "id": 48384,
                  "user_id": 33297,
                  "status": "closed",
                  "checkin": "2019-07-17T13:32:34.000Z",
                  "checkout": "2019-07-17T16:32:34.000Z",
                  "seconds": 10800
                },
                {
                  "id": 48385,
                  "user_id": 33297,
                  "status": "closed",
                  "checkin": "2019-03-21T12:57:04.000Z",
                  "checkout": "2019-03-21T17:57:04.000Z",
                  "seconds": 18000
                },
                {
                  "id": 48386,
                  "user_id": 33297,
                  "status": "closed",
                  "checkin": "2019-04-09T08:45:30.000Z",
                  "checkout": "2019-04-09T13:45:30.000Z",
                  "seconds": 18000
                },
                {
                  "id": 48387,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2019-04-01T01:54:46.000Z",
                  "checkout": "2019-04-01T06:54:46.000Z",
                  "seconds": 18000
                },
                {
                  "id": 48388,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-10-30T02:59:55.000Z",
                  "checkout": "2018-10-30T05:59:55.000Z",
                  "seconds": 10800
                },
                {
                  "id": 48389,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-11-25T12:55:54.000Z",
                  "checkout": "2018-11-25T22:55:54.000Z",
                  "seconds": 36000
                },
                {
                  "id": 48390,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2019-03-09T02:48:46.000Z",
                  "checkout": "2019-03-09T03:48:46.000Z",
                  "seconds": 3600
                },
                {
                  "id": 48391,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-12-13T22:59:56.000Z",
                  "checkout": "2018-12-14T04:59:56.000Z",
                  "seconds": 21600
                },
                {
                  "id": 48392,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-10-07T10:38:34.000Z",
                  "checkout": "2018-10-07T19:38:34.000Z",
                  "seconds": 32400
                },
                {
                  "id": 48393,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2019-05-13T06:58:28.000Z",
                  "checkout": "2019-05-13T15:58:28.000Z",
                  "seconds": 32400
                },
                {
                  "id": 48394,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2019-06-05T18:24:47.000Z",
                  "checkout": "2019-06-05T22:24:47.000Z",
                  "seconds": 14400
                },
                {
                  "id": 48395,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-11-28T17:22:36.000Z",
                  "checkout": "2018-11-29T03:22:36.000Z",
                  "seconds": 36000
                },
                {
                  "id": 48396,
                  "user_id": 33300,
                  "status": "closed",
                  "checkin": "2018-09-23T20:49:53.000Z",
                  "checkout": "2018-09-24T06:49:53.000Z",
                  "seconds": 36000
                }
              ]
            }

### Get time table (as user) [GET /time_tables/{id}]

+ Parameters
    + id: `48425` (number, required)

+ Request returns the time table
**GET**&nbsp;&nbsp;`/time_tables/48425`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 48425,
              "user_id": 33313,
              "status": "closed",
              "checkin": "2019-06-03T21:28:00.000Z",
              "checkout": "2019-06-04T07:28:00.000Z",
              "seconds": 36000
            }

### Get time table (as admin) [GET /time_tables/{id}]

+ Parameters
    + id: `48478` (number, required)

+ Request returns time table
**GET**&nbsp;&nbsp;`/time_tables/48478`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 48478,
              "user_id": 33339,
              "status": "closed",
              "checkin": "2019-02-03T11:26:51.000Z",
              "checkout": "2019-02-03T14:26:51.000Z",
              "seconds": 10800
            }

### Request user time tables [GET /time_tables/by_user/{user_id}]

+ Parameters
    + user_id: `33365` (number, required)

+ Request returns user time tables
**GET**&nbsp;&nbsp;`/time_tables/by_user/33365`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "time_tables": [
                {
                  "id": 48512,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-12-23T21:52:22.000Z",
                  "checkout": "2018-12-24T00:52:22.000Z",
                  "seconds": 10800
                },
                {
                  "id": 48513,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2019-04-03T14:45:29.000Z",
                  "checkout": "2019-04-03T17:45:29.000Z",
                  "seconds": 10800
                },
                {
                  "id": 48514,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2019-07-15T16:42:10.000Z",
                  "checkout": "2019-07-16T00:42:10.000Z",
                  "seconds": 28800
                },
                {
                  "id": 48515,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2019-01-23T01:47:33.000Z",
                  "checkout": "2019-01-23T10:47:33.000Z",
                  "seconds": 32400
                },
                {
                  "id": 48516,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2019-04-07T10:27:26.000Z",
                  "checkout": "2019-04-07T20:27:26.000Z",
                  "seconds": 36000
                },
                {
                  "id": 48517,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-10-07T18:33:46.000Z",
                  "checkout": "2018-10-08T02:33:46.000Z",
                  "seconds": 28800
                },
                {
                  "id": 48518,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-12-05T11:59:35.000Z",
                  "checkout": "2018-12-05T14:59:35.000Z",
                  "seconds": 10800
                },
                {
                  "id": 48519,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-11-14T12:38:58.000Z",
                  "checkout": "2018-11-14T21:38:58.000Z",
                  "seconds": 32400
                },
                {
                  "id": 48520,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-11-04T01:51:29.000Z",
                  "checkout": "2018-11-04T11:51:29.000Z",
                  "seconds": 36000
                },
                {
                  "id": 48521,
                  "user_id": 33365,
                  "status": "closed",
                  "checkin": "2018-09-28T23:34:35.000Z",
                  "checkout": "2018-09-29T03:34:35.000Z",
                  "seconds": 14400
                }
              ]
            }

### User checks out [POST /time_tables]


+ Request returns time table with seconds elapsed
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 48525,
              "user_id": 33383,
              "status": "closed",
              "checkin": "2019-08-29T21:44:08.258Z",
              "checkout": "2019-08-29T22:44:08.261Z",
              "seconds": 3600
            }

### User checks in [POST /time_tables]


+ Request creates an open time table
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 48527,
              "user_id": 33385,
              "status": "open",
              "checkin": "2019-08-29T22:44:08.276Z",
              "checkout": null,
              "seconds": -1567118648
            }

### Update time table (as admin) [PUT /time_tables/{id}]

+ Parameters
    + id: `48582` (number, required)

+ Request updates check tim
        endes
**PUT**&nbsp;&nbsp;`/time_tables/48582`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T16:44:08.371-05:00",
              "checkout": "2019-08-29T17:44:08.371-05:00"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 48582,
              "user_id": 33393,
              "status": "closed",
              "checkin": "2019-08-29T21:44:08.371Z",
              "checkout": "2019-08-29T22:44:08.371Z",
              "seconds": 3600
            }

### Delete time table (as admin) [DELETE /time_tables/{id}]

+ Parameters
    + id: `48680` (number, required)

+ Request renders success message
**DELETE**&nbsp;&nbsp;`/time_tables/48680`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "Time table was deleted successfully"
            }

# Group Users


## Users [/users]
### Resource User
All endpoints for the User resource (admin only)

### Get all users [GET /users]


+ Request returns all users
**GET**&nbsp;&nbsp;`/users`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "users": [
                {
                  "id": 33430,
                  "first_name": "Juli",
                  "last_name": "Klocko",
                  "email": "lonny@cummerata.com"
                },
                {
                  "id": 33431,
                  "first_name": "Dennise",
                  "last_name": "Prohaska",
                  "email": "luther.pfannerstill@flatleylangosh.org"
                },
                {
                  "id": 33432,
                  "first_name": "Leslie",
                  "last_name": "Brakus",
                  "email": "toney@berge.info"
                },
                {
                  "id": 33433,
                  "first_name": "Erna",
                  "last_name": "Schmeler",
                  "email": "ciera@torphybergstrom.biz"
                },
                {
                  "id": 33434,
                  "first_name": "Kurtis",
                  "last_name": "Marvin",
                  "email": "dustin@dickens.info"
                },
                {
                  "id": 33435,
                  "first_name": "Cesar",
                  "last_name": "Halvorson",
                  "email": "elenore_bruen@bernier.biz"
                }
              ]
            }

### Get a user [GET /users/{id}]

+ Parameters
    + id: `33465` (number, required)

+ Request returns user
**GET**&nbsp;&nbsp;`/users/33465`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 33465,
              "first_name": "Demarcus",
              "last_name": "Little",
              "email": "jonah@botsford.name"
            }

### Create a new user [POST /users]


+ Request creates a new user
**POST**&nbsp;&nbsp;`/users`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "first_name": "FirstName",
              "last_name": "LastName",
              "email": "example@example.com",
              "password": "SomePassword"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 33483,
              "first_name": "FirstName",
              "last_name": "LastName",
              "email": "example@example.com"
            }

### Update a user [PUT /users/{id}]

+ Parameters
    + id: `33515` (number, required)

+ Request updates user
**PUT**&nbsp;&nbsp;`/users/33515`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "first_name": "FirstName",
              "last_name": "LastName",
              "email": "example@example.com",
              "password": "SomePassword"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 33515,
              "first_name": "FirstName",
              "last_name": "LastName",
              "email": "example@example.com"
            }

### Delete a user [DELETE /users/{id}]

+ Parameters
    + id: `33549` (number, required)

+ Request renders success message
**DELETE**&nbsp;&nbsp;`/users/33549`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "message": "User was deleted successfully"
            }
