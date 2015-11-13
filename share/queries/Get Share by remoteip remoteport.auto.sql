SELECT id, "update" action FROM Share
WHERE remoteip = @remoteip
AND remoteport = @remoteport
AND `start` <= NOW()
AND NOW() <= `end`;
