### RunaChallengeApi

# Group TimeTables


## TimeTables [/time_tables]
### Resource TimeTable
All endpoints for the TimeTable resource

### Retrieves time tables collection [GET /unauthenticated]


+ Request returns status 401
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 200
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
                  "id": 61977,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-03-19T12:53:04.000Z",
                  "checkout": "2019-03-19T19:53:04.000Z",
                  "seconds": 25200
                },
                {
                  "id": 61978,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-03-30T09:52:33.000Z",
                  "checkout": "2019-03-30T15:52:33.000Z",
                  "seconds": 21600
                },
                {
                  "id": 61979,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2018-11-28T03:56:15.000Z",
                  "checkout": "2018-11-28T04:56:15.000Z",
                  "seconds": 3600
                },
                {
                  "id": 61980,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-07-31T19:49:05.000Z",
                  "checkout": "2019-08-01T00:49:05.000Z",
                  "seconds": 18000
                },
                {
                  "id": 61981,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-05-10T03:17:38.000Z",
                  "checkout": "2019-05-10T04:17:38.000Z",
                  "seconds": 3600
                },
                {
                  "id": 61982,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2018-09-12T23:48:41.000Z",
                  "checkout": "2018-09-13T06:48:41.000Z",
                  "seconds": 25200
                },
                {
                  "id": 61983,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-03-19T16:29:59.000Z",
                  "checkout": "2019-03-19T22:29:59.000Z",
                  "seconds": 21600
                },
                {
                  "id": 61984,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-05-07T05:30:45.000Z",
                  "checkout": "2019-05-07T14:30:45.000Z",
                  "seconds": 32400
                },
                {
                  "id": 61985,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-05-11T11:33:56.000Z",
                  "checkout": "2019-05-11T17:33:56.000Z",
                  "seconds": 21600
                },
                {
                  "id": 61986,
                  "user_id": 25459,
                  "status": "closed",
                  "checkin": "2019-02-13T13:38:55.000Z",
                  "checkout": "2019-02-13T21:38:55.000Z",
                  "seconds": 28800
                }
              ]
            }

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
                  "id": 61987,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-03-26T01:53:48.000Z",
                  "checkout": "2019-03-26T06:53:48.000Z",
                  "seconds": 18000
                },
                {
                  "id": 61988,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2018-12-04T22:14:41.000Z",
                  "checkout": "2018-12-05T02:14:41.000Z",
                  "seconds": 14400
                },
                {
                  "id": 61989,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2018-10-28T18:09:31.000Z",
                  "checkout": "2018-10-29T02:09:31.000Z",
                  "seconds": 28800
                },
                {
                  "id": 61990,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-05-02T17:38:17.000Z",
                  "checkout": "2019-05-02T22:38:17.000Z",
                  "seconds": 18000
                },
                {
                  "id": 61991,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2018-11-04T14:32:07.000Z",
                  "checkout": "2018-11-04T21:32:07.000Z",
                  "seconds": 25200
                },
                {
                  "id": 61992,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-03-17T07:23:48.000Z",
                  "checkout": "2019-03-17T13:23:48.000Z",
                  "seconds": 21600
                },
                {
                  "id": 61993,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-07-19T20:19:02.000Z",
                  "checkout": "2019-07-19T22:19:02.000Z",
                  "seconds": 7200
                },
                {
                  "id": 61994,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-06-03T15:05:08.000Z",
                  "checkout": "2019-06-03T17:05:08.000Z",
                  "seconds": 7200
                },
                {
                  "id": 61995,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-07-27T19:15:42.000Z",
                  "checkout": "2019-07-27T22:15:42.000Z",
                  "seconds": 10800
                },
                {
                  "id": 61996,
                  "user_id": 25460,
                  "status": "closed",
                  "checkin": "2019-01-25T19:15:44.000Z",
                  "checkout": "2019-01-25T23:15:44.000Z",
                  "seconds": 14400
                }
              ]
            }

