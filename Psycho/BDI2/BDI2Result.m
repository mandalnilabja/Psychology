clc
clear
%%
T=readtable("BDI2.csv");
%%
string_table=T{:,6:26};
[n,~]=size(string_table);
data=zeros(size(string_table));

j=1; %Sadness
    for i=1:n
        if string_table(i,j)== "I do not feel sad"
        data(i,j)=0;
        elseif string_table(i,j)=="I feel sad much of the time"
        data(i,j)=1;
        elseif string_table(i,j)=="I am sad all the time"
        data(i,j)=2;
        %elseif string_table(i,j)=="I am so sad or unhappy that I can't stand it"
        else data(i,j)=3;
        end
    end
    x1_score=data(:,j);  
j=2; %Pessimism
    for i=1:n
        if string_table(i,j)== "I am not discouraged about my future"
        data(i,j)=0;
        elseif string_table(i,j)=="I feel more discouraged about my future than I used to be"
        data(i,j)=1;
        elseif string_table(i,j)=="I do not expect things to work out for me"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel my future is hopeless and will only get worse"
        else data(i,j)=3;
        end
    end
    x2_score=data(:,j);
j=3; %Past Failure 
    for i=1:n
        if string_table(i,j)== "I do not feel like a failure"
        data(i,j)=0;
        elseif string_table(i,j)=="I have failed more than I should have"
        data(i,j)=1;
        elseif string_table(i,j)=="As I look back, I see a lot of failures"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel I am a total failure as a person"
        else data(i,j)=3;
        end
    end
    x3_score=data(:,j);
j=4; %Loss of Pleasure
    for i=1:n
        if string_table(i,j)== "I get as much pleasure as I ever did from the things I enjoy"
        data(i,j)=0;
        elseif string_table(i,j)=="I don't enjoy things as much as I used to"
        data(i,j)=1;
        elseif string_table(i,j)=="I get very little pleasure from the things I used to enjoy"
        data(i,j)=2;
        %elseif string_table(i,j)=="I can't get any pleasure from the things I used to enjoy"
        else data(i,j)=3;
        end
    end
    x4_score=data(:,j);
j=5; %Guilty Feelings 
    for i=1:n
        if string_table(i,j)== "I don't feel particularly guilty"
        data(i,j)=0;
        elseif string_table(i,j)=="I feel guilty over many things I have done or should have done"
        data(i,j)=1;
        elseif string_table(i,j)=="I feel quite guilty most of the time"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel guilty all of the time"
        else data(i,j)=3;
        end
    end
    x5_score=data(:,j);
j=6; %Punishment Feelings
    for i=1:n
        if string_table(i,j)== "I don't feel I am being punished"
        data(i,j)=0;
        elseif string_table(i,j)=="I feel I may be punished"
        data(i,j)=1;
        elseif string_table(i,j)=="I expect to be punished"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel I am being punished"
        else data(i,j)=3;
        end
    end
    x6_score=data(:,j);
j=7; %Self-Dislike
    for i=1:n
        if string_table(i,j)== "I feel the same about myself as ever"
        data(i,j)=0;
        elseif string_table(i,j)=="I have lost confidence in myself"
        data(i,j)=1;
        elseif string_table(i,j)=="I am disappointed in myself"
        data(i,j)=2;
        %elseif string_table(i,j)=="I dislike myself"
        else data(i,j)=3;
        end
    end
    x7_score=data(:,j);
j=8; %Self-Criticalness
    for i=1:n
        if string_table(i,j)== "I don't criticize or blame myself more than usual"
        data(i,j)=0;
        elseif string_table(i,j)=="I am more critical of myself than I used to be"
        data(i,j)=1;
        elseif string_table(i,j)=="I criticize myself for all of my faults"
        data(i,j)=2;
        %elseif string_table(i,j)=="I blame myself for everything bad that happens"
        else data(i,j)=3;
        end
    end
    x8_score=data(:,j);
j=9; %Suicidal Thoughts or Wishes
    for i=1:n
        if string_table(i,j)== "I don't have any thoughts of killing myself"
        data(i,j)=0;
        elseif string_table(i,j)=="I have thoughts of killing myself, but i would not carry them out"
        data(i,j)=1;
        elseif string_table(i,j)=="I would like to kill myself"
        data(i,j)=2;
        %elseif string_table(i,j)=="I would kill myself if i had the chance"
        else data(i,j)=3;
        end
    end
    x9_score=data(:,j);
