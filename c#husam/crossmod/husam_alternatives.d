/* Alternatives: Aster makes her offer */

I_C_T ~B!Aster~ 35 C#Husam2_B_ASTER_35
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @0
END

I_C_T ~B!Aster~ 39 C#Husam2_B_ASTER_39
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @1
END


I_C_T3 ~B!Aster~ 45 C#Husam2_B_ASTER_45
== C#HusamJ IF ~InMyArea("C#Husam1")
	InParty("C#Husam1")
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @2 DO ~SetGlobal("C#HusamJoined","GLOBAL",3) SetGlobal("C#Husam2_PCAttacksGuild","GLOBAL",1) DestroyItem("LEAT07") DestroyItem("SW1H10") GivePartyAllEquipment() SetLeavePartyDialogFile() LeaveParty() EscapeArea()~ 

== C#HusamJ IF ~InMyArea("C#Husam1")
	Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @2 DO ~SetGlobal("C#HusamJoined","GLOBAL",3) SetGlobal("C#Husam2_PCAttacksGuild","GLOBAL",1) DestroyItem("LEAT07") DestroyItem("SW1H10") GivePartyAllEquipment() SetLeavePartyDialogFile() RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~
END

/* Malficus path */


I_C_T ~B!Mal~ 4 C#Husam2_B_MAL_4
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @3
== ~B!Mal~ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @4
END

I_C_T ~B!Mal~ 5 C#Husam2_B_MAL_5
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @5
== ~B!Mal~ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @6
END

I_C_T ~B!Mal~ 6 C#Husam2_B_MAL_6
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @5
== ~B!Mal~ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @6
END

I_C_T ~B!Mal~ 22 C#Husam2_B_MAL_22
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @7
END

/* first task */
I_C_T ~B!Mal~ 36 C#Husam_CM_MAL_36
== C#HUsamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @8
== ~B!Mal~ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @9
END

/* kill Aran Linvail - warning */
I_C_T ~B!Mal~ 95 C#Husam2_CM_MAL_95
== C#HusamJ IF ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @1
END

/* kill Aran Linvail - Husam leaves */
I_C_T3 ~B!Mal~ 101 C#Husam2_CM_MAL_101
== C#HusamJ IF ~InMyArea("C#Husam1")
	InParty("C#Husam1")
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @2 DO ~SetGlobal("C#HusamJoined","GLOBAL",3) SetGlobal("C#Husam2_PCAttacksGuild","GLOBAL",1) DestroyItem("LEAT07") DestroyItem("SW1H10") GivePartyAllEquipment() SetLeavePartyDialogFile() LeaveParty() EscapeArea()~ 

== C#HusamJ IF ~InMyArea("C#Husam1")
	Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ THEN @2 DO ~SetGlobal("C#HusamJoined","GLOBAL",3) SetGlobal("C#Husam2_PCAttacksGuild","GLOBAL",1) DestroyItem("LEAT07") DestroyItem("SW1H10") GivePartyAllEquipment() SetLeavePartyDialogFile() RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~
END



APPEND C#HusamJ

/* PC paid for journey to Maztica Global("B!TouristFirstClass","GLOBAL",1) */

IF WEIGHT #-1
~Global("C#Husam2_CM_AltMal","GLOBAL",1)~ THEN malficus_path
SAY @10
++ @11 + malficus_path_02
++ @12 + malficus_path_01
END

IF ~~ THEN malficus_path_01
SAY @13
IF ~~ THEN + malficus_path_02
END

IF ~~ THEN malficus_path_02
SAY @14
IF ~~ THEN DO ~SetGlobal("C#Husam2_CM_AltMal","GLOBAL",2)~ EXIT
END



/* Husam warns about Malficus 

!Global("B!TouristFirstClass","GLOBAL",1) */

IF WEIGHT #-1
~Global("C#Husam2_CM_AltMal2","GLOBAL",2)~ THEN malficus_warn
SAY @15
++ @16 + malficus_warn_01
++ @17 + malficus_warn_02
+ ~!Global("B!TouristFirstClass","GLOBAL",1)~ + @18 + malficus_warn_02
+ ~Global("B!TouristFirstClass","GLOBAL",1)~ + @19 + malficus_warn_02
END

