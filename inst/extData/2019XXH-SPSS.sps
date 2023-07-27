* Encoding: ISO-8859-1.
*
This SPSS syntax reads ASCII format (text format) 2019 YRBS data and creates a formatted 
and labeled SPSS data file that you can analyze in SPSS;
 
*
Change the file location specifications from "c:\yrbs2019" to the location where you have 
stored the SPSS syntax and the YRBS ASCII data file before you run this syntax;
Change the location specification in three places - in the "data list" statement at the top 
of the syntax and in the "save" and "get" statements at the end of the syntax;.
DATA LIST FILE="/Users/catalinacanizares/Github/dissertationData/inst/extData/XXH2019_YRBS_Data.dat"/
Q1 17-17  
Q2 18-18  Q3 19-19  Q4 20-20  
Q5 21-28 (A) Q6 29-32  Q7 33-38  
Q8 39-39  Q9 40-40  Q10 41-41  
Q11 42-42  Q12 43-43  Q13 44-44  
Q14 45-45  Q15 46-46  Q16 47-47  
Q17 48-48  Q18 49-49  Q19 50-50  
Q20 51-51  Q21 52-52  Q22 53-53  
Q23 54-54  Q24 55-55  Q25 56-56  
Q26 57-57  Q27 58-58  Q28 59-59  
Q29 60-60  Q30 61-61  Q31 62-62  
Q32 63-63  Q33 64-64  Q34 65-65  
Q35 66-66  Q36 67-67  Q37 68-68  
Q38 69-69  Q39 70-70  Q40 71-71  
Q41 72-72  Q42 73-73  Q43 74-74  
Q44 75-75  Q45 76-76  Q46 77-77  
Q47 78-78  Q48 79-79  Q49 80-80  
Q50 81-81  Q51 82-82  Q52 83-83  
Q53 84-84  Q54 85-85  Q55 86-86  
Q56 87-87  Q57 88-88  Q58 89-89  
Q59 90-90  Q60 91-91  Q61 92-92  
Q62 93-93  Q63 94-94  Q64 95-95  
Q65 96-96  Q66 97-97  Q67 98-98  
Q68 99-99  Q69 100-100  Q70 101-101  
Q71 102-102  Q72 103-103  Q73 104-104  
Q74 105-105  Q75 106-106  Q76 107-107  
Q77 108-108  Q78 109-109  Q79 110-110  
Q80 111-111  Q81 112-112  Q82 113-113  
Q83 114-114  Q84 115-115  Q85 116-116  
Q86 117-117  Q87 118-118  Q88 119-119  
Q89 120-120  Q90 121-121  Q91 122-122  
Q92 123-123  Q93 124-124  Q94 125-125  
Q95 126-126  Q96 127-127  Q97 128-128  
Q98 129-129  Q99 130-130  QN8 185-185  
QN9 186-186  QN10 187-187  QN11 188-188  
QN12 189-189  QN13 190-190  QN14 191-191  
QN15 192-192  QN16 193-193  QN17 194-194  
QN18 195-195  QN19 196-196  QN20 197-197  
QN21 198-198  QN22 199-199  QN23 200-200  
QN24 201-201  QN25 202-202  QN26 203-203  
QN27 204-204  QN28 205-205  QN29 206-206  
QN30 207-207  QN31 208-208  QN32 209-209  
QN33 210-210  QN34 211-211  QN35 212-212  
QN36 213-213  QN37 214-214  QN38 215-215  
QN39 216-216  QN40 217-217  QN41 218-218  
QN42 219-219  QN43 220-220  QN44 221-221  
QN45 222-222  QN46 223-223  QN47 224-224  
QN48 225-225  QN49 226-226  QN50 227-227  
QN51 228-228  QN52 229-229  QN53 230-230  
QN54 231-231  QN55 232-232  QN56 233-233  
QN57 234-234  QN58 235-235  QN59 236-236  
QN60 237-237  QN61 238-238  QN62 239-239  
QN63 240-240  QN64 241-241  QN65 242-242  
QN66 243-243  QN67 244-244  QN68 245-245  
QN69 246-246  QN70 247-247  QN71 248-248  
QN72 249-249  QN73 250-250  QN74 251-251  
QN75 252-252  QN76 253-253  QN77 254-254  
QN78 255-255  QN79 256-256  QN80 257-257  
QN81 258-258  QN82 259-259  QN83 260-260  
QN84 261-261  QN85 262-262  QN86 263-263  
QN87 264-264  QN88 265-265  QN89 266-266  
QN90 267-267  QN91 268-268  QN92 269-269  
QN93 270-270  QN94 271-271  QN95 272-272  
QN96 273-273  QN97 274-274  QN98 275-275  
QN99 276-276  site 1-3 (A) 
qnfrcig 350-350  qndaycig 351-351  
qnfrevp 352-352  qndayevp 353-353  qntb2 354-354  
qntb3 355-355  qntb4 356-356  qntb5 357-357  
qniudimp 358-358  qnothhpl 359-359  qndualbc 360-360  
qnbcnone 361-361  qnfr0 362-362  qnfr1 363-363  
qnfr2 364-364  qnveg0 365-365  qnveg1 366-366  
qnveg2 367-367  qnveg3 368-368  qnsoda1 369-369  
qnsoda2 370-370  qnmilk1 371-371  qnmilk3 372-372  
qnbk7day 373-373  qnpa0day 374-374  qnpa7day 375-375  
qndlype 376-376  qnnodnt 377-377  qnspdrk1 378-378  
qnspdrk2 379-379  qnwater1 380-380  qnwater2 381-381  
qnwater3 382-382  qnillict 383-383  qnobese 384-384  
qnowt 385-385  weight 386-395  stratum 396-398  
psu 399-404  bmipct 407-411  raceeth 412-413  
q6orig 414-416  q7orig 417-419.
EXECUTE.
 
