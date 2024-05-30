
[General]
Version=1

[Preferences]
Username=
Password=2788
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=AVISHACO
Name=CCONTAINING
Count=10

[Record]
Name=STUDYID
Type=NUMBER
Size=5
Data=List(select STUDYID from STUDY)
Master=

[Record]
Name=SAMPLEID
Type=NUMBER
Size=
Data=List(select SAMPLEID from SAMPLE)
Master=

