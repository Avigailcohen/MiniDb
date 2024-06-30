--
SELECT R.ResearcherID, R.RName, S.Title, S.StartDate, S.EndDate
FROM RResearcher R
JOIN conducts C ON R.ResearcherID = C.ResearcherID
JOIN Study S ON C.StudyID = S.StudyID
ORDER BY S.StartDate DESC;
--
SELECT StudyID, SDescription, StartDate, EndDate, Title, publication, Cnclousions
FROM Study
WHERE StudyID IN (
  SELECT StudyID
  FROM (
    SELECT StudyID, COUNT(*) AS ParticipantCount
    FROM containing
    JOIN Participant ON containing.SampleID = Participant.SampleID
    GROUP BY StudyID
    ORDER BY ParticipantCount DESC
  ) WHERE ROWNUM <= 3
);
--
SELECT ParticipantID, PName, Age, Gender, Address, PEmail, SampleID
FROM Participant
WHERE ParticipantID IN (
  SELECT ParticipantID
  FROM BloodDonation
  GROUP BY ParticipantID
  HAVING SUM(BloodQuantity) > (
    SELECT AVG(TotalBloodQuantity)
    FROM (
      SELECT ParticipantID, SUM(BloodQuantity) AS TotalBloodQuantity
      FROM BloodDonation
      GROUP BY ParticipantID
    )
  )
);
--

SELECT *
FROM RResearcher
WHERE ResearcherID IN (
  SELECT ResearcherID
  FROM conducts
  WHERE StudyID IN (
    SELECT StudyID
    FROM containing
    GROUP BY StudyID
    HAVING COUNT(SampleID) > (
      SELECT AVG(ParticipantCount)
      FROM (
        SELECT COUNT(SampleID) AS ParticipantCount
        FROM containing
        GROUP BY StudyID
      )
    )
  )
);