VARIABLE LABELS
Q1 "How old are you"
Q2 "What is your sex"
Q3 "In what grade are you"
Q4 "Are you Hispanic/Latino"
Q5 "What is your race"
Q6 "How tall are you"
Q7 "How much do you weigh"
Q8 "Seat belt use"
Q9 "Riding with a drinking driver"
Q10 "Drinking and driving"
Q11 "Texting and driving"
Q12 "Weapon carrying"
Q13 "Weapon carrying at school"
Q14 "Gun carrying past 12 mos"
Q15 "Safety concerns at school"
Q16 "Threatened at school"
Q17 "Physical fighting"
Q18 "Physical fighting at school"
Q19 "Ever been physically forced sexual intercourse"
Q20 "Sexual violence"
Q21 "Sexual dating violence"
Q22 "Physical dating violence"
Q23 "Bullying at school"
Q24 "Electronic bullying"
Q25 "Sad or hopeless"
Q26 "Considered suicide"
Q27 "Made a suicide plan"
Q28 "Attempted suicide"
Q29 "Injurious suicide attempt"
Q30 "Ever cigarette use"
Q31 "Initiation of cigarette smoking"
Q32 "Current cigarette use"
Q33 "Smoked >10 cigarettes"
Q34 "Electronic vapor product use"
Q35 "Current electronic vapor product use"
Q36 "EVP from store"
Q37 "Current smokeless tobacco use"
Q38 "Current cigar use"
Q39 "All tobacco product cessation"
Q40 "Initiation of alcohol use"
Q41 "Current alcohol use"
Q42 "Current binge drinking"
Q43 "Largest number of drinks"
Q44 "Source of alcohol"
Q45 "Ever marijuana use"
Q46 "Initiation of marijuana use"
Q47 "Current marijuana use"
Q48 "Ever synthetic marijuana use"
Q49 "Ever prescription pain medicine use"
Q50 "Ever cocaine use"
Q51 "Ever inhalant use"
Q52 "Ever heroin use"
Q53 "Ever methamphetamine use"
Q54 "Ever ecstasy use"
Q55 "Ever steroid use"
Q56 "Illegal injected drug use"
Q57 "Illegal drugs at school"
Q58 "Ever sexual intercourse"
Q59 "Sex before 13 years"
Q60 "Multiple sex partners"
Q61 "Current sexual activity"
Q62 "Alcohol/drugs and sex"
Q63 "Condom use"
Q64 "Birth control pill use"
Q65 "Sex of sexual contacts"
Q66 "Sexual identity"
Q67 "Perception of weight"
Q68 "Weight loss"
Q69 "Fruit juice drinking"
Q70 "Fruit eating"
Q71 "Green salad eating"
Q72 "Potato eating"
Q73 "Carrot eating"
Q74 "Other vegetable eating"
Q75 "No soda drinking"
Q76 "No milk drinking"
Q77 "Breakfast eating"
Q78 "Physical activity >= 5 days"
Q79 "Television watching"
Q80 "How many hours/day play video games"
Q81 "PE attendance"
Q82 "Sports team participation"
Q83 "Concussion"
Q84 "HIV testing"
Q85 "STD testing"
Q86 "Oral health care"
Q87 "Asthma"
Q88 "Hours of sleep on school night"
Q89 "Grades in school"
Q90 "Current Rx Pain med w/out Rx"
Q91 "Ever used hallucinogenic drugs"
Q92 "Sports drinks"
Q93 "Plain water"
Q94 "Food allergies"
Q95 "Muscle strengthening"
Q96 "Indoor tanning"
Q97 "Sunscreen use outside"
Q98 "Difficulty concentrating"
Q99 "How well speak English"
QN8 "Rarely or never wore a seat belt"
QN9 "Rode with a driver who had been drinking alcohol"
QN10 "Drove a car or other vehicle when they had been drinking alcohol"
QN11 "Texted or e-mailed while driving a car or other vehicle"
QN12 "Carried a weapon"
QN13 "Carried a weapon on school property"
QN14 "Carried a gun"
QN15 "Did not go to school because they felt unsafe at school or on their way to or from school"
QN16 "Were threatened or injured with a weapon on school property"
QN17 "Were in a physical fight"
QN18 "Were in a physical fight on school property"
QN19 "Were ever physically forced to have sexual intercourse"
QN20 "Experienced sexual violence"
QN21 "Experienced sexual dating violence"
QN22 "Experienced physical dating violence"
QN23 "Were bullied on school property"
QN24 "Were electronically bullied"
QN25 "Felt sad or hopeless"
QN26 "Seriously considered attempting suicide"
QN27 "Made a plan about how they would attempt suicide"
QN28 "Attempted suicide"
QN29 "Had a suicide attempt that resulted in an injury, poisoning, or overdose that had to be treated by a doctor or nurse"
QN30 "Ever tried cigarette smoking"
QN31 "First tried cigarette smoking before age 13 years"
QN32 "Currently smoked cigarettes"
QN33 "Smoked more than 10 cigarettes per day"
QN34 "Ever used an electronic vapor product"
QN35 "Currently used an electronic vapor product"
QN36 "Usually got their own electronic vapor products by buying them in a store"
QN37 "Currently used smokeless tobacco"
QN38 "Currently smoked cigars"
QN39 "Tried to quit using all tobacco products"
QN40 "Had their first drink of alcohol before age 13 years"
QN41 "Currently drank alcohol"
QN42 "Currently were binge drinking"
QN43 "Reported that the largest number of drinks they had in a row was 10 or more"
QN44 "Usually got the alcohol they drank by someone giving it to them"
QN45 "Ever used marijuana"
QN46 "tried marijuana for the first time before age 13 years"
QN47 "Currently used marijuana"
QN48 "Ever used synthetic marijuana"
QN49 "Ever took prescription pain medicine without a doctor's prescription or differently than how a doctor told them to use it"
QN50 "Ever used cocaine"
QN51 "Ever used inhalants"
QN52 "Ever used heroin"
QN53 "Ever used methamphetamines"
QN54 "Ever used ecstasy"
QN55 "Ever took steroids without a doctor's prescription"
QN56 "Ever injected any illegal drug"
QN57 "Were offered, sold, or given an illegal drug on school property"
QN58 "Ever had sexual intercourse"
QN59 "Had sexual intercourse for the first time before age 13 years"
QN60 "Had sexual intercourse with four or more persons during their life"
QN61 "Were currently sexually active"
QN62 "Drank alcohol or used drugs before last sexual intercourse"
QN63 "Used a condom during last sexual intercourse"
QN64 "Used birth control pills before last sexual intercourse"
QN65 "Had sexual contact with females, males, or females and males"
QN66 "Described themselves as gay or lesbian or bisexual"
QN67 "Described themselves as slightly or very overweight"
QN68 "Were trying to lose weight"
QN69 "Did not drink fruit juice"
QN70 "Did not eat fruit"
QN71 "Did not eat green salad"
QN72 "Did not eat potatoes"
QN73 "Did not eat carrots"
QN74 "Did not eat other vegetables"
QN75 "Did not drink a can, bottle, or glass of soda or pop"
QN76 "Did not drink milk"
QN77 "Did not eat breakfast"
QN78 "Were physically active at least 60 minutes per day on 5 or more days"
QN79 "Watched television 3 or more hours per day"
QN80 "Played video or computer games or used a computer 3 or more hours per day"
QN81 "Attended physical education (PE) classes on 1 or more days"
QN82 "Played on at least one sports team"
QN83 "Had a concussion from playing a sport or being physically active"
QN84 "Were ever tested for human immunodeficiency virus (HIV)"
QN85 "Were ever tested for a sexually transmitted disease (STD)"
QN86 "Saw a dentist"
QN87 "Had ever been told by a doctor or nurse that they had asthma"
QN88 "Got 8 or more hours of sleep"
QN89 "Described their grades in school as mostly A's or B's"
QN90 "currently took prescription pain medicine without a doctor's prescription or differently than how a doctor told them to use it"
QN91 "ever used hallucinogenic drugs"
QN92 "did not drink a can, bottle, or glass of a sports drink"
QN93 "did not drink a bottle or glass of plain water"
QN94 "have to avoid some foods because eating the food could cause an allergic reaction"
QN95 "did exercises to strengthen or tone their muscles on three or more days"
QN96 "used an indoor tanning device"
QN97 "most of the time or always wear sunscreen"
QN98 "have serious difficulty concentrating, remembering, or making decisions"
QN99 "speak English well or very well"
site "Site Code"
qnfrcig "Currently smoked cigarettes frequently"
qndaycig "Currently smoked cigarettes daily"
qnfrevp "Currently used electronic vapor products frequently"
qndayevp "Currently used electronic vapor products daily"
qntb2 "Currently smoked cigarettes or cigars"
qntb3 "Currently smoked cigarettes or cigars or used smokeless tobacco"
qntb4 "Currently smoked cigarettes or cigars or used smokeless tobacco or electronic vapor products"
qntb5 "Currently smoked cigarettes or used electronic vapor products"
qniudimp "Used an IUD (e.g., Mirena or ParaGard) or implant (e.g., Implanon or Nexplanon)"
qnothhpl "Used birth control pills; an IUD or implant; or a shot, patch, or birth control ring"
qndualbc "Used both a condom during last sexual intercourse and birth control pills; an IUD or implant; or a shot, patch, or birth control ring before last sexual intercourse"
qnbcnone "Did not use any method to prevent pregnancy"
qnfr0 "Did not eat fruit or drink 100% fruit juices"
qnfr1 "Ate fruit or drank 100% fruit juices one or more times per day"
qnfr2 "Ate fruit or drank 100% fruit juices two or more times per day"
qnveg0 "Did not eat vegetables"
qnveg1 "Ate vegetables one or more times per day"
qnveg2 "Ate vegetables two or more times per day"
qnveg3 "Ate vegetables three or more times per day"
qnsoda1 "Drank a can, bottle, or glass of soda or pop one or more times per day"
qnsoda2 "Drank a can, bottle, or glass of soda or pop two or more times per day"
qnmilk1 "Drank one or more glasses per day of milk"
qnmilk3 "Drank three or more glasses per day of milk"
qnbk7day "Ate breakfast on all 7 days"
qnpa0day "Did not participate in at least 60 minutes of physical activity on at least 1 day"
qnpa7day "Were physically active at least 60 minutes per day on all 7 days"
qndlype "Attended physical education classes on all 5 days"
qnnodnt "Never saw a dentist"
qnspdrk1 "Drank a can, bottle, or glass of a sports drink one or more times per day"
qnspdrk2 "Drank a can, bottle, or glass of a sports drink two or more times per day"
qnwater1 "Drank one or more glasses per day of water"
qnwater2 "Drank two or more glasses per day of water"
qnwater3 "Drank three or more glasses per day of water"
qnillict "Ever used select illicit drugs"
qnobese "Had obesity"
qnowt "Were Overweight"
weight "Overall Analysis Weight"
stratum "Sampling Strata"
psu "Primary Sampling Unit"
bmipct "Body Mass Index Percentile"
raceeth "Race/Ethnicity"
q6orig "Original unedited student height"
q7orig "Original unedited student weight".
 