+ Request returns status 200
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
                  "id": 61997,
                  "user_id": 25464,
                  "status": "closed",
                  "checkin": "2019-02-25T13:33:51.000Z",
                  "checkout": "2019-02-25T14:33:51.000Z",
                  "seconds": 3600
                },
                {
                  "id": 61998,
                  "user_id": 25464,
                  "status": "closed",
                  "checkin": "2019-07-26T21:09:22.000Z",
                  "checkout": "2019-07-26T23:09:22.000Z",
                  "seconds": 7200
                },
                {
                  "id": 61999,
                  "user_id": 25464,
                  "status": "closed",
                  "checkin": "2019-01-01T04:53:33.000Z",
                  "checkout": "2019-01-01T10:53:33.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62000,
                  "user_id": 25464,
                  "status": "closed",
                  "checkin": "2019-08-03T14:10:09.000Z",
                  "checkout": "2019-08-03T23:10:09.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62001,
                  "user_id": 25464,
                  "status": "closed",
                  "checkin": "2019-06-26T06:41:27.000Z",
                  "checkout": "2019-06-26T13:41:27.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62002,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-07-31T21:27:40.000Z",
                  "checkout": "2019-07-31T23:27:40.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62003,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2018-10-13T20:18:30.000Z",
                  "checkout": "2018-10-14T00:18:30.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62004,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-06-19T10:43:50.000Z",
                  "checkout": "2019-06-19T17:43:50.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62005,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2018-11-20T15:29:01.000Z",
                  "checkout": "2018-11-21T01:29:01.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62006,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-08-25T14:39:14.000Z",
                  "checkout": "2019-08-25T18:39:14.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62007,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-07-08T02:25:48.000Z",
                  "checkout": "2019-07-08T03:25:48.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62008,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-04-04T22:18:36.000Z",
                  "checkout": "2019-04-05T01:18:36.000Z",
                  "seconds": 10800
                },
                {
                  "id": 62009,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-02-25T23:45:24.000Z",
                  "checkout": "2019-02-26T09:45:24.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62010,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2018-11-23T03:27:11.000Z",
                  "checkout": "2018-11-23T04:27:11.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62011,
                  "user_id": 25466,
                  "status": "closed",
                  "checkin": "2019-04-05T15:56:02.000Z",
                  "checkout": "2019-04-05T17:56:02.000Z",
                  "seconds": 7200
                }
              ]
            }

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
                  "id": 62012,
                  "user_id": 25468,
                  "status": "closed",
                  "checkin": "2019-03-26T08:59:24.000Z",
                  "checkout": "2019-03-26T16:59:24.000Z",
                  "seconds": 28800
                },
                {
                  "id": 62013,
                  "user_id": 25468,
                  "status": "closed",
                  "checkin": "2019-03-07T16:30:16.000Z",
                  "checkout": "2019-03-07T23:30:16.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62014,
                  "user_id": 25468,
                  "status": "closed",
                  "checkin": "2018-10-13T11:07:36.000Z",
                  "checkout": "2018-10-13T20:07:36.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62015,
                  "user_id": 25468,
                  "status": "closed",
                  "checkin": "2019-05-31T13:37:50.000Z",
                  "checkout": "2019-05-31T14:37:50.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62016,
                  "user_id": 25468,
                  "status": "closed",
                  "checkin": "2018-12-28T05:13:09.000Z",
                  "checkout": "2018-12-28T10:13:09.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62017,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-07-28T20:29:51.000Z",
                  "checkout": "2019-07-29T04:29:51.000Z",
                  "seconds": 28800
                },
                {
                  "id": 62018,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-03-25T19:53:04.000Z",
                  "checkout": "2019-03-26T01:53:04.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62019,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-07-29T17:47:09.000Z",
                  "checkout": "2019-07-30T03:47:09.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62020,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-04-20T14:15:16.000Z",
                  "checkout": "2019-04-20T19:15:16.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62021,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2018-12-22T18:03:50.000Z",
                  "checkout": "2018-12-22T23:03:50.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62022,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-05-19T23:52:27.000Z",
                  "checkout": "2019-05-20T09:52:27.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62023,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-01-07T16:04:00.000Z",
                  "checkout": "2019-01-08T02:04:00.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62024,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2018-09-18T16:09:53.000Z",
                  "checkout": "2018-09-19T02:09:53.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62025,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-08-18T11:07:33.000Z",
                  "checkout": "2019-08-18T15:07:33.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62026,
                  "user_id": 25473,
                  "status": "closed",
                  "checkin": "2019-01-15T02:41:08.000Z",
                  "checkout": "2019-01-15T12:41:08.000Z",
                  "seconds": 36000
                }
              ]
            }

### Retrieves specific time table [GET /unauthenticated]

+ Parameters
    + id: `62031` (number, required)

+ Request returns status 401
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 200
**GET**&nbsp;&nbsp;`/time_tables/62040`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62040,
              "user_id": 25485,
              "status": "closed",
              "checkin": "2019-03-27T20:33:34.000Z",
              "checkout": "2019-03-28T00:33:34.000Z",
              "seconds": 14400
            }

