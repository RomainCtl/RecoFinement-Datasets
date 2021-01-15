COPY public.genre(genre_id,name,count,content_type)
FROM 'genres.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('genre_genre_id_seq', COALESCE((SELECT MAX(genre_id)+1 FROM public.genre), 1), false);

-------------------

COPY public.content(content_id,rating,rating_count)
FROM 'content.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('content_content_id_seq', COALESCE((SELECT MAX(content_id)+1 FROM public.content), 1), false);

-------------------

COPY public.application(content_id,name,size,installs,type,price,content_rating,last_updated,current_version,android_version,cover)
FROM 'application.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.book(content_id,isbn,title,author,year_of_publication,publisher,image_url_s,image_url_m,image_url_l)
FROM 'books.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.game(content_id,steamid,name,short_description,header_image,website,developers,publishers,price,recommendations,release_date)
FROM 'games.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.movie(content_id,title,language,actors,year,producers,director,writer,imdbid,tmdbid,cover,plot_outline)
FROM 'movie.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.track(content_id,title,year,artist_name,release,track_mmid,recording_mbid,spotify_id,covert_art_url)
FROM 'track.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.serie(content_id,imdbid,title,start_year,end_year,writers,directors,actors,cover,plot_outline)
FROM 'serie.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.episode(content_id,imdbid,title,year,serie_id,season_number,episode_number)
FROM 'episode.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.user(user_id,uuid,email,username,password_hash)
FROM 'user.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('user_user_id_seq', COALESCE((SELECT MAX(user_id)+1 FROM public.user), 1), false);

--------------------

COPY public.content_genres(content_id,genre_id)
FROM 'content_genres.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.meta_user_content(content_id,user_id,rating,count)
FROM 'meta_user_content_1.csv'
DELIMITER ','
CSV HEADER;

COPY public.meta_user_content(content_id,user_id,rating,count)
FROM 'meta_user_content_2.csv'
DELIMITER ','
CSV HEADER;

COPY public.meta_user_content(content_id,user_id,rating,count)
FROM 'meta_user_content_3.csv'
DELIMITER ','
CSV HEADER;

COPY public.meta_user_content(content_id,user_id,rating,count)
FROM 'meta_user_content_4.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.role(role_id,name)
FROM 'role.csv'
DELIMITER ','
CSV HEADER;

SELECT setval('role_role_id_seq', COALESCE((SELECT MAX(role_id)+1 FROM public.role), 1), false);

--------------------

COPY public.permission(permission)
FROM 'permission.csv'
DELIMITER ','
CSV HEADER;

--------------------

COPY public.role_permission(role_id,permission)
FROM 'role_permission.csv'
DELIMITER ','
CSV HEADER;