VALUE LABELS
Q1
1 "12 years old or younger"
2 "13 years old"
3 "14 years old"
4 "15 years old"
5 "16 years old"
6 "17 years old"
7 "18 years old or older"
/
Q2
1 "Female"
2 "Male"
/
Q3
1 "9th grade"
2 "10th grade"
3 "11th grade"
4 "12th grade"
5 "Ungraded or other grade"
/
Q4
1 "Yes"
2 "No"
/
Q8
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Most of the time"
5 "Always"
/
Q9
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or more times"
/
Q10
1 "Did not drive"
2 "0 times"
3 "1 time"
4 "2 or 3 times"
5 "4 or 5 times"
6 "6 or more times"
/
Q11
1 "Did not drive"
2 "0 days"
3 "1 or 2 days"
4 "3 to 5 days"
5 "6 to 9 days"
6 "10 to 19 days"
7 "20 to 29 days"
8 "All 30 days"
/
Q12
1 "0 days"
2 "1 day"
3 "2 or 3 days"
4 "4 or 5 days"
5 "6 or more days"
/
Q13
1 "0 days"
2 "1 day"
3 "2 or 3 days"
4 "4 or 5 days"
5 "6 or more days"
/
Q14
1 "0 days"
2 "1 day"
3 "2 or 3 days"
4 "4 or 5 days"
5 "6 or more days"
/
Q15
1 "0 days"
2 "1 day"
3 "2 or 3 days"
4 "4 or 5 days"
5 "6 or more days"
/
Q16
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or 7 times"
6 "8 or 9 times"
7 "10 or 11 times"
8 "12 or more times"
/
Q17
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or 7 times"
6 "8 or 9 times"
7 "10 or 11 times"
8 "12 or more times"
/
Q18
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or 7 times"
6 "8 or 9 times"
7 "10 or 11 times"
8 "12 or more times"
/
Q19
1 "Yes"
2 "No"
/
Q20
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or more times"
/
Q21
1 "Did not date"
2 "0 times"
3 "1 time"
4 "2 or 3 times"
5 "4 or 5 times"
6 "6 or more times"
/
Q22
1 "Did not date"
2 "0 times"
3 "1 time"
4 "2 or 3 times"
5 "4 or 5 times"
6 "6 or more times"
/
Q23
1 "Yes"
2 "No"
/
Q24
1 "Yes"
2 "No"
/
Q25
1 "Yes"
2 "No"
/
Q26
1 "Yes"
2 "No"
/
Q27
1 "Yes"
2 "No"
/
Q28
1 "0 times"
2 "1 time"
3 "2 or 3 times"
4 "4 or 5 times"
5 "6 or more times"
/
Q29
1 "Did not attempt suicide"
2 "Yes"
3 "No"
/
Q30
1 "Yes"
2 "No"
/
Q31
1 "Never tried cigarette smoking"
2 "8 years old or younger"
3 "9 or 10 years old"
4 "11 or 12 years old"
5 "13 or 14 years old"
6 "15 or 16 years old"
7 "17 years old or older"
/
Q32
1 "0 days"
2 "1 or 2 days"
3 "3 to 5 days"
4 "6 to 9 days"
5 "10 to 19 days"
6 "20 to 29 days"
7 "All 30 days"
/
Q33
1 "Did not smoke cigarettes"
2 "Less than 1 cigarette"
3 "1 cigarette"
4 "2 to 5 cigarettes"
5 "6 to 10 cigarettes"
6 "11 to 20 cigarettes"
7 "More than 20 cigarettes"
/
Q34
1 "Yes"
2 "No"
/
Q35
1 "0 days"
2 "1 or 2 days"
3 "3 to 5 days"
4 "6 to 9 days"
5 "10 to 19 days"
6 "20 to 29 days"
7 "All 30 days"
/
Q36
1 "Did not use any vapor products"
2 "Bought them in a store"
3 "I got them on the Internet"
4 "Someone else bought them"
5 "Borrowed them"
6 "Someone gave them to me"
7 "Took them from a store"
8 "Some other way"
/
Q37
1 "0 days"
2 "1 or 2 days"
3 "3 to 5 days"
4 "6 to 9 days"
5 "10 to 19 days"
6 "20 to 29 days"
7 "All 30 days"
/
Q38
1 "0 days"
2 "1 or 2 days"
3 "3 to 5 days"
4 "6 to 9 days"
5 "10 to 19 days"
6 "20 to 29 days"
7 "All 30 days"
/
Q39
1 "I did not use tobacco products"
2 "Yes"
3 "No"
/
Q40
1 "Never drank alcohol"
2 "8 years old or younger"
3 "9 or 10 years old"
4 "11 or 12 years old"
5 "13 or 14 years old"
6 "15 or 16 years old"
7 "17 years old or older"
/
Q41
1 "0 days"
2 "1 or 2 days"
3 "3 to 5 days"
4 "6 to 9 days"
5 "10 to 19 days"
6 "20 to 29 days"
7 "All 30 days"
/
Q42
1 "0 days"
2 "1 day"
3 "2 days"
4 "3 to 5 days"
5 "6 to 9 days"
6 "10 to 19 days"
7 "20 or more days"
/
Q43
1 "Did not drink in past 30 days"
2 "1 or 2 drinks"
3 "3 drinks"
4 "4 drinks"
5 "5 drinks"
6 "6 or 7 drinks"
7 "8 or 9 drinks"
8 "10 or more drinks"
/
Q44
1 "Did not drink in past 30 days"
2 "Bought in store"
3 "Bought in restaurant"
4 "Bought at public event"
5 "I gave someone money to buy"
6 "Someone gave it to me"
7 "Took from store/family"
8 "Some other way"
/
Q45
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 to 99 times"
7 "100 or more times"
/
Q46
1 "Never tried marijuana"
2 "8 years old or younger"
3 "9 or 10 years old"
4 "11 or 12 years old"
5 "13 or 14 years old"
6 "15 or 16 years old"
7 "17 years old or older"
/
Q47
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q48
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q49
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q50
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q51
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q52
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q53
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q54
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q55
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q56
1 "0 times"
2 "1 time"
3 "2 or more times"
/
Q57
1 "Yes"
2 "No"
/
Q58
1 "Yes"
2 "No"
/
Q59
1 "Never had sex"
2 "11 years old or younger"
3 "12 years old"
4 "13 years old"
5 "14 years old"
6 "15 years old"
7 "16 years old"
8 "17 years old or older"
/
Q60
1 "Never had sex"
2 "1 person"
3 "2 people"
4 "3 people"
5 "4 people"
6 "5 people"
7 "6 or more people"
/
Q61
1 "Never had sex"
2 "None during past 3 months"
3 "1 person"
4 "2 people"
5 "3 people"
6 "4 people"
7 "5 people"
8 "6 or more people"
/
Q62
1 "Never had sex"
2 "Yes"
3 "No"
/
Q63
1 "Never had sex"
2 "Yes"
3 "No"
/
Q64
1 "Never had sex"
2 "No method was used"
3 "Birth control pills"
4 "Condoms"
5 "IUD or implant"
6 "Shot/patch/birth control ring"
7 "Withdrawal/other method"
8 "Not sure"
/
Q65
1 "Never had sexual contact"
2 "Females"
3 "Males"
4 "Females and males"
/
Q66
1 "Heterosexual (straight)"
2 "Gay or lesbian"
3 "Bisexual"
4 "Not sure"
/
Q67
1 "Very underweight"
2 "Slightly underweight"
3 "About the right weight"
4 "Slightly overweight"
5 "Very overweight"
/
Q68
1 "Lose weight"
2 "Gain weight"
3 "Stay the same weight"
4 "Not trying to do anything"
/
Q69
1 "Did not drink fruit juice"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q70
1 "Did not eat fruit"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q71
1 "Did not eat green salad"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q72
1 "Did not eat potatoes"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q73
1 "Did not eat carrots"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q74
1 "Did not eat other vegetables"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q75
1 "Did not drink soda or pop"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q76
1 "Did not drink milk"
2 "1 to 3 glasses"
3 "4 to 6 glasses"
4 "1 glass per day"
5 "2 glasses per day"
6 "3 glasses per day"
7 "4 or more glasses per day"
/
Q77
1 "0 days"
2 "1 day"
3 "2 days"
4 "3 days"
5 "4 days"
6 "5 days"
7 "6 days"
8 "7 days"
/
Q78
1 "0 days"
2 "1 day"
3 "2 days"
4 "3 days"
5 "4 days"
6 "5 days"
7 "6 days"
8 "7 days"
/
Q79
1 "No TV on average school day"
2 "Less than 1 hour per day"
3 "1 hour per day"
4 "2 hours per day"
5 "3 hours per day"
6 "4 hours per day"
7 "5 or more hours per day"
/
Q80
1 "No playing video/computer game"
2 "Less than 1 hour per day"
3 "1 hour per day"
4 "2 hours per day"
5 "3 hours per day"
6 "4 hours per day"
7 "5 or more hours per day"
/
Q81
1 "0 days"
2 "1 day"
3 "2 days"
4 "3 days"
5 "4 days"
6 "5 days"
/
Q82
1 "0 teams"
2 "1 team"
3 "2 teams"
4 "3 or more teams"
/
Q83
1 "0 times"
2 "1 time"
3 "2 times"
4 "3 times"
5 "4 or more times"
/
Q84
1 "Yes"
2 "No"
3 "Not sure"
/
Q85
1 "Yes"
2 "No"
3 "Not sure"
/
Q86
1 "During the past 12 months"
2 "Between 12 and 24 months ago"
3 "More than 24 months ago"
4 "Never"
5 "Not sure"
/
Q87
1 "Yes"
2 "No"
3 "Not sure"
/
Q88
1 "4 or less hours"
2 "5 hours"
3 "6 hours"
4 "7 hours"
5 "8 hours"
6 "9 hours"
7 "10 or more hours"
/
Q89
1 "Mostly A's"
2 "Mostly B's"
3 "Mostly C's"
4 "Mostly D's"
5 "Mostly F's"
6 "None of these grades"
7 "Not sure"
/
Q90
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q91
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q92
1 "I did not drink"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q93
1 "Did not drink water"
2 "1 to 3 times"
3 "4 to 6 times"
4 "1 time per day"
5 "2 times per day"
6 "3 times per day"
7 "4 or more times per day"
/
Q94
1 "Yes"
2 "No"
3 "Not sure"
/
Q95
1 "0 days"
2 "1 day"
3 "2 days"
4 "3 days"
5 "4 days"
6 "5 days"
7 "6 days"
8 "7 days"
/
Q96
1 "0 times"
2 "1 or 2 times"
3 "3 to 9 times"
4 "10 to 19 times"
5 "20 to 39 times"
6 "40 or more times"
/
Q97
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Most of the time"
5 "Always"
/
Q98
1 "Yes"
2 "No"
/
Q99
1 "Very well"
2 "Well"
3 "Not well"
4 "Not at all"
/
RACEETH
1 "Am Indian/Alaska Native"
2 "Asian"
3 "Black or African American"
4 "Native Hawaiian/Other PI"
5 "White"
6 "Hispanic / Latino"
7 "Multiple - Hispanic"
8 "Multiple - Non-Hispanic"
/.