+ Request returns the time table
**GET**&nbsp;&nbsp;`/time_tables/62053`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62053,
              "user_id": 25486,
              "status": "closed",
              "checkin": "2019-04-11T23:37:41.000Z",
              "checkout": "2019-04-12T03:37:41.000Z",
              "seconds": 14400
            }

+ Request returns status 403
**GET**&nbsp;&nbsp;`/time_tables/62067`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request renders access denied message
**GET**&nbsp;&nbsp;`/time_tables/62082`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request does not return time table
**GET**&nbsp;&nbsp;`/time_tables/62100`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request returns status 200
**GET**&nbsp;&nbsp;`/time_tables/62106`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62106,
              "user_id": 25509,
              "status": "closed",
              "checkin": "2019-07-25T12:04:05.000Z",
              "checkout": "2019-07-25T16:04:05.000Z",
              "seconds": 14400
            }

+ Request returns time table
**GET**&nbsp;&nbsp;`/time_tables/62108`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62108,
              "user_id": 25516,
              "status": "closed",
              "checkin": "2018-12-16T13:57:56.000Z",
              "checkout": "2018-12-16T21:57:56.000Z",
              "seconds": 28800
            }

+ Request returns status 404
**GET**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }

+ Request returns error message
**GET**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }

### Retrieves a collection of time tables belonging to a specific user [GET /unauthenticated]

+ Parameters
    + user_id: `25519` (number, required)

+ Request returns status 401
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**GET**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 200
**GET**&nbsp;&nbsp;`/time_tables/by_user/25521`

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
                  "id": 62112,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2018-11-20T23:30:18.000Z",
                  "checkout": "2018-11-21T09:30:18.000Z",
                  "seconds": 36000
                },
                {
                  "id": 62113,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2018-10-18T00:13:19.000Z",
                  "checkout": "2018-10-18T02:13:19.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62114,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-03-28T21:19:27.000Z",
                  "checkout": "2019-03-28T22:19:27.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62115,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-07-06T10:40:10.000Z",
                  "checkout": "2019-07-06T14:40:10.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62116,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-03-24T08:53:54.000Z",
                  "checkout": "2019-03-24T16:53:54.000Z",
                  "seconds": 28800
                },
                {
                  "id": 62117,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-02-07T02:01:09.000Z",
                  "checkout": "2019-02-07T03:01:09.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62118,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-01-12T18:16:49.000Z",
                  "checkout": "2019-01-13T03:16:49.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62119,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-04-24T03:50:24.000Z",
                  "checkout": "2019-04-24T10:50:24.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62120,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2019-02-17T12:45:06.000Z",
                  "checkout": "2019-02-17T14:45:06.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62121,
                  "user_id": 25521,
                  "status": "closed",
                  "checkin": "2018-09-25T21:54:47.000Z",
                  "checkout": "2018-09-26T02:54:47.000Z",
                  "seconds": 18000
                }
              ]
            }

+ Request returns the users time tables
**GET**&nbsp;&nbsp;`/time_tables/by_user/25522`

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
                  "id": 62122,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2018-10-14T01:01:50.000Z",
                  "checkout": "2018-10-14T08:01:50.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62123,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-04-23T14:11:13.000Z",
                  "checkout": "2019-04-23T22:11:13.000Z",
                  "seconds": 28800
                },
                {
                  "id": 62124,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-08-23T05:09:52.000Z",
                  "checkout": "2019-08-23T11:09:52.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62125,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2018-11-19T23:57:10.000Z",
                  "checkout": "2018-11-20T08:57:10.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62126,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-01-22T19:07:16.000Z",
                  "checkout": "2019-01-23T02:07:16.000Z",
                  "seconds": 25200
                },
                {
                  "id": 62127,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-06-11T22:05:21.000Z",
                  "checkout": "2019-06-12T06:05:21.000Z",
                  "seconds": 28800
                },
                {
                  "id": 62128,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2018-09-19T14:11:43.000Z",
                  "checkout": "2018-09-19T23:11:43.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62129,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2018-12-30T03:33:43.000Z",
                  "checkout": "2018-12-30T07:33:43.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62130,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-03-06T04:24:38.000Z",
                  "checkout": "2019-03-06T10:24:38.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62131,
                  "user_id": 25522,
                  "status": "closed",
                  "checkin": "2019-03-01T13:41:52.000Z",
                  "checkout": "2019-03-01T22:41:52.000Z",
                  "seconds": 32400
                }
              ]
            }

