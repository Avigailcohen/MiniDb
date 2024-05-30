- Insert data into Researcher
INSERT INTO Researcher (ResearcherID, Name, Email, Phone, Department, ResearchField, YearsOfExperience, Degree, NumArticales) VALUES
(1, 'John Doe', 'john.doe@example.com', 1234567890, 1, 'Biology', 10, 'PhD', 20),
(2, 'Jane Smith', 'jane.smith@example.com', 1234567891, 2, 'Chemistry', 8, 'PhD', 15),
(3, 'Alice Johnson', 'alice.j@example.com', 1234567892, 3, 'Physics', 5, 'MSc', 10),
(4, 'Bob Brown', 'bob.b@example.com', 1234567893, 4, 'Mathematics', 12, 'PhD', 25),
(5, 'Charlie Green', 'charlie.g@example.com', 1234567894, 1, 'Biology', 7, 'PhD', 18),
(6, 'Diana White', 'diana.w@example.com', 1234567895, 2, 'Chemistry', 6, 'MSc', 12),
(7, 'Edward Black', 'edward.b@example.com', 1234567896, 3, 'Physics', 4, 'PhD', 9),
(8, 'Fiona Blue', 'fiona.b@example.com', 1234567897, 4, 'Mathematics', 9, 'MSc', 17),
(9, 'George Red', 'george.r@example.com', 1234567898, 1, 'Biology', 11, 'PhD', 22),
(10, 'Hannah Yellow', 'hannah.y@example.com', 1234567899, 2, 'Chemistry', 5, 'PhD', 14);


INSERT INTO Study (StudyID, Description, StartDate, EndDate, Title, Publication, Cnclousions) VALUES
(1, 'Study on gene expression in plants', to_date('01-01-2023', 'DD-MM-YYYY'), to_date('31-12-2023', 'DD-MM-YYYY'), 'Gene Expression in Plants', 'Journal of Botany', 'Significant findings in gene expression'),
(2, 'Analysis of chemical reactions', to_date('01-06-2022', 'DD-MM-YYYY'), to_date('31-05-2023', 'DD-MM-YYYY'), 'Chemical Reactions Analysis', 'Chemical Journal', 'New insights into reaction mechanisms'),
(3, 'Study on black holes', to_date('01-03-2023', 'DD-MM-YYYY'), to_date('29-02-2024', 'DD-MM-YYYY'), 'Black Hole Phenomena', 'Astrophysics Today', 'Observed new black hole properties'),
(4, 'Mathematical models in economics', to_date('01-09-2021', 'DD-MM-YYYY'), to_date('31-08-2022', 'DD-MM-YYYY'), 'Economic Models', 'Economics Review', 'Improved accuracy in economic predictions'),
(5, 'Research on plant growth', to_date('01-04-2022', 'DD-MM-YYYY'), to_date('31-03-2023', 'DD-MM-YYYY'), 'Plant Growth Study', 'Agriculture Journal', 'Identified key growth factors'),
(6, 'Chemical compounds synthesis', to_date('01-02-2023', 'DD-MM-YYYY'), to_date('31-01-2024', 'DD-MM-YYYY'), 'Synthesis of Compounds', 'Chemistry World', 'Developed new synthesis methods'),
(7, 'Quantum mechanics principles', to_date('01-11-2021', 'DD-MM-YYYY'), to_date('31-10-2022', 'DD-MM-YYYY'), 'Quantum Mechanics Study', 'Physics Reports', 'Confirmed several quantum theories'),
(8, 'Advanced calculus applications', to_date('01-07-2023', 'DD-MM-YYYY'), to_date('30-06-2024', 'DD-MM-YYYY'), 'Calculus in Engineering', 'Math Journal', 'Enhanced calculus methods for engineering'),
(9, 'Genetic modification in crops', to_date('01-01-2022', 'DD-MM-YYYY'), to_date('31-12-2022', 'DD-MM-YYYY'), 'Crops Genetic Modification', 'Genetics Today', 'Improved crop resistance'),
(10, 'Study on nanoparticles', to_date('01-05-2023', 'DD-MM-YYYY'), to_date('30-04-2024', 'DD-MM-YYYY'), 'Nanoparticles Research', 'NanoTech Journal', 'Discovered new nanoparticle properties');


