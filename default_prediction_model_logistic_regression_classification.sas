/* Import Data: Modify according to your location */
proc import datafile="/home/u64091966/MIS450/Uploads/Default.csv"
    out=default_data
    dbms=csv
    replace;
    getnames=yes;
run;

/* Summary Statistics */
proc means data=default_data n mean std min p25 median p75 max;
    var balance income;
run;

/* Histograms for Whole Dataset */
proc sgplot data=default_data;
    histogram balance / binwidth=50;
    xaxis label="Balance";
    title "Histogram of Balance";
run;

proc sgplot data=default_data;
    histogram income / binwidth=2000;
    xaxis label="Income";
    title "Histogram of Income";
run;

/* Grouped Statistic Summaries and Histograms */
proc means data=default_data n mean std min p25 median p75 max;
    class default student;
    var balance income;
run;

/* Default = Yes, Student = Yes */
proc sgplot data=default_data;
    where default="Ye" and student="Yes";
    histogram balance / binwidth=50;
    xaxis label="Balance";
    title "Histogram of Balance (Default=Yes, Student=Yes)";
run;

proc sgplot data=default_data;
    where default="Ye" and student="Yes";
    histogram income / binwidth=2000;
    xaxis label="Income";
    title "Histogram of Income (Default=Yes, Student=Yes)";
run;

/* Default = Yes, Student = No */
proc sgplot data=default_data;
    where default="Ye" and student="No";
    histogram balance / binwidth=50;
    xaxis label="Balance";
    title "Histogram of Balance (Default=Yes, Student=No)";
run;

proc sgplot data=default_data;
    where default="Ye" and student="No";
    histogram income / binwidth=2000;
    xaxis label="Income";
    title "Histogram of Income (Default=Yes, Student=No)";
run;

/* Default = No, Student = Yes */
proc sgplot data=default_data;
    where default="No" and student="Yes";
    histogram balance / binwidth=50;
    xaxis label="Balance";
    title "Histogram of Balance (Default=No, Student=Yes)";
run;

proc sgplot data=default_data;
    where default="No" and student="Yes";
    histogram income / binwidth=2000;
    xaxis label="Income";
    title "Histogram of Income (Default=No, Student=Yes)";
run;

/* Default = No, Student = No */
proc sgplot data=default_data;
    where default="No" and student="No";
    histogram balance / binwidth=50;
    xaxis label="Balance";
    title "Histogram of Balance (Default=No, Student=No)";
run;

proc sgplot data=default_data;
    where default="No" and student="No";
    histogram income / binwidth=2000;
    xaxis label="Income";
    title "Histogram of Income (Default=No, Student=No)";
run;

/* Logistic Regression */
data default_data_binary;
    set default_data;
    default_binary = (default = "Ye");
    student_binary = (student = "Yes");
run;

proc logistic data=default_data_binary outmodel=model_store;
    model default_binary(event='1') = student_binary balance income / selection=stepwise;
    title "Logistic Regression Analysis";
run;

/* Example Prediction */
data predict;
    input student_binary balance income;
    datalines;
    1 621 1850
    ;
run;

proc logistic inmodel=model_store;
    score data=predict out=predicted;
run;

proc print data=predicted;
    title "Predicted Default Probability";
run;
