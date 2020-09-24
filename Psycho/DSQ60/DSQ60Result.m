clc
clear
%%
T=readtable ('DSQ60Responses.csv');
%%
altruism=zeros(size(T,1),1);
altruism=(T.x1_IGetSatisfactionFromHelpingOthersAndIfThisWereTakenAwayFromM+T.x40_HelpingOthersMakesMeFeelGood)/2;
T=addvars(T,altruism,'After',64);

passive_aggressive=zeros(size(T,1),1);
passive_aggressive=(T.x2_PeopleOftenCallMeASulker+T.x37_IfMyBossBuggedMe_IMightMakeAMistakeInMyWorkOrWorkMoreSlowly)/2;
T=addvars(T,passive_aggressive,'After',65);

supression=zeros(size(T,1),1);
supression=(T.x3_I_mAbleToKeepAProblemOutOfMyMindUntilIHaveTimeToDealWithIt+T.x41_ICanKeepTheLidOnMyFeelingsIfLettingThemOutWouldInterfereWit)/2;
T=addvars(T,supression,'After',66);

sublimation=zeros(size(T,1),1);
sublimation=(T.x4_IWorkOutMyAnxietyThroughDoingSomethingConstructiveAndCreativ+T.x57_WhenIFeelDepressedOrAnxious_ILikeToEngageInSomeCreativeOrPh)/2;
T=addvars(T,sublimation,'After',67);

Splitting_other=zeros(size(T,1),1);
Splitting_other=(T.x5_IOftenChangeMyOpinionAboutPeople_AtOneTimeIThinkHighlyOfThem+T.x36_AsFarAsI_mConcerned_PeopleAreEitherGoodOrBad/2);
T=addvars(T,Splitting_other,'After',68);

Rationalization=zeros(size(T,1),1);
Rationalization=(T.x6_IAmAbleToFindGoodReasonsForEverythingIDo+T.x26_ThereAreAlwaysGoodReasonsWhenThingsDon_tWorkOutForMe)/2;
T=addvars(T,Rationalization,'After',69);

Humor=zeros(size(T,1),1);
Humor=(T.x7_I_mAbleToLaughAtMyselfPrettyEasily+T.x42_I_mUsuallyAbleToSeeTheFunnySideOfAnOtherwisePainfulPredicam)/2;
T=addvars(T,Humor,'After',70);


Projection=zeros(size(T,1),1);
Projection=(T.x8_PeopleTendToMistreatMe+T.x46_PeopleTendToBeDishonestWithMe)/2;
T=addvars(T,Projection,'After',71);


Reaction_formation=zeros(size(T,1),1);
Reaction_formation=(T.x9_IfSomeoneMuggedMeAndStoleMyMoney_I_dRatherHe_dBeHelpedThanPu+T.x43_OftenFindMyselfBeingVeryNiceToPeopleWhoByAllRightsIShouldBe)/2;
T=addvars(T,Reaction_formation,'After',72);



Self_observation=zeros(size(T,1),1);
Self_observation=(T.x10_IFIHaveAConflictWithSomeone_ITryToThinkOfWhatMightHaveBeenM+T.x45_WhenSomethingIDoDoesn_tTurnOutWell_ITryToFindOutWhatIMayHav)/2;
T=addvars(T,Self_observation,'After',73);



Denial=zeros(size(T,1),1);
Denial=(T.x11_PeopleSayITendToIgnoreUnpleasantFactsAsIfTheyDidn_tExist+T.x28_WhenPeopleGetAngryWithMe_ITendToThinkTheyAreExaggerating)/2;
T=addvars(T,Denial,'After',74);


Devaluation_of_other=zeros(size(T,1),1);
Devaluation_of_other=(T.x12_IOftenFeelSuperiorToPeopleI_mWith+T.x17_IPrideMyselfOnMyAbilityToCutPeopleDownToSize)/2;
T=addvars(T,Devaluation_of_other,'After',75);


Projective_identification=zeros(size(T,1),1);
Projective_identification=(T.x13_SomeoneIsRobbingMeEmotionallyOfAllI_veGot+T.x20_WhenDealingWithPeopleTheyOftenEndUpFeelingWhatIFeel_)/2;
T=addvars(T,Projective_identification,'After',76);


Dissociation=zeros(size(T,1),1);
Dissociation=(T.x14_WhenThere_sRealDanger_It_sAsIfI_mNotThereAndIFeelNoFear+T.x23_WhenI_mInDifficultiesIOftenFeelUnreal)/2;
T=addvars(T,Dissociation,'After',77);

Self_assertion=zeros(size(T,1),1);
Self_assertion=(T.x15_IfI_mTreatedUnfairly_IStandUpForMyRights+T.x50_IfSomeoneIsAnnoyingMe_ThenITellThemWithoutHurtingTheirFeeli)/2;
T=addvars(T,Self_assertion,'After',78);


Omnipotence=zeros(size(T,1),1);
Omnipotence=(T.x16_IManageDangerAsIfIWereSuperman+T.x24_I_veGotSpecialTalentsThatAllowMeToGoThroughLifeWithNoProble)/2;
T=addvars(T,Omnipotence,'After',79);


Acting_out=zeros(size(T,1),1); 
Acting_out=(T.x18_IOftenActImpulsivelyWhenSomethingIsBotheringMe+T.x31_IGetOpenlyAggressiveWhenIFeelHurt)/2;
T=addvars(T,Acting_out,'After',80);