j=10; %Crying
    for i=1:n
        if string_table(i,j)== "I don't cry anymore than I used to"
        data(i,j)=0;
        elseif string_table(i,j)=="I cry more than I used to"
        data(i,j)=1;
        elseif string_table(i,j)=="I cry over every little thing"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel like crying, but can't"
        else data(i,j)=3;
        end
    end
    x10_score=data(:,j);
j=11; %Agitation
    for i=1:n
        if string_table(i,j)== "I am no more restless or wound up than usual"
        data(i,j)=0;
        elseif string_table(i,j)=="I feel more restless or wound up than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I am so restless or agitated, it's hard to stay still"
        data(i,j)=2;
        %elseif string_table(i,j)=="I am so restless or stated that I have to keep moving or doing something"
        else data(i,j)=3;
        end
    end
    x11_score=data(:,j);
j=12; %Loss of Interest 
    for i=1:n
        if string_table(i,j)== "I have not lost interest in other people or activities"
        data(i,j)=0;
        elseif string_table(i,j)=="I am less interested in other people or things than before"
        data(i,j)=1;
        elseif string_table(i,j)=="I have lost most of my interest in other people or things"
        data(i,j)=2;
        %elseif string_table(i,j)=="It's hard to get interested in anything"
        else data(i,j)=3;
        end
    end
    x12_score=data(:,j);
j=13; %Indecisiveness
    for i=1:n
        if string_table(i,j)== "I make decisions about as well as ever"
        data(i,j)=0;
        elseif string_table(i,j)=="I find it more difficult to make decisions than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I have much greater difficulty in making decisions than I used to"
        data(i,j)=2;
        %elseif string_table(i,j)=="I Have trouble making any decisions"
        else data(i,j)=3;
        end
    end
    x13_score=data(:,j);
j=14; %Worthiness
    for i=1:n
        if string_table(i,j)== "I do not feel i'm worthless"
        data(i,j)=0;
        elseif string_table(i,j)=="I don't consider myself as worthwhile and useful as I used to"
        data(i,j)=1;
        elseif string_table(i,j)=="I feel more worthless as compared to others"
        data(i,j)=2;
        %elseif string_table(i,j)=="I feel utterly worthless"
        else data(i,j)=3;
        end
    end
    x14_score=data(:,j);
j=15; %Loss of Energy 
    for i=1:n
        if string_table(i,j)== "I have as much energy as ever"
        data(i,j)=0;
        elseif string_table(i,j)=="I have less energy than I used to have"
        data(i,j)=1;
        elseif string_table(i,j)=="I don't have enough energy to do very much"
        data(i,j)=2;
        %elseif string_table(i,j)=="I don't have enough energy to do anything"
        else data(i,j)=3;
        end
    end
    x15_score=data(:,j);
j=16; %Changes in Sleeping Pattern 
    for i=1:n
        if string_table(i,j)== "I have not experienced any change in my sleeping pattern"
        data(i,j)=0;
        elseif string_table(i,j)=="I sleep somewhat more than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I sleep somewhat less than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I sleep a lot more than usual"
        data(i,j)=2;
        elseif string_table(i,j)=="I sleep a lot less than usual"
        data(i,j)=2;
        %elseif string_table(i,j)=="I sleep most of the day"  
        %elseif string_table(i,j)=="I wake up 1-2 hours early and can't get back to sleep"
        else data(i,j)=3;
        end
    end
    x16_score=data(:,j);
j=17; %Irritability 
    for i=1:n
        if string_table(i,j)== "I am no more irritable than usual"
        data(i,j)=0;
        elseif string_table(i,j)=="l am more irritable than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I am much more irritable than usual"
        data(i,j)=2;
        %elseif string_table(i,j)=="I am irritable all the time"
        else data(i,j)=3;
        end
    end
    x17_score=data(:,j);
j=18; %Changes in Appetite
    for i=1:n
        if string_table(i,j)== "I have not experienced any change in my appetite"
        data(i,j)=0;
        elseif string_table(i,j)=="My appetite is somewhat less than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="My appetite is somewhat greater than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="My appetite is much less than before"
        data(i,j)=2;
        elseif string_table(i,j)=="My appetite is much greater than usual"
        data(i,j)=2;
        %elseif string_table(i,j)=="I have no appetite at all"  
        %elseif string_table(i,j)=="I crave food all the time"
        else data(i,j)=3;
        end
    end
    x18_score=data(:,j);
