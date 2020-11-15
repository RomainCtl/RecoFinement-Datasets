COPY public.genre(genre_id,name,count,content_type)
FROM 'genres.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('genre_genre_id_seq', COALESCE((SELECT MAX(genre_id)+1 FROM public.genre), 1), false);

-------------------

COPY public.application(app_id,name,genre_id,rating,reviews,size,installs,type,price,content_rating,last_updated,current_version,android_version,cover)
FROM 'application.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('application_app_id_seq', COALESCE((SELECT MAX(app_id)+1 FROM public.application), 1), false);

--------------------

COPY public.book(isbn,rating,rating_count,title,author,year_of_publication,publisher,image_url_s,image_url_m,image_url_l)
FROM 'books.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.game(game_id,steamid,name,short_description,header_image,website,developers,publishers,price,recommendations,release_date)
FROM 'games.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('game_game_id_seq', COALESCE((SELECT MAX(game_id)+1 FROM public.game), 1), false);

--------------------

COPY public.movie(movie_id,rating,rating_count,title,language,actors,year,producers,director,writer,imdbid,tmdbid,cover,plot_outline)
FROM 'movie.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('movie_movie_id_seq', COALESCE((SELECT MAX(movie_id)+1 FROM public.movie), 1), false);

--------------------

COPY public.track(track_id,title,year,artist_name,release,track_mmid,recording_mbid,rating,rating_count,spotify_id,covert_art_url)
FROM 'track.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('track_track_id_seq', COALESCE((SELECT MAX(track_id)+1 FROM public.track), 1), false);

--------------------

COPY public.serie(serie_id,imdbid,title,start_year,end_year,writers,directors,actors,rating,rating_count,cover,plot_outline)
FROM 'serie.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('serie_serie_id_seq', COALESCE((SELECT MAX(serie_id)+1 FROM public.serie), 1), false);

--------------------

COPY public.episode(episode_id,imdbid,title,year,genres,serie_id,season_number,episode_number,rating,rating_count)
FROM 'episode.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('episode_episode_id_seq', COALESCE((SELECT MAX(episode_id)+1 FROM public.episode), 1), false);

--------------------

COPY public.user(user_id,uuid,email,username,password_hash)
FROM 'user.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('user_user_id_seq', COALESCE((SELECT MAX(user_id)+1 FROM public.user), 1), false);

--------------------

COPY public.track_genres(track_id,genre_id)
FROM 'track_genres.csv'
DELIMITER ','
CSV HEADER;

-------------------

COPY public.game_genres(game_id,genre_id)
FROM 'game_genres.csv'
DELIMITER ','
CSV HEADER;

-------------------

COPY public.movie_genres(movie_id,genre_id)
FROM 'movie_genres.csv'
DELIMITER ','
CSV HEADER;

-------------------

COPY public.serie_genres(serie_id,genre_id)
FROM 'serie_genres.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_application(app_id,user_id,review,popularity,subjectivity,rating)
FROM 'meta_user_application.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_book(user_id,isbn,rating)
FROM 'meta_user_book.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_game(user_id,game_id,hours,purchase)
FROM 'meta_user_game.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_movie(user_id,movie_id,rating)
FROM 'meta_user_movie.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_serie(user_id,serie_id,rating)
FROM 'meta_user_serie.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_track(user_id,track_id,rating)
FROM 'meta_user_track.csv'
DELIMITER ','
CSV HEADER;
