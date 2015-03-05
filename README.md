# Movie API

## Broc, Dan, Doug

Movie API, returns JSON of Movies and their reviews.
JSON roots are included for movies and reviews.
A movie has many reviews. A review belongs to a movie.

#Movie attributes:
id
title: string
gross: integer
release: date
rating: string
description: string

#Review attributes
id
comment: string
stars: integer
reviewer: string

#Routes

Prefix | Verb | URI Pattern | Controller#Action
--- | --- | --- | ---

movie_reviews | GET | /movies/:movie_id/reviews(.:format) | reviews#index
              | POST | /movies/:movie_id/reviews(.:format) | reviews#create
       movies | GET |  /movies(.:format)   |                movies#index
            |  POST | /movies(.:format)     |              movies#create
        movie | GET  | /movies/:id(.:format)    |           movies#show
             | PATCH  | /movies/:id(.:format)    |           movies#update
             | PUT |  /movies/:id(.:format)    |           movies#update



Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3
