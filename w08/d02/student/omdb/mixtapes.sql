create table mixtapes_songs(
  mixtape_id integer references mixtapes (id),
  song_id integer references songs(id)
);
