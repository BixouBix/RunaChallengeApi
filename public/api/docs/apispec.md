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
                  "id": 70853,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-03-09T17:20:21.000Z",
                  "checkout": "2019-03-09T22:20:21.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70854,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-08-11T12:15:56.000Z",
                  "checkout": "2019-08-11T15:15:56.000Z",
                  "seconds": 10800
                },
                {
                  "id": 70855,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-07-01T05:55:43.000Z",
                  "checkout": "2019-07-01T06:55:43.000Z",
                  "seconds": 3600
                },
                {
                  "id": 70856,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-06-15T16:18:11.000Z",
                  "checkout": "2019-06-15T23:18:11.000Z",
                  "seconds": 25200
                },
                {
                  "id": 70857,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2018-09-13T00:42:11.000Z",
                  "checkout": "2018-09-13T10:42:11.000Z",
                  "seconds": 36000
                },
                {
                  "id": 70858,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2018-10-02T12:08:15.000Z",
                  "checkout": "2018-10-02T19:08:15.000Z",
                  "seconds": 25200
                },
                {
                  "id": 70859,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-05-08T11:47:35.000Z",
                  "checkout": "2019-05-08T18:47:35.000Z",
                  "seconds": 25200
                },
                {
                  "id": 70860,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-07-01T18:41:45.000Z",
                  "checkout": "2019-07-02T00:41:45.000Z",
                  "seconds": 21600
                },
                {
                  "id": 70861,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2019-07-31T01:31:02.000Z",
                  "checkout": "2019-07-31T10:31:02.000Z",
                  "seconds": 32400
                },
                {
                  "id": 70862,
                  "user_id": 28794,
                  "status": "closed",
                  "checkin": "2018-09-11T09:22:25.000Z",
                  "checkout": "2018-09-11T12:22:25.000Z",
                  "seconds": 10800
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
                  "id": 70878,
                  "user_id": 28802,
                  "status": "closed",
                  "checkin": "2019-01-31T07:25:45.000Z",
                  "checkout": "2019-01-31T09:25:45.000Z",
                  "seconds": 7200
                },
                {
                  "id": 70879,
                  "user_id": 28802,
                  "status": "closed",
                  "checkin": "2019-02-01T07:58:10.000Z",
                  "checkout": "2019-02-01T17:58:10.000Z",
                  "seconds": 36000
                },
                {
                  "id": 70880,
                  "user_id": 28802,
                  "status": "closed",
                  "checkin": "2019-03-25T17:56:55.000Z",
                  "checkout": "2019-03-25T22:56:55.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70881,
                  "user_id": 28802,
                  "status": "closed",
                  "checkin": "2018-10-09T08:15:12.000Z",
                  "checkout": "2018-10-09T18:15:12.000Z",
                  "seconds": 36000
                },
                {
                  "id": 70882,
                  "user_id": 28802,
                  "status": "closed",
                  "checkin": "2019-08-10T20:19:46.000Z",
                  "checkout": "2019-08-11T05:19:46.000Z",
                  "seconds": 32400
                },
                {
                  "id": 70883,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2019-02-18T08:29:56.000Z",
                  "checkout": "2019-02-18T11:29:56.000Z",
                  "seconds": 10800
                },
                {
                  "id": 70884,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2018-12-18T14:39:02.000Z",
                  "checkout": "2018-12-18T21:39:02.000Z",
                  "seconds": 25200
                },
                {
                  "id": 70885,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2019-02-15T21:17:19.000Z",
                  "checkout": "2019-02-16T02:17:19.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70886,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2018-09-15T04:05:35.000Z",
                  "checkout": "2018-09-15T08:05:35.000Z",
                  "seconds": 14400
                },
                {
                  "id": 70887,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2019-03-22T22:21:39.000Z",
                  "checkout": "2019-03-23T05:21:39.000Z",
                  "seconds": 25200
                },
                {
                  "id": 70888,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2018-10-04T19:57:43.000Z",
                  "checkout": "2018-10-05T00:57:43.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70889,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2018-12-08T03:42:50.000Z",
                  "checkout": "2018-12-08T08:42:50.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70890,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2018-12-24T20:00:16.000Z",
                  "checkout": "2018-12-25T01:00:16.000Z",
                  "seconds": 18000
                },
                {
                  "id": 70891,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2019-08-03T19:42:17.000Z",
                  "checkout": "2019-08-04T03:42:17.000Z",
                  "seconds": 28800
                },
                {
                  "id": 70892,
                  "user_id": 28807,
                  "status": "closed",
                  "checkin": "2019-01-12T13:01:19.000Z",
                  "checkout": "2019-01-12T22:01:19.000Z",
                  "seconds": 32400
                }
              ]
            }