j=19; %Concentration Difficulty
    for i=1:n
        if string_table(i,j)== "I can concentrate as well as ever"
        data(i,j)=0;
        elseif string_table(i,j)=="I can't concentrate as well as usual"
        data(i,j)=1;
        elseif string_table(i,j)=="It's hard to keep my mind on anything for very long"
        data(i,j)=2;
        %elseif string_table(i,j)=="I find I can't concentrate on anything"
        else data(i,j)=3;
        end
    end
    x19_score=data(:,j);
j=20; %Tiredness or Fatigue
    for i=1:n
        if string_table(i,j)== "I am no more tired or fatigued than usual"
        data(i,j)=0;
        elseif string_table(i,j)=="I get more tired or fatigued more easily than usual"
        data(i,j)=1;
        elseif string_table(i,j)=="I am too tired or fatigued to do a lot of the things I used to do"
        data(i,j)=2;
        %elseif string_table(i,j)=="I am too tired or fatigued to do most of the things I used to do"
        else data(i,j)=3;
        end
    end
    x20_score=data(:,j);
j=21; %Loss of Interest in Sex
    for i=1:n
        if string_table(i,j)== "I have not noticed any recent change in my interest in sex"
        data(i,j)=0;
        elseif string_table(i,j)=="I am less interested in sex than I used to be"
        data(i,j)=1;
        elseif string_table(i,j)=="I am much less interested in sex now"
        data(i,j)=2;
        %elseif string_table(i,j)=="I have lost interest in sex completely"
        else data(i,j)=3;
        end
    end
    x21_score=data(:,j);
%%

T=addvars(T,x1_score,'After',"x1_Sadness"); 
T=addvars(T,x2_score,'After',"x2_Pessimism");    
T=addvars(T,x3_score,'After',"x3_PastFailure");
T=addvars(T,x4_score,'After',"x4_LossOfPleasure");
T=addvars(T,x5_score,'After',"x5_GuiltyFeelings");
T=addvars(T,x6_score,'After',"x6_PunishmentFeelings");
T=addvars(T,x7_score,'After',"x7_Self_Dislike");
T=addvars(T,x8_score,'After',"x8_Self_Criticalness");
T=addvars(T,x9_score,'After',"x9_SuicidalThoughtsOrWishes");
T=addvars(T,x10_score,'After',"x10_Crying");
T=addvars(T,x11_score,'After',"x11_Agitation");
T=addvars(T,x12_score,'After',"x12_LossOfInterest");
T=addvars(T,x13_score,'After',"x13_Indecisiveness");
T=addvars(T,x14_score,'After',"x14_Worthiness");
T=addvars(T,x15_score,'After',"x15_LossOfEnergy");
T=addvars(T,x16_score,'After',"x16_ChangesInSleepingPattern");
T=addvars(T,x17_score,'After',"x17_Irritability");
T=addvars(T,x18_score,'After',"x18_ChangesInAppetite");
T=addvars(T,x19_score,'After',"x19_ConcentrationDifficulty");
T=addvars(T,x20_score,'After',"x20_TirednessOrFatigue");
T=addvars(T,x21_score,'After',"x21_LossOfInterestInSex");

%%
Total_score=sum(data,2);
T=addvars(T,Total_score,'Before',"x1_Sadness");
%%

Level_of_Depression=strings(n,1);
Classification=strings(n,1);
for k=1:n
    if  Total_score(k)<11
        Level_of_Depression(k)="Normal ups and downs";
        Classification(k)="Low";
    elseif Total_score(k)>=11 && Total_score(k)<17
        Level_of_Depression(k)="Mild mood disturbance";
        Classification(k)="Low";
    elseif Total_score(k)>=17 && Total_score(k)<21
        Level_of_Depression(k)="Borederline Clinical Depression";
        Classification(k)="Moderate";
    elseif Total_score(k)>=21 && Total_score(k)<31
        Level_of_Depression(k)="Moderate depression";
        Classification(k)="Moderate";
    elseif Total_score(k)>=31 && Total_score(k)<41
        Level_of_Depression(k)="Severe depression";
        Classification(k)="Significant";
    else Level_of_Depression(k)="Extreme depression";
         Classification(k)="Significant";
    end
end
T=addvars(T,Level_of_Depression,'Before',"Total_score");
T=addvars(T,Classification,'Before',"Level_of_Depression");

%%
T