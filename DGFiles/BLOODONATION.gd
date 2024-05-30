
[General]
Version=1

[Preferences]
Username=
Password=2828
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=AVISHACO
Name=BLOODDONATION
Count=400

[Record]
Name=BLOODDONATIONID
Type=NUMBER
Size=5
Data=Sequence(1)
Master=

[Record]
Name=BLOODQUANTITY
Type=NUMBER
Size=25
Data=Random(20,598)
Master=

[Record]
Name=BLOODTYPE
Type=VARCHAR2
Size=3
Data=List('A+', 'B+','O',)
Master=

[Record]
Name=PARTICIPANTID
Type=NUMBER
Size=5
Data=List(select PARTICIPANTID from PARTICIPANT)
Master=

