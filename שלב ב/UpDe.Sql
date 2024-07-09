DELETE FROM Participant
WHERE ParticipantID IN (
    SELECT p.ParticipantID
    FROM Participant p
    JOIN Sample s ON p.SampleID = s.SampleID
    JOIN containing c ON s.SampleID = c.SampleID
    JOIN Study st ON c.StudyID = st.StudyID
    JOIN conducts con ON st.StudyID = con.StudyID
    JOIN RResearcher r ON con.ResearcherID = r.ResearcherID
    WHERE r.ResearcherID = 12345 AND st.StudyID = 67890
);
--
DELETE FROM Participant
WHERE ParticipantID IN (
    SELECT p.ParticipantID
    FROM Participant p
    LEFT JOIN BloodDonation bd ON p.ParticipantID = bd.ParticipantID
    GROUP BY p.ParticipantID
    HAVING SUM(bd.BloodQuantity) < (
        SELECT AVG(sub.TotalBloodQuantity)
        FROM (
            SELECT SUM(bd_inner.BloodQuantity) AS TotalBloodQuantity
            FROM BloodDonation bd_inner
            WHERE bd_inner.BloodType = bd.BloodType
            GROUP BY bd_inner.ParticipantID
        ) sub
    )
);
--Update
UPDATE RResearcher
SET YearsOfExperience = YearsOfExperience + 1
WHERE ResearcherID IN (
    SELECT con.ResearcherID
    FROM conducts con
    GROUP BY con.ResearcherID
    HAVING COUNT(con.StudyID) > 1
);
--
UPDATE Participant
SET Address = 'Updated Address'
WHERE ParticipantID IN (
    SELECT bd.ParticipantID
    FROM BloodDonation bd
    GROUP BY bd.ParticipantID
    HAVING SUM(bd.BloodQuantity) > (
        SELECT AVG(TotalBloodQuantity)
        FROM (
            SELECT SUM(BloodQuantity) AS TotalBloodQuantity
            FROM BloodDonation
            WHERE BloodType = 'A+'
            GROUP BY ParticipantID
        ) sub
    )
);
