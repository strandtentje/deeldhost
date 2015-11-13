SELECT IF(COUNT(identitytoken) > 0, "index", "nothing") action
FROM Share
WHERE identitytoken=@identitytoken;