MISSING VALUES
Q1 (" ") 
Q2 (" ") Q3 (" ") Q4 (" ") 
Q5 ("        ") Q6 ("    ") Q7 ("      ") 
Q8 (" ") Q9 (" ") Q10 (" ") 
Q11 (" ") Q12 (" ") Q13 (" ") 
Q14 (" ") Q15 (" ") Q16 (" ") 
Q17 (" ") Q18 (" ") Q19 (" ") 
Q20 (" ") Q21 (" ") Q22 (" ") 
Q23 (" ") Q24 (" ") Q25 (" ") 
Q26 (" ") Q27 (" ") Q28 (" ") 
Q29 (" ") Q30 (" ") Q31 (" ") 
Q32 (" ") Q33 (" ") Q34 (" ") 
Q35 (" ") Q36 (" ") Q37 (" ") 
Q38 (" ") Q39 (" ") Q40 (" ") 
Q41 (" ") Q42 (" ") Q43 (" ") 
Q44 (" ") Q45 (" ") Q46 (" ") 
Q47 (" ") Q48 (" ") Q49 (" ") 
Q50 (" ") Q51 (" ") Q52 (" ") 
Q53 (" ") Q54 (" ") Q55 (" ") 
Q56 (" ") Q57 (" ") Q58 (" ") 
Q59 (" ") Q60 (" ") Q61 (" ") 
Q62 (" ") Q63 (" ") Q64 (" ") 
Q65 (" ") Q66 (" ") Q67 (" ") 
Q68 (" ") Q69 (" ") Q70 (" ") 
Q71 (" ") Q72 (" ") Q73 (" ") 
Q74 (" ") Q75 (" ") Q76 (" ") 
Q77 (" ") Q78 (" ") Q79 (" ") 
Q80 (" ") Q81 (" ") Q82 (" ") 
Q83 (" ") Q84 (" ") Q85 (" ") 
Q86 (" ") Q87 (" ") Q88 (" ") 
Q89 (" ") Q90 (" ") Q91 (" ") 
Q92 (" ") Q93 (" ") Q94 (" ") 
Q95 (" ") Q96 (" ") Q97 (" ") 
Q98 (" ") Q99 (" ") QN8 (" ") 
QN9 (" ") QN10 (" ") QN11 (" ") 
QN12 (" ") QN13 (" ") QN14 (" ") 
QN15 (" ") QN16 (" ") QN17 (" ") 
QN18 (" ") QN19 (" ") QN20 (" ") 
QN21 (" ") QN22 (" ") QN23 (" ") 
QN24 (" ") QN25 (" ") QN26 (" ") 
QN27 (" ") QN28 (" ") QN29 (" ") 
QN30 (" ") QN31 (" ") QN32 (" ") 
QN33 (" ") QN34 (" ") QN35 (" ") 
QN36 (" ") QN37 (" ") QN38 (" ") 
QN39 (" ") QN40 (" ") QN41 (" ") 
QN42 (" ") QN43 (" ") QN44 (" ") 
QN45 (" ") QN46 (" ") QN47 (" ") 
QN48 (" ") QN49 (" ") QN50 (" ") 
QN51 (" ") QN52 (" ") QN53 (" ") 
QN54 (" ") QN55 (" ") QN56 (" ") 
QN57 (" ") QN58 (" ") QN59 (" ") 
QN60 (" ") QN61 (" ") QN62 (" ") 
QN63 (" ") QN64 (" ") QN65 (" ") 
QN66 (" ") QN67 (" ") QN68 (" ") 
QN69 (" ") QN70 (" ") QN71 (" ") 
QN72 (" ") QN73 (" ") QN74 (" ") 
QN75 (" ") QN76 (" ") QN77 (" ") 
QN78 (" ") QN79 (" ") QN80 (" ") 
QN81 (" ") QN82 (" ") QN83 (" ") 
QN84 (" ") QN85 (" ") QN86 (" ") 
QN87 (" ") QN88 (" ") QN89 (" ") 
QN90 (" ") QN91 (" ") QN92 (" ") 
QN93 (" ") QN94 (" ") QN95 (" ") 
QN96 (" ") QN97 (" ") QN98 (" ") 
QN99 (" ") site ("   ") 
qnfrcig (" ") qndaycig (" ") 
qnfrevp (" ") qndayevp (" ") qntb2 (" ") 
qntb3 (" ") qntb4 (" ") qntb5 (" ") 
qniudimp (" ") qnothhpl (" ") qndualbc (" ") 
qnbcnone (" ") qnfr0 (" ") qnfr1 (" ") 
qnfr2 (" ") qnveg0 (" ") qnveg1 (" ") 
qnveg2 (" ") qnveg3 (" ") qnsoda1 (" ") 
qnsoda2 (" ") qnmilk1 (" ") qnmilk3 (" ") 
qnbk7day (" ") qnpa0day (" ") qnpa7day (" ") 
qndlype (" ") qnnodnt (" ") qnspdrk1 (" ") 
qnspdrk2 (" ") qnwater1 (" ") qnwater2 (" ") 
qnwater3 (" ") qnillict (" ") qnobese (" ") 
qnowt (" ") weight ("          ") stratum ("   ") 
psu ("      ") bmipct ("     ") raceeth ("  ") 
q6orig ("   ") q7orig ("   ") .

Formats q6 q7 (F5.2) .
EXECUTE.
SAVE OUTFILE="/Users/catalinacanizares/Github/dissertationData/inst/extData/yrbs2019.dat"/ 
/COMPRESSED.
EXECUTE.
 
GET FILE "/Users/catalinacanizares/Github/dissertationData/inst/extData/yrbs2019.dat".
