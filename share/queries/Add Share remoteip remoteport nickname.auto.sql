INSERT INTO Share(
	remoteip,
	remoteport,
	nickname,
	start,
	end,
	identitytoken,
	secret)
VALUES(
	@remoteip,
	@remoteport,
	@nickname,
	NOW(), 
	(NOW() + INTERVAL 30 MINUTE), 
	SHA2(
		CONCAT(@remoteport,@remoteip,@nickname), 384
		),
	SHA2(
		CONCAT(NOW(), RAND()), 384
		)
	);

SELECT 
	id,
	remoteip,
	remoteport,
	nickname,
	start,
	end,
	identitytoken,
	secret
FROM
	Share
WHERE
	id = LAST_INSERT_ID();
