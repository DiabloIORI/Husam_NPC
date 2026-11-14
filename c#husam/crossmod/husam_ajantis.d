/* If they met before (BG1 / SoD) */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
	Global("HusamMove","GLOBAL",7)
	GlobalGT("C#HusamAjantisSoD","GLOBAL",0)
Global("C#HusamAjantisExtra","GLOBAL",0)~ THEN ~C#HusamB~ HusamAjantis0
@0
DO ~SetGlobal("C#HusamAjantisExtra","GLOBAL",1)~
== C#AjanB @1
== C#HusamB IF ~GlobalGT("WorkingForAran","GLOBAL",0)~ THEN @2
== C#HusamB IF ~Global("WorkingForAran","GLOBAL",0)~ THEN @3
== C#AjanB @4
== C#HusamB @5
== C#AjanB @6
== C#HusamB @7
EXIT


CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
	Global("C#HusamAjantisExtra","GLOBAL",1)
	!Global("HusamMove","GLOBAL",7)
OR(2)
	Global("C#HusamAjantisExtra","GLOBAL",1)
	!GlobalGT("C#HusamAjantisSoD","GLOBAL",0)
Global("C#HusamAjantis","GLOBAL",0)~ THEN ~C#HusamB~ HusamAjantis0
@8
DO ~SetGlobal("C#HusamAjantis","GLOBAL",1)~
== C#AjanB @9
== C#HusamB @10
EXIT

//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#HusamAjantis","GLOBAL",1)~ THEN ~C#HusamB~ HusamAjantis1
@11
DO ~SetGlobal("C#HusamAjantis","GLOBAL",2)~
== C#AjanB @12
== C#HusamB @13
== C#AjanB @14
= @15
== C#HusamB @16
== C#AjanB @17
== C#HusamB @18
== C#AjanB @19
EXIT

//#3 
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("aerie")
!Dead("aerie")
See("aerie")
!StateCheck("aerie",CD_STATE_NOTVALID)
AreaType(DUNGEON) 
Global("C#HusamAjantis","GLOBAL",2)~ THEN ~C#AjanB~ HusamAjantis2
@20
DO ~SetGlobal("C#HusamAjantis","GLOBAL",3)~
== C#HusamJ @21
== C#AjanB @22
== C#HusamJ @23
== C#AjanB @24
== C#HusamJ @25
== C#AjanB @26
EXIT


