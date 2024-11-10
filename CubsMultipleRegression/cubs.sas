/* Generated Code (IMPORT) */
/* Source File: sportsref_download 3(Worksheet).csv */
/* Source Path: /home/u63987812/sasuser.v94/Lab 2 */
/* Code generated on: 10/22/24, 6:23 PM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/u63987812/sasuser.v94/Lab 2/sportsref_download 3(Worksheet).csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.cubs;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.cubs; RUN;


%web_open_table(WORK.IMPORT);

proc print data=cubs; run;


/* EDA */
/* total # observations */
proc freq data=cubs; 
	run;

/* HISTOGRAMS */
/* 11 variables */
/* R (Runs) , H (Hits) , 2B (Doubles) , 3B (Triples) , HR (Home Runs) , RBI (Runs Batted In) , 
SB (Stolen Bases) , BB (Walks) , SO (Strikeouts) , BA (Batting Average) , BatAge (Age of Batters) */

/* histogram runs */
proc sgplot data=cubs;
	histogram R;
	TITLE "Histogram of Runs";
	run;

/* histogram hits */
proc sgplot data=cubs;
	histogram H;
	TITLE "Histogram of Hits";
	run;

/* histogram doubles */
proc sgplot data=cubs;
	histogram DB;
	TITLE "Histogram of Doubles";
	run;

/* histogram triples */
proc sgplot data=cubs;
	histogram TP;
	TITLE "Histogram of Triples";
	run;
	
/* histogram home runs */
proc sgplot data=cubs;
	histogram HR;
	TITLE "Histogram of Home Runs";
	run;

/* histogram runs batted in */
proc sgplot data=cubs;
	histogram RBI;
	TITLE "Histogram of Runs Batted In";
	run;

/* histogram stolen bases */
proc sgplot data=cubs;
	histogram SB;
	TITLE "Histogram of Stolen Bases";
	run;	

/* histogram walks */
proc sgplot data=cubs;
	histogram BB;
	TITLE "Histogram of Walks";
	run;

/* histogram strike outs */
proc sgplot data=cubs;
	histogram SO;
	TITLE "Histogram of Strike Outs";
	run;	

/* histogram batting average */
proc sgplot data=cubs;
	histogram BA;
	TITLE "Histogram of Walks";
	run;

/* histogram Age of Batters */
proc sgplot data=cubs;
	histogram BatAge;
	TITLE "Histogram of Age of Batters";
	run;
	
/* histogram wins */
proc sgplot data=cubs;
	histogram W;
	TITLE "Histogram of Wins";
	run;

/* four variables most strongly associated w team wins (W) based on correlation coefficients:
RBI (Runs Batted In): 0.64058
R (Runs): 0.63919
BB (Walks): 0.53792
DB (Doubles): 0.39551*/
proc corr data = cubs;
var R  H DB TP  HR  RBI  SB  BB  SO  BA  BatAge; 
with W;
run; 

/* PROC CORR */
/* scatterplots */
/* wins vs runs scatterplot */
proc sgplot data=cubs;
    scatter x=W y=R;
    title "Scatter Plot of Wins vs. Runs";
    xaxis label="Wins";
    yaxis label="Runs";
	run;
	
/* wins vs doubles scatterplot */
proc sgplot data=cubs;
    scatter x=W y=DB;
    title "Scatter Plot of Wins vs. Doubles";
    xaxis label="Wins";
    yaxis label="Hits";
	run;

/* wins vs runs batted in scatterplot */
proc sgplot data=cubs;
    scatter x=W y=RBI;
    title "Scatter Plot of Wins vs. Runs Batted In";
    xaxis label="Wins";
    yaxis label="Runs Batted In";
	run;

/* wins vs walks scatterplot */
proc sgplot data=cubs;
    scatter x=W y=BB;
    title "Scatter Plot of Wins vs. Walks";
    xaxis label="Wins";
    yaxis label="Walks";
	run;	
		

/* PROC REGG */
/* 6 two variable model*/
/* Wins (W) = RBI (Runs Batted In) , R (Runs) , BB (Walks) , DB (Doubles) */

/* Model 1 */
/* Runs Batted In vs. Runs */
proc reg data=cubs;
	model W = RBI R;
	title "Multiple Regression: Runs Batted In vs. Runs";
	run;

/* Model 2 */
/* Runs Batted In vs. Walks */
proc reg data=cubs;
	model W = RBI BB;
	title "Multiple Regression: Runs Batted In vs. Walks";
	run;

/* Model 3 */
/* Runs Batted In vs. Doubles */
proc reg data=cubs;
	model W = RBI DB;
	title "Multiple Regression: Runs Batted In vs. Doubles";
	run;

/* Model 4 */
/* Runs vs. Walks */
proc reg data=cubs;
	model W = R BB;
	title "Multiple Regression: Runs vs. Walks";
	run;

/* Model 5 */
/* Runs vs. Doubles */
proc reg data=cubs;
	model W = R DB;
	title "Multiple Regression: Runs vs. Doubles";
	run;

/* Model 6 */
/* Walks vs. Doubles */
proc reg data=cubs;
	model W = BB DB;
	title "Multiple Regression: Walks vs. Doubles";
	run;

/* best 2 var model : Model 3 Runs Batted In vs. Doubles */
/*2 three variable models  */

/* Model 1 */
/* Runs Batted In vs. Doubles vs. Runs */
/* example models if RBI and R were best 2 var models */
proc reg data=cubs;
	model W = RBI DB R;
	title "Multiple Regression: Runs Batted In vs. Doubles vs. Runs";
	run;

/* Model 2 */
/* Runs Batted In vs. Doubles vs. Walks */
proc reg data=cubs;
	model W = RBI DB BB;
	title "Multiple Regression: Runs Batted In vs. Doubles vs. Walks";
	run;

/* interaction term model */

proc glm data=cubs;
    model W = RBI DB BB DB*BB / solution; 
    store GLMMODEL;
run;

proc plm restore=GLMMODEL noinfo;
    effectplot slicefit(x=DB sliceby=BB);
    title "Interaction Effect of Doubles (DB) and Walks (BB) on Wins (W)";
run;

data cubs_2;
	set cubs;
	RBI_DB=RBI*DB;
	RBI_BB=RBI*BB;
	DB_BB=DB*BB;
		
proc reg data=cubs_2;
	model W=RBI DB BB RBI_DB RBI_BB DB_BB;
	run;


/* second order term model */
data cubs_3;
	set cubs;
	RBI_2=RBI*RBI;
	DB_2=DB*DB;
	BB_2=BB*BB;
	
	
proc reg data=cubs_3;
	model W=RBI DB BB RBI_2 DB_2 BB_2;
	run;
	


