+ Request returns status 403
**GET**&nbsp;&nbsp;`/time_tables/by_user/25524`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request renders access denied message
**GET**&nbsp;&nbsp;`/time_tables/by_user/25530`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request returns status 200
**GET**&nbsp;&nbsp;`/time_tables/by_user/25536`

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
                  "id": 62132,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-10-19T15:26:58.000Z",
                  "checkout": "2018-10-19T21:26:58.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62133,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-11-02T23:46:33.000Z",
                  "checkout": "2018-11-03T01:46:33.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62134,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-12-03T18:46:04.000Z",
                  "checkout": "2018-12-03T19:46:04.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62135,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2019-08-05T08:52:42.000Z",
                  "checkout": "2019-08-05T12:52:42.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62136,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-12-24T01:39:55.000Z",
                  "checkout": "2018-12-24T03:39:55.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62137,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-11-22T20:45:28.000Z",
                  "checkout": "2018-11-23T05:45:28.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62138,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2019-01-04T19:37:34.000Z",
                  "checkout": "2019-01-05T04:37:34.000Z",
                  "seconds": 32400
                },
                {
                  "id": 62139,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2019-01-31T02:40:11.000Z",
                  "checkout": "2019-01-31T06:40:11.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62140,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2019-06-30T22:53:56.000Z",
                  "checkout": "2019-07-01T00:53:56.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62141,
                  "user_id": 25536,
                  "status": "closed",
                  "checkin": "2018-12-14T11:21:09.000Z",
                  "checkout": "2018-12-14T14:21:09.000Z",
                  "seconds": 10800
                }
              ]
            }

+ Request returns user time tables
**GET**&nbsp;&nbsp;`/time_tables/by_user/25538`

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
                  "id": 62142,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-04-01T06:03:36.000Z",
                  "checkout": "2019-04-01T08:03:36.000Z",
                  "seconds": 7200
                },
                {
                  "id": 62143,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2018-11-30T20:39:47.000Z",
                  "checkout": "2018-12-01T00:39:47.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62144,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-02-15T12:54:23.000Z",
                  "checkout": "2019-02-15T16:54:23.000Z",
                  "seconds": 14400
                },
                {
                  "id": 62145,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-02-03T13:32:16.000Z",
                  "checkout": "2019-02-03T16:32:16.000Z",
                  "seconds": 10800
                },
                {
                  "id": 62146,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-02-16T08:33:12.000Z",
                  "checkout": "2019-02-16T13:33:12.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62147,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-06-19T10:27:10.000Z",
                  "checkout": "2019-06-19T11:27:10.000Z",
                  "seconds": 3600
                },
                {
                  "id": 62148,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2018-09-02T09:49:01.000Z",
                  "checkout": "2018-09-02T15:49:01.000Z",
                  "seconds": 21600
                },
                {
                  "id": 62149,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-01-21T09:22:41.000Z",
                  "checkout": "2019-01-21T14:22:41.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62150,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2018-12-17T23:28:30.000Z",
                  "checkout": "2018-12-18T04:28:30.000Z",
                  "seconds": 18000
                },
                {
                  "id": 62151,
                  "user_id": 25538,
                  "status": "closed",
                  "checkin": "2019-03-04T10:28:35.000Z",
                  "checkout": "2019-03-04T15:28:35.000Z",
                  "seconds": 18000
                }
              ]
            }

+ Request returns status 200
**GET**&nbsp;&nbsp;`/time_tables/by_user/25540`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "time_tables": [
            
              ]
            }

+ Request returns an empty array
**GET**&nbsp;&nbsp;`/time_tables/by_user/25546`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "time_tables": [
            
              ]
            }

+ Request returns status 404
**GET**&nbsp;&nbsp;`/time_tables/by_user/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "User not found"
            }

+ Request returns error message
**GET**&nbsp;&nbsp;`/time_tables/by_user/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "User not found"
            }

### Registers a user chekin/checkout [POST /unauthenticated]


+ Request returns status 401
**POST**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**POST**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 200
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62152,
              "user_id": 25553,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.385Z",
              "checkout": "2019-08-29T18:04:35.387Z",
              "seconds": 3600
            }

+ Request returns time table with checkout
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62153,
              "user_id": 25554,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.393Z",
              "checkout": "2019-08-29T18:04:35.396Z",
              "seconds": 3600
            }

