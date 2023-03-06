CREATE DATABASE bucketlist;

use use knights;

CREATE TABLE IF NOT EXISTS `tbl_user` (
	`user_id` int(11) NOT NULL AUTO_INCREMENT,
  	`user_name` varchar(50) NOT NULL,
  	`user_username` varchar(255) NOT NULL,
  	`user_password` varchar(100) NOT NULL,
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DELIMITER //

CREATE PROCEDURE `sp_createUser`(
    IN p_name VARCHAR(20),
    IN p_username VARCHAR(20),
    IN p_password VARCHAR(20)
)
BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username) ) THEN

        select 'Username Exists !!';

    ELSE

        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );

    END IF;
END //
DELIMITER ;