### Get time table (as user) [GET /time_tables/{id}]

+ Parameters
    + id: `70921` (number, required)

+ Request returns the time table
**GET**&nbsp;&nbsp;`/time_tables/70921`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 70921,
              "user_id": 28820,
              "status": "closed",
              "checkin": "2019-05-07T23:16:14.000Z",
              "checkout": "2019-05-08T04:16:14.000Z",
              "seconds": 18000
            }

### Get time table (as admin) [GET /time_tables/{id}]

+ Parameters
    + id: `70973` (number, required)

+ Request returns time table
**GET**&nbsp;&nbsp;`/time_tables/70973`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 70973,
              "user_id": 28850,
              "status": "closed",
              "checkin": "2019-07-26T01:56:42.000Z",
              "checkout": "2019-07-26T06:56:42.000Z",
              "seconds": 18000
            }

### Request user time tables [GET /time_tables/by_user/{user_id}]

+ Parameters
    + user_id: `28872` (number, required)

+ Request returns user time tables
**GET**&nbsp;&nbsp;`/time_tables/by_user/28872`

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
                  "id": 71008,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-07-15T13:29:41.000Z",
                  "checkout": "2019-07-15T23:29:41.000Z",
                  "seconds": 36000
                },
                {
                  "id": 71009,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-01-03T03:40:52.000Z",
                  "checkout": "2019-01-03T09:40:52.000Z",
                  "seconds": 21600
                },
                {
                  "id": 71010,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-04-24T04:48:46.000Z",
                  "checkout": "2019-04-24T12:48:46.000Z",
                  "seconds": 28800
                },
                {
                  "id": 71011,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2018-10-15T00:02:23.000Z",
                  "checkout": "2018-10-15T08:02:23.000Z",
                  "seconds": 28800
                },
                {
                  "id": 71012,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-08-11T12:00:35.000Z",
                  "checkout": "2019-08-11T19:00:35.000Z",
                  "seconds": 25200
                },
                {
                  "id": 71013,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2018-12-15T06:03:50.000Z",
                  "checkout": "2018-12-15T07:03:50.000Z",
                  "seconds": 3600
                },
                {
                  "id": 71014,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2018-10-22T14:51:31.000Z",
                  "checkout": "2018-10-22T17:51:31.000Z",
                  "seconds": 10800
                },
                {
                  "id": 71015,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-04-07T20:15:50.000Z",
                  "checkout": "2019-04-08T03:15:50.000Z",
                  "seconds": 25200
                },
                {
                  "id": 71016,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2018-11-05T09:00:04.000Z",
                  "checkout": "2018-11-05T10:00:04.000Z",
                  "seconds": 3600
                },
                {
                  "id": 71017,
                  "user_id": 28872,
                  "status": "closed",
                  "checkin": "2019-07-06T08:05:51.000Z",
                  "checkout": "2019-07-06T16:05:51.000Z",
                  "seconds": 28800
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
              "id": 71021,
              "user_id": 28890,
              "status": "closed",
              "checkin": "2019-08-29T19:48:21.470Z",
              "checkout": "2019-08-29T20:48:21.473Z",
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
              "id": 71023,
              "user_id": 28892,
              "status": "open",
              "checkin": "2019-08-29T20:48:21.491Z",
              "checkout": null,
              "seconds": -1567111701
            }

### Update time table (as admin) [PUT /time_tables/{id}]

+ Parameters
    + id: `71074` (number, required)

+ Request updates check times
**PUT**&nbsp;&nbsp;`/time_tables/71074`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T14:48:21.585-05:00",
              "checkout": "2019-08-29T15:48:21.585-05:00"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 71074,
              "user_id": 28900,
              "status": "closed",
              "checkin": "2019-08-29T19:48:21.585Z",
              "checkout": "2019-08-29T20:48:21.585Z",
              "seconds": 3600
            }

### Delete time table (as admin) [DELETE /time_tables/{id}]

+ Parameters
    + id: `71177` (number, required)

+ Request renders success message
**DELETE**&nbsp;&nbsp;`/time_tables/71177`

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