+ Request returns closed time table
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62154,
              "user_id": 25555,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.402Z",
              "checkout": "2019-08-29T18:04:35.405Z",
              "seconds": 3600
            }

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
              "id": 62155,
              "user_id": 25556,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.412Z",
              "checkout": "2019-08-29T18:04:35.416Z",
              "seconds": 3600
            }

+ Request returns status 200
**POST**&nbsp;&nbsp;`/time_tables`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62156,
              "user_id": 25557,
              "status": "open",
              "checkin": "2019-08-29T18:04:35.425Z",
              "checkout": null,
              "seconds": -1567101875
            }

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
              "id": 62157,
              "user_id": 25558,
              "status": "open",
              "checkin": "2019-08-29T18:04:35.433Z",
              "checkout": null,
              "seconds": -1567101875
            }

### Updates a time table (admin only) [PUT /unauthenticated]

+ Parameters
    + id: `62167` (number, required)

+ Request returns status 401
**PUT**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T13:04:35.453-05:00"
            }

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**PUT**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T13:04:35.472-05:00"
            }

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 403
**PUT**&nbsp;&nbsp;`/time_tables/62184`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T13:04:35.490-05:00"
            }

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request renders access denied message
**PUT**&nbsp;&nbsp;`/time_tables/62197`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T13:04:35.507-05:00"
            }

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request returns status 200
**PUT**&nbsp;&nbsp;`/time_tables/62206`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.510-05:00",
              "checkout": "2019-08-29T13:04:35.510-05:00"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62206,
              "user_id": 25564,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.510Z",
              "checkout": "2019-08-29T18:04:35.510Z",
              "seconds": 3600
            }

+ Request updates check times
**PUT**&nbsp;&nbsp;`/time_tables/62214`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.534-05:00",
              "checkout": "2019-08-29T13:04:35.534-05:00"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62214,
              "user_id": 25566,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.534Z",
              "checkout": "2019-08-29T18:04:35.534Z",
              "seconds": 3600
            }

+ Request returns a closed time table
**PUT**&nbsp;&nbsp;`/time_tables/62225`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.557-05:00",
              "checkout": "2019-08-29T13:04:35.557-05:00"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62225,
              "user_id": 25568,
              "status": "closed",
              "checkin": "2019-08-29T17:04:35.557Z",
              "checkout": "2019-08-29T18:04:35.557Z",
              "seconds": 3600
            }

+ Request returns status 200
**PUT**&nbsp;&nbsp;`/time_tables/62233`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.580-05:00",
              "checkout": null
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62233,
              "user_id": 25570,
              "status": "open",
              "checkin": "2019-08-29T17:04:35.580Z",
              "checkout": null,
              "seconds": -1567098275
            }

+ Request updates check times
**PUT**&nbsp;&nbsp;`/time_tables/62245`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.603-05:00",
              "checkout": null
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62245,
              "user_id": 25572,
              "status": "open",
              "checkin": "2019-08-29T17:04:35.603Z",
              "checkout": null,
              "seconds": -1567098275
            }

+ Request returns a closed time table
**PUT**&nbsp;&nbsp;`/time_tables/62254`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.629-05:00",
              "checkout": null
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 62254,
              "user_id": 25574,
              "status": "open",
              "checkin": "2019-08-29T17:04:35.629Z",
              "checkout": null,
              "seconds": -1567098275
            }

+ Request returns status 404
**PUT**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.651-05:00",
              "checkout": "2019-08-29T13:04:35.651-05:00"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }

+ Request returns error message
**PUT**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "checkin": "2019-08-29T12:04:35.657-05:00",
              "checkout": "2019-08-29T13:04:35.657-05:00"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }

### Deletes a time table (admin only) [DELETE /unauthenticated]

+ Parameters
    + id: `62261` (number, required)

+ Request returns status 401
**DELETE**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request renders error message
**DELETE**&nbsp;&nbsp;`/unauthenticated`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "You need to sign in or sign up before continuing."
            }

+ Request returns status 403
**DELETE**&nbsp;&nbsp;`/time_tables/62285`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request renders access denied message
**DELETE**&nbsp;&nbsp;`/time_tables/62292`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "Access denied": "You don't have access to this resource"
            }

+ Request returns status 200
**DELETE**&nbsp;&nbsp;`/time_tables/62304`

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

+ Request renders success message
**DELETE**&nbsp;&nbsp;`/time_tables/62314`

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

+ Request returns status 404
**DELETE**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }

+ Request returns error message
**DELETE**&nbsp;&nbsp;`/time_tables/0`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "TimeTable not found"
            }
