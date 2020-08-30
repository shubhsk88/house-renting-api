# Housemon Backend

This is the backend or API part of the application which is built on ruby on rails

## Built With

- Ruby v2.7.0
- Ruby on Rails v6.0.2

## Features

- A user can see the listing of the houses
- A user can signup and login in the website
- A user can see his personal favourites.

## Getting Started

- Clone the repository using `https://github.com/shubhsk88/house-renting-api.git`

### Prerequisites

Ruby: 2.7.0
Rails: 6.0.2
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate

```

### Usage

Start server with:

```

    rails server

```

Open `http://localhost:3000/` in your postman to call the apis.

Endpoints

1. User Signup
```
POST https://localhost:3000/users  user:={"username":"test","name":"test","password":"password"}
```
2. User Login
```
POST https://localhost:3000/login  user:={"username":"test","password":"password"}
```

3. User Favourite data

```
POST https://localhost:3000/favourites  token="########"


```


4.Houses Data
```
GET https://localhost:3000/houses  
```

5.Houses Data By Id
```
GET https://localhost:3000/houses/:id  
```


## Authors

👤 **Shubham Singh**

- Github: [@shubhsk88](https://github.com/shubhsk88)
- Twitter: [@shubhski](twitter.com/shubski)
- Linkedin: [linkedin](https://www.linkedin.com/in/shubhski/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
