
 -- Parameters: :department_id (INTEGER)
SELECT ResearcherID, RName, REmail, RPhone, Department, ResearchField, YearsOfExperience, Degree, NumArticales
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
                WHERE StudyID IN (
                    SELECT StudyID
                    FROM conducts
                    WHERE ResearcherID IN (
                        SELECT ResearcherID
                        FROM RResearcher
                        WHERE Department = &<name=department_id type=integer>
                    )
                )
                GROUP BY StudyID
            )
        )
    )
);
--
SELECT ParticipantID, PName, Age, Gender, Address, PEmail, SampleID
FROM Participant
WHERE Age > (
  SELECT AVG(Age)
  FROM Participant
)
AND SampleID IN (
  SELECT SampleID
  FROM ccontaining
  WHERE StudyID IN (
    SELECT StudyID
    FROM Study
    WHERE EndDate BETWEEN &< name=end_date_start type=Date> AND &<name=end_date_end type=date>
  )
);
--
SELECT p.ParticipantID, p.PName || ' ' || p.Age AS ParticipantDetails, p.Gender, p.Address, p.PEmail, p.SampleID,
   (SELECT COUNT(*)
    FROM ccontaining c
    JOIN Study s ON c.StudyID = s.StudyID
    WHERE c.SampleID = p.SampleID
    AND s.EndDate BETWEEN &<name=start_date type=date> AND &<name=end_date type=date>
    AND p.Age > &<name=min_age type=integer>) AS StudyCount
FROM Participant p
WHERE EXISTS (
                SELECT 1
                FROM ccontaining c
                JOIN Study s ON c.StudyID = s.StudyID
                WHERE c.SampleID = p.SampleID
                AND s.EndDate BETWEEN &<name=start_date type=date> AND &<name=end_date type=date>
                AND p.Age > &<name=min_age type=integer>
              );
--
SELECT
   p.ParticipantID, p.PName || ' ' || p.Age AS ParticipantDetails, p.Gender, p.Address, p.PEmail, p.SampleID,
   (SELECT 
   COUNT(*)
   FROM Reports r
   WHERE r.ResearcherID = p.ParticipantID
      AND r.CreationDate BETWEEN &<name=start_date type=date> AND &<name=end_date type=date>) AS ReportCount,
   (SELECT
   COUNT(*)
   FROM Study s
   WHERE s.StudyID IN (
      SELECT c.StudyID
      FROM ccontaining c
      WHERE c.SampleID = p.SampleID
   )
   AND s.EndDate BETWEEN &<name=start_date type=date> AND &<name=end_date type=date>) AS StudyCount
FROM Participant p
WHERE p.Address IN (&<name=address type=string list="SELECT Address FROM Participant ORDER BY Address" multiselect="yes" hint="Select the addresses">)
AND p.Age > &<name=min_age type=integer>;

