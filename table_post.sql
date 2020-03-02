-- Предложить свою реализацию лайков и постов.

DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	author_id INT UNSIGNED NOT NULL,  -- может быть user или communities
	media_id INT UNSIGNED , -- ссылка может быть а может нет
	body TEXT NOT NULL,
  	created_at DATETIME DEFAULT NOW()
	);
	
CREATE TABLE likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	author_id INT UNSIGNED NOT NULL,
	id_type_content_like INT UNSIGNED NOT NULL, 
  	created_at DATETIME DEFAULT NOW()
	);

CREATE TABLE type_content_like (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_media INT UNSIGNED NOT NULL,
	id_users INT UNSIGNED NOT NULL,
	id_posts INT UNSIGNED NOT NULL
);
