
[General]
Version=1

[Preferences]
Username=
Password=2399
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=AVISHACO
Name=CONDUCTS
Count=10..20

[Record]
Name=RESEARCHERID
Type=NUMBER
Size=5
Data=List(select RESEARCHERID from RRESEARCHER)
Master=

[Record]
Name=STUDYID
Type=NUMBER
Size=5
Data=List(select STUDYID from STUDY)
Master=

