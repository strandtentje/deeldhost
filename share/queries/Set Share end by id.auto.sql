UPDATE Share
SET end = NOW()
WHERE id = @id;
