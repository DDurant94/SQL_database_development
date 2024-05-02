use MusicLibrary;

create table Artist (
id INT auto_increment primary key,
name varchar(50) NOT NULL);

create table Genre (
id INT auto_increment primary key,
genre_name varchar(50) NOT NULL
);

create table Album (
id int auto_increment primary key,
album_name varchar(50) NOT NULL,
artist_id int,
genre_id int, 
release_year year NOT NULL,
total_tracks int NOT NULL,
foreign key (artist_id) references Artist(id),
foreign key (genre_id) references Genre(id)
);

alter table Album
add total_duration time NOT NULL;