ALTER TABLE RResearcher
MODIFY RName VARCHAR(15) NOT NULL;
--
ALTER TABLE Study
ADD CONSTRAINT chk_EndDateAfterStartDate CHECK (EndDate > StartDate);
--
ALTER TABLE Participant
ALTER COLUMN Gender SET DEFAULT 'Not Specified';
--
ALTER TABLE rresearcher
ADD CONSTRAINT CheckEmailFormat CHECK ( instr(Email,'@')>0);
