COPY public.application(app_id,name,category,rating,reviews,size,installs,type,price,content_rating,genres,last_updated,current_version,android_version)
FROM 'application.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('application_app_id_seq', COALESCE((SELECT MAX(app_id)+1 FROM public.application), 1), false);

--------------------

COPY public.book(isbn,title,author,year_of_publication,publisher,image_url_s,image_url_m,image_url_l)
FROM 'books.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.game(game_id,steamid,name,short_description,header_image,website,developers,publishers,price,genres,recommendations,release_date)
FROM 'games.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('game_game_id_seq', COALESCE((SELECT MAX(game_id)+1 FROM public.game), 1), false);

--------------------

COPY public.movie(movie_id,title,genres,language,actors,year,producers,director,writer,imdbid,tmdbid)
FROM 'movie.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('movie_movie_id_seq', COALESCE((SELECT MAX(movie_id)+1 FROM public.movie), 1), false);

--------------------

COPY public.track(track_id,title,year,artist_name,release,track_mmid,recording_mbid,language,rating,rating_count,url,covert_art_url)
FROM 'track.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('track_track_id_seq', COALESCE((SELECT MAX(track_id)+1 FROM public.track), 1), false);

--------------------

COPY public.user(user_id,uuid,email,username,password_hash)
FROM 'user.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('user_user_id_seq', COALESCE((SELECT MAX(user_id)+1 FROM public.user), 1), false);

--------------------

COPY public.similars_track(track_id0,track_id1,similarity)
FROM 'similars_track.csv'
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

COPY public.meta_user_track(user_id,track_id,rating)
FROM 'meta_user_track.csv'
DELIMITER ','
CSV HEADER;
