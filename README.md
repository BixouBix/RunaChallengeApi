# Runa Challenge Api

## Versions
* Ruby
2.5.5
* Rails
5.2.3

## Installation
* Clone repository:
```
git@github.com:BixouBix/RunaChallengeApi.git
```
* Change to directory
```
$ cd RunaChallengeApi
```
* Install dependencies
```
$ bundle install
```
* Create database (you need to have permission to create databases in postgresql and have it running)
```
$ rails db:setup
```
* Create admin user
Open the console
```
$ rails c
```
Create the user
```
User.create!(email: 'you@example.com', password: 'SomePassword', is_admin: true)
```
* Start server
```
$ foreman start
```

## Documentation
* For full documentation launch `public/api/docs/index.html` on any browser