INSERT INTO Sample (SampleID, SampleType, RequierdQu) VALUES
(1, 'Blood', '10ml per participant'),
(2, 'Tissue', '5g per participant'),
(3, 'Saliva', '5ml per participant'),
(4, 'Urine', '50ml per participant'),
(5, 'Hair', '10 strands per participant'),
(6, 'Soil', '100g per location'),
(7, 'Water', '1L per location'),
(8, 'Air', '10L per sample'),
(9, 'Bacteria', '10 colonies per sample'),
(10, 'DNA', '50ng per participant');


INSERT INTO Participant (ParticipantID, Name, Age, Gender, Address, Email, SampleID) VALUES
(1, 'Alice Blue', 25, 'Female', '123 Main St', 'alice.blue@example.com', 1),
(2, 'Bob Green', 30, 'Male', '456 Oak St', 'bob.green@example.com', 2),
(3, 'Charlie Black', 35, 'Male', '789 Pine St', 'charlie.black@example.com', 3),
(4, 'Diana White', 28, 'Female', '101 Maple St', 'diana.white@example.com', 4),
(5, 'Edward Yellow', 22, 'Male', '202 Birch St', 'edward.yellow@example.com', 5),
(6, 'Fiona Red', 27, 'Female', '303 Cedar St', 'fiona.red@example.com', 6),
(7, 'George Blue', 32, 'Male', '404 Spruce St', 'george.blue@example.com', 7),
(8, 'Hannah Green', 26, 'Female', '505 Elm St', 'hannah.green@example.com', 8),
(9, 'Ian Black', 29, 'Male', '606 Walnut St', 'ian.black@example.com', 9),
(10, 'Jenna White', 31, 'Female', '707 Chestnut St', 'jenna.white@example.com', 10);


INSERT INTO Reports (ReportID, ReportName, Description, CreationDate, Recommendations, IssuesChallenges, StudyID, ResearcherID) VALUES
(1, 'Plant Genes', 'Detailed report on plant gene expression', to_date('01-12-2023', 'DD-MM-YYYY'), 'Further research on specific genes', 'Limited sample size', 1, 1),
(2, 'Chemical Reactions', 'Analysis of chemical reaction mechanisms', to_date('15-06-2023', 'DD-MM-YYYY'), 'Investigate different compounds', 'Complex reaction pathways', 2, 2),
(3, 'Black Holes', 'Report on black hole observations', to_date('10-03-2024', 'DD-MM-YYYY'), 'Enhance observation techniques', 'Data collection limitations', 3, 3),
(4, 'Economic Models', 'Evaluation of mathematical models in economics', to_date('05-09-2022', 'DD-MM-YYYY'), 'Apply models in real-world scenarios', 'Model accuracy', 4, 4),
(5, 'Plant Growth', 'Study on factors affecting plant growth', to_date('12-04-2023', 'DD-MM-YYYY'), 'Research on soil nutrients', 'Variable growth conditions', 5, 5),
(6, 'Compound Synthesis', 'Methods for synthesizing chemical compounds', to_date('20-02-2024', 'DD-MM-YYYY'), 'Test alternative methods', 'Synthesis efficiency', 6, 6),
(7, 'Quantum Mechanics', 'Principles of quantum mechanics', to_date('01-11-2022', 'DD-MM-YYYY'), 'Explore additional principles', 'Experimental verification', 7, 7),
(8, 'Calculus Applications', 'Advanced calculus applications in engineering', to_date('14-07-2024', 'DD-MM-YYYY'), 'Develop new applications', 'Complex calculations', 8, 8),
(9, 'Crop Genetics', 'Genetic modification in crops', to_date('20-01-2022', 'DD-MM-YYYY'), 'Test in different environments', 'Regulatory challenges', 9, 9),
(10, 'Nanoparticles', 'Research on properties of nanoparticles', to_date('18-05-2024', 'DD-MM-YYYY'), 'Investigate different materials', 'Measurement accuracy', 10, 10);


INSERT INTO BloodDonation (BloodDonationID, BloodQuantity, BloodType, ParticipantID) VALUES
(1, 10, 'A+', 1),
(2, 12, 'B-', 2),
(3, 8, 'O+', 3),
(4, 15, 'AB+', 4),
(5, 9, 'A-', 5),
(6, 11, 'B+', 6),
(7, 10, 'O-', 7),
(8, 14, 'AB-', 8),
(9, 13, 'A+', 9),
(10, 10, 'B-', 10);


INSERT INTO conducts (ResearcherID, StudyID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO containing (StudyID, SampleID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