Devaluation_Self=zeros(size(T,1),1);
Devaluation_Self=(T.x19_ActuallyI_mPrettyWorthless_+T.x35_I_mActuallyWorseThanPeopleThinkIAm)/2;
T=addvars(T,Devaluation_Self,'After',81);


Fantasy=zeros(size(T,1),1);
Fantasy=(T.x21_IGetMoreSatisfactionFromMyFantasiesThanFromMyRealLife+T.x27_IWorkMoreThingsOutInMyDaydreamsThanInMyRealLife)/2;
T=addvars(T,Fantasy,'After',82);



Withdrawal=zeros(size(T,1),1);
Withdrawal=(T.x22_IWithdrawWhenI_mAngry+T.x33_IWithdrawWhenI_mSad)/2;
T=addvars(T,Withdrawal,'After',83);


Intellectualization=zeros(size(T,1),1);
Intellectualization=(T.x25_IPreferToTalkAboutAbstractThingsRatherThanAboutMyFeelings+T.x55_InsteadOfSayingExactlyWhatIFeel_IExplainMyThoughtsExtensive)/2;
T=addvars(T,Intellectualization,'After',84);

Splitting_Self=zeros(size(T,1),1);
Splitting_Self=(T.x29_SometimesIThinkI_mAnAngelAndOtherTimesIThinkI_mADevil+T.x44_There_sNoSuchThingAs_findingALittleGoodInEveryone_IfYou_reB)/2;
T=addvars(T,Splitting_Self,'After',85);

Displacement=zeros(size(T,1),1);
Displacement=(T.x30_IfSomeoneGetsAngryAtMeILendToGetAnnoyedByThingsIUsuallyIgno+T.x60_WhenSomethingExcitingIsHappening_ITendToFussOverUnimportant)/2;
T=addvars(T,Displacement,'After',86);

Repression=zeros(size(T,1),1);
Repression=(T.x32_IHardlyRememberAnythingFromMyEarlySchoolYears+T.x39_IfI_veExperiencedSomethingUnpleasantThenTheNextDayI_veSomet)/2;
T=addvars(T,Repression,'After',87);

Idealization=zeros(size(T,1),1);
Idealization=(T.x34_IAlwaysFeelThatSomeoneIKnowIsLikeAGuardianAngel+T.x38_ThereIsSomeoneIKnowWhoCanDoAnythingAndWhoIsAbsolutelyFairAn)/2;
T=addvars(T,Idealization,'After',88);


Isolation=zeros(size(T,1),1);
Isolation=(T.x51_I_mOftenToldThatIDon_tShowMyFeelings+T.x56_OftenIFindThatIDon_tFeelAnythingWhenTheSituationWouldSeemTo)/2;
T=addvars(T,Isolation,'After',89);

Help_rejecting_complaning=zeros(size(T,1),1);
Help_rejecting_complaning=(T.x48_DoctorsNeverReallyUnderstandWhatIsWrongWithMe+T.x54_NoMatterHowMuchIComplain_INeverGetASatisfactoryResponse)/2;
T=addvars(T,Help_rejecting_complaning,'After',90);

Undoing=zeros(size(T,1),1);
Undoing=(T.x49_AfterIFightForMyRights_ITendToApologizeForMyAssertiveness+T.x59_IfIHaveAnAggressiveThoughts_IFeelTheNeedToDoSomethingToComp)/2;
T=addvars(T,Undoing,'After',91);

Anticipation=zeros(size(T,1),1);
Anticipation=(T.x47_WhenIHaveToFaceADifficultSituationITryToImagineWhatItWillBe+T.x53_IfICanPredictThatI_mGoingToBeSadAheadOfTime_ICanCopeBetter)/2;
T=addvars(T,Anticipation,'After',92);

Affiliation=zeros(size(T,1),1);
Affiliation=(T.x47_WhenIHaveToFaceADifficultSituationITryToImagineWhatItWillBe+T.x58_IfIGotIntoACrisis_IWouldSeekOutSomeoneToShareMyWorriesWith)/2;
T=addvars(T,Affiliation,'After',93);
%%
Mec=T{:,65:94};
Max_score= max(Mec,[],2);
T=addvars(T,Max_score,'After',"SexThatYouIdentifyYourselfMostWith");
%%
Defname=["altruism" "passive - aggressive" "supression" "sublimation" "Splitting / other" "Rationalization" "Humor" "Projection" "Reaction formation" "Self - observation" "Denial" "Devaluation of other" "Projective identification" "Dissociation" "Self - assertion" "Omnipotence" "Acting - out" "Devaluation / Self" "Fantasy" "Withdrawal" "Intellectualization" "Splitting / Self" "Displacement" "Repression" "Idealization" "Isolation" "Help - rejecting complaning" "Undoing" "Anticipation" "Affiliation"];
%%
Defense_Mechanism_max=strings(size(T,1),1);
Defense_Mechanism=strings(size(T,1),1);
for i=1:size(T,1)
    for j=1:30
        if Mec(i,j)==Max_score(i)
        Defense_Mechanism_max(i)=Defname(j)+";"+Defense_Mechanism_max(i);
        end
        if Mec(i,j)>=5
        Defense_Mechanism(i)=Defname(j)+";"+Defense_Mechanism_max(i);
        end
    end
end
T=addvars(T,Defense_Mechanism_max,'Before',"Max_score");
T=addvars(T,Defense_Mechanism,'After',"SexThatYouIdentifyYourselfMostWith");
%%
T