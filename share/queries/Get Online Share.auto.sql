SELECT * FROM Share
WHERE `start` <= NOW()
AND NOW() <= `end`;
