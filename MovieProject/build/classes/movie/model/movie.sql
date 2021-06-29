select * from tbl_member;

delete from tbl_member where member_id='member';
commit;

	

select * from tbl_movie;

select * from tbl_admin;

insert into tbl_movie  (movie_seq,movie_picture, movie_country, movie_title, movie_genre, movie_summary, movie_director, 
movie_rate, movie_actor, movie_video, movie_price, movie_runtime, movie_producer, movie_sdate, movie_sumaudience, movie_age,admin_id) 
values (MOVIE_IDX.nextval,'https://image.aladin.co.kr/product/2635/47/cover500/8965673232_1.jpg', 'Korea', '한글', '로맨스', '물고기의 불튀기는 생존기를 그린 액션영화', '손민호', '3.5', 'fish', 'https://www.youtube.com/watch?v=mS2BlBrBoxY', '1000원', '180분', '마블', '2007-03-15',
'5백만', '15','admin');
 select * from tbl_movie where movie_title= '한글';
 
 select  movie_seq,movie_picture,movie_country,movie_title,movie_genre,movie_summary,movie_director,movie_rate,movie_actor,movie_video,movie_price,movie_runtime,movie_producer,movie_sdate,movie_sumaudience,movie_age,admin_id   from tbl_movie where movie_title like '명%';
 ALTER TABLE TBL_REVIEW MODIFY review_date  datetime not null default sysdate;
 ALTER TABLE TBL_REVIEW MODIFY (review_date datetime not null default sysdate);
 ALTER TABLE TBL_REVIEW MODIFY (review_date DEFAULT sysdate);
 ALTER TABLE TBL_REVIEW MODIFY (review_date DEFAULT sysdate);
 ALTER TABLE TBL_REVIEW ADD review_id varchar(30) not null;
 select * from tbl_review;
 
 insert into TBL_REVIEW(review_seq,review_contents,review_movie,member_seq,movie_seq) values(review_idx.nextval,'5','1','1','1');
 delete from tbl_review ;
 
 select * from ( select movie_seq as row_num, tbl_movie.* from tbl_movie)  where row_num <=10;