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

#Movie Actions
index, show, create, update

#Review Actions
index (requies movie)
create (requires movie)


#Endpoints
/movies





[{"id":1,"title":"The Shawshank Redemption","gross":25000000,"release":"1994-10-14","rating":"R","description":"Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940's, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner.","created_at":"03-05-2015","reviews":[{"id":1,"comment":"I have never seen such an amazing film since I saw The Shawshank Redemption. Shawshank encompasses friendships, hardships, hopes, and dreams. And what is so great about the movie is that it moves you, it gives you hope. Even though the circumstances between the characters and the viewers are quite different, you don't feel that far removed from what the characters are going through.\n\nIt is a simple film, yet it has an everlasting message. Frank Darabont didn't need to put any kind of outlandish special effects to get us to love this film, the narration and the acting does that for him. Why this movie didn't win all seven Oscars is beyond me, but don't let that sway you to not see this film, let its ranking on the IMDb's top 250 list sway you, let your friends recommendation about the movie sway you.\n\nSet aside a little over two hours tonight and rent this movie. You will finally understand what everyone is talking about and you will understand why this is my all time favorite movie.","stars":5,"reviewer":"speedreid","created_at":"03-05-2015"}]}, ... ,{"id":5,"title":"Pulp Fiction","gross":107928762,"release":"1994-10-14","rating":"R","description":"Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.","created_at":"03-05-2015","reviews":[{"id":5,"comment":"If you think \"Pulp Fiction\" is brilliant, you're wrong. It's more than that. It's a milestone in the history of film making. It's already a classic. But why? Because of the many \"f\" words, or maybe because of the brain and skull pieces on the rear window of a car? No, that's surely not the point (unfortunately some other users - fortunately the minority - don't get it). Tarantino has made a movie that's someway different from many other action, gangster or crime movies. What's so different? He knows the subject of the movie is \"cool\", he knows it's a product of mass culture, and he even likes it by himself. But he smiles at it and tells three great stories with a lot of irony. And this irony is the first point. The second point is that he gave souls to extremely schematic characters. They surely aren't another action heroes who you forget as fast as you can twinkle. They are human beings like we are, talking about Burger King and McDonalds, about TV series and a foot massage. They just earn their money with killing others or selling drugs. What else is so great about \"Pulp Fiction\"? It's the acting, the directing, the cinematography, the soundtrack, the sense of humour and the whole rest. In my opinion it's all worth nothing less than a 10 out of 10. A masterpiece.","stars":5,"reviewer":"Luke-20","created_at":"03-05-2015"},{"id":6,"comment":"To put this in context, I am 34 years old and I have to say that this is the best film I have seen without doubt and I don't expect it will be beaten as far as I am concerned. Obviously times move on, and I acknowledge that due to its violence and one particularly uncomfortable scene this film is not for everyone, but I still remember watching it for the first time, and it blew me away. Anyone who watches it now has to remember that it actually changed the history of cinema. In context- it followed a decade or more of action films that always ended with a chase sequence where the hero saved the day - you could have written those films yourself. Pulp had you gripped and credited the audience with intelligence. There is not a line of wasted dialogue and the movie incorporates a number of complexities that are not immediately obvious. It also resurrected the career of Grease icon John Travolta and highlighted the acting talent of Samuel L Jackson. There are many films now that are edited out of sequence and have multiple plots etc but this is the one they all want to be, or all want to beat, but never will.","stars":5,"reviewer":"wolvesrug","created_at":"03-05-2015"}]}]