IF ~~ THEN malficus_warn_01
SAY @20
IF ~~ THEN + malficus_warn_02
END

IF ~~ THEN malficus_warn_02
SAY @21
++ @22 + malficus_warn_04
++ @23 + malficus_warn_03
++ @24 + malficus_warn_05
END

IF ~~ THEN malficus_warn_03
SAY @25
IF ~~ THEN + malficus_warn_06
END

IF ~~ THEN malficus_warn_04
SAY @26
IF ~~ THEN + malficus_warn_06
END

IF ~~ THEN malficus_warn_05
SAY @27
IF ~~ THEN + malficus_warn_06
END

IF ~~ THEN malficus_warn_06
SAY @28
++ @29 + malficus_warn_07
++ @30 + malficus_warn_08
++ @31 + malficus_warn_08
END

IF ~~ THEN malficus_warn_07
SAY @32
+ ~!Global("B!TouristFirstClass","GLOBAL",1)~ + @30 + malficus_warn_08
+ ~!Global("B!TouristFirstClass","GLOBAL",1)~ + @31 + malficus_warn_08
+ ~Global("B!TouristFirstClass","GLOBAL",1)~ + @30 + malficus_warn_09
+ ~Global("B!TouristFirstClass","GLOBAL",1)~ + @31 + malficus_warn_09
END

IF ~~ THEN malficus_warn_08
SAY @33
IF ~~ THEN DO ~SetGlobal("C#Husam2_CM_AltMal2","GLOBAL",3)~ EXIT
END

IF ~~ THEN malficus_warn_09
SAY @34
IF ~~ THEN DO ~SetGlobal("C#Husam2_CM_AltMal2","GLOBAL",3)~ EXIT
END



/* Malficus path, arrival at Brynnlaw because of Bodhi's betrayal */

/*
GlobalGT("AsylumPlot","GLOBAL",2) 
Global("B!Tourist","GLOBAL",10)
Dead("ppvalen")
Dead("ppparis")
Dead("ppdel")
!See("ppsaem")
*/

IF WEIGHT #-1
~Global("C#Husam2_CM_AltMal3","GLOBAL",1)~ THEN mal_betrayal
SAY @35
++ @36 + mal_betrayal_01
++ @37 + mal_betrayal_02
++ @38 + mal_betrayal_01
++ @39 + mal_betrayal_01
END 

IF ~~ THEN mal_betrayal_01
SAY @40
IF ~~ THEN + mal_betrayal_03
END

IF ~~ THEN mal_betrayal_02
SAY @41
IF ~~ THEN + mal_betrayal_01
END

IF ~~ THEN mal_betrayal_03
SAY @42
IF ~~ THEN DO ~SetGlobal("C#Husam2_CM_AltMal3","GLOBAL",2)~ EXIT
END

END //APPEND


/* STATE_WHICH_SAYS @853  = ~Something I can put my hands on. A document, a witness, something more than your word against his.~

@890  = ~Keldorn is well known to me, and his witness is irrefutable.~

@893  = ~Very well, your witness is credible and confirms your allegations, and that's enough justification to act.~

@891  = ~I'll have my men move on this at once.~

@894  = ~Do I know you? I'm sorry, <CHARNAME>, but I can't authorize the detention of a sworn civil servant on the word of someone so completely unknown to myself and the Council.~



*/

/* add Husam to Brega's dialogue - PC needs witness */

EXTEND_BOTTOM HABREGA %brega_state_853%
+ ~InMyArea("C#Husam1")
	OR(2) InParty("C#Husam1") Global("C#HusamJoined","GLOBAL",2)
	!StateCheck("C#Husam1",CD_STATE_NOTVALID)~ + @43 EXTERN C#HusamJ brega
END

APPEND C#HusamJ

IF ~~ THEN brega
SAY @44
IF ~~ THEN EXTERN HABREGA %brega_state_894%
END

END //APPEND

