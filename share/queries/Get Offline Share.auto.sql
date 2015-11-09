SELECT 
	MAX(OfflineShare.id) id,
    ViewShare.nickname nickname,
    ViewShare.`start` `start`,
    "about" remoteip,
    "blank" remoteport
FROM 
	`Share` OfflineShare 
JOIN 
	`Share` ViewShare 
	ON 
		OfflineShare.id = ViewShare.id
WHERE 
	NOW() > OfflineShare.`end`
GROUP BY 
	OfflineShare.identitytoken;
