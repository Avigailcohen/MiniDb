
[General]
Version=1

[Preferences]
Username=
Password=2644
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=AVISHACO
Name=PARTICIPANT
Count=400

[Record]
Name=PARTICIPANTID
Type=NUMBER
Size=5
Data=Sequence(1)
Master=

[Record]
Name=PNAME
Type=VARCHAR2
Size=15
Data=LastName + FirstName
Master=

[Record]
Name=AGE
Type=NUMBER
Size=3
Data= Random(13, 99)
Master=

[Record]
Name=GENDER
Type=VARCHAR2
Size=9
Data=List('MEN', 'WOMEN')
Master=

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=15
Data=Address1 + State + Country
Master=

[Record]
Name=PEMAIL
Type=VARCHAR2
Size=20
Data=Email
Master=

[Record]
Name=SAMPLEID
Type=NUMBER
Size=
Data=List(select SAMPLEID from SAMPLE)
Master=

