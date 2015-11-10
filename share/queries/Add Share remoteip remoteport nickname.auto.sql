INSERT INTO Share(
	remoteip,
	remoteport,
	nickname,
	start,
	end,
	identitytoken)
VALUES(
	@remoteip,
	@remoteport,
	@nickname,
	NOW(), 
	(NOW() + INTERVAL 30 MINUTE), 
	MD5(CONCAT(@remoteport,@remoteip,@nickname)))
