SELECT 
	Message.id,
	text,
	username,
	start,
	DATE_FORMAT(start, '%Y-%m-%d') `date`, 
	DATE_FORMAT(start, '%H:%i:%s') `time`
FROM 
	Message 
	JOIN Login ON Message.author = Login.id
ORDER BY 
	start DESC;