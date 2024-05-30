CREATE TABLE RResearcher
(
  ResearcherID NUMERIC(5) NOT NULL,
  RName VARCHAR(15) NOT NULL,
  REmail VARCHAR(20) NOT NULL,
  RPhone NUMERIC(10) NOT NULL,
  Department INT NOT NULL,
  ResearchField VARCHAR(20) NOT NULL,
  YearsOfExperience INT NOT NULL,
  Degree VARCHAR(15) NOT NULL,
  NumArticales INT NOT NULL,
  PRIMARY KEY (ResearcherID)
);

CREATE TABLE Study
(
  StudyID NUMERIC(5) NOT NULL,
  SDescription VARCHAR(500) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  Title VARCHAR(500) NOT NULL,
  publication VARCHAR(100) NOT NULL,
  Cnclousions VARCHAR(799) NOT NULL,
  PRIMARY KEY (StudyID)
);

CREATE TABLE Sample
(
  SampleID INT NOT NULL,
  SampleType VARCHAR(10) NOT NULL,
  RequierdQu VARCHAR(50) NOT NULL,
  PRIMARY KEY (SampleID)
);

CREATE TABLE Participant
(
  ParticipantID NUMERIC(5) NOT NULL,
  PName VARCHAR(15) NOT NULL,
  PAge NUMERIC(3) NOT NULL,
  Gender VARCHAR(9) NOT NULL,
  Address VARCHAR(15) NOT NULL,
  PEmail VARCHAR(20) NOT NULL,
  SampleID INT NOT NULL,
  PRIMARY KEY (ParticipantID),
  FOREIGN KEY (SampleID) REFERENCES Sample(SampleID)
);

CREATE TABLE Reports
(
  ReportID NUMERIC(5) NOT NULL,
  ReportName VARCHAR(15) NOT NULL,
  RDescription VARCHAR(500) NOT NULL,
  CreationDate DATE NOT NULL,
  Recommendations VARCHAR(500) NOT NULL,
  IssuesChallenges VARCHAR(500) NOT NULL,
  StudyID NUMERIC(5) NOT NULL,
  ResearcherID NUMERIC(5) NOT NULL,
  PRIMARY KEY (ReportID),
  FOREIGN KEY (StudyID) REFERENCES Study(StudyID),
  FOREIGN KEY (ResearcherID) REFERENCES Researcher(ResearcherID)
);

CREATE TABLE BloodDonation
(
  BloodDonationID NUMERIC(5) NOT NULL,
  BloodQuantity NUMERIC(50) NOT NULL,
  BloodType VARCHAR(3) NOT NULL,
  ParticipantID NUMERIC(5) NOT NULL,
  PRIMARY KEY (BloodDonationID),
  FOREIGN KEY (ParticipantID) REFERENCES Participant(ParticipantID)
);

CREATE TABLE conducts
(
  ResearcherID NUMERIC(5) NOT NULL,
  StudyID NUMERIC(5) NOT NULL,
  PRIMARY KEY (ResearcherID, StudyID),
  FOREIGN KEY (ResearcherID) REFERENCES Researcher(ResearcherID),
  FOREIGN KEY (StudyID) REFERENCES Study(StudyID)
);

CREATE TABLE containing
(
  StudyID NUMERIC(5) NOT NULL,
  SampleID INT NOT NULL,
  PRIMARY KEY (StudyID, SampleID),
  FOREIGN KEY (StudyID) REFERENCES Study(StudyID),
  FOREIGN KEY (SampleID) REFERENCES Sample(SampleID)
);
