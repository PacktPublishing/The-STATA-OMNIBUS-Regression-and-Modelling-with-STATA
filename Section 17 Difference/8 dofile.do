*With parallel trends
clear

input id time wage treated

id	time	wage	treated
1	-1	800	0
1	0	900	0
1	1	1000	0
2	-1	1000	0
2	0	1100	0
2	1	1200	0
3	-1	1300	1
3	0	1400	1
3	1	1900	1
4	-1	1500	1
4	0	1600	1
4	1	2100	1
end

*Visualise data
tw (sc wage time if treated == 0, mcolor(maroon)) (sc wage time if treated == 1, mcolor(dknavy)) (lfit wage time if treated == 0 & time != 1, lcolor(maroon)) (lfit wage time if treated == 1 & time != 1, lcolor(dknavy)) (lfit wage time if treated == 0 & time != -1, lcolor(maroon)) (lfit wage time if treated == 1 & time != -1, legend(order(1 "Controls" 2 "Treated")) lcolor(dknavy) xline(0.5, lpattern(dash))) 
 
*Regression 
tab time
replace time = time + 1
*diff-in-diff
reg wage i.treated##i.time if time >= 1
*parallel trends
reg wage i.treated##i.time if time <= 1


*Without parallel trends
clear

input id time wage treated

id	time	wage	treated
1	-1	800	0
1	0	900	0
1	1	1000	0
2	-1	1000	0
2	0	1100	0
2	1	1200	0
3	-1	900	1
3	0	1400	1
3	1	1900	1
4	-1	1100	1
4	0	1600	1
4	1	2100	1
end

*Visualise data
tw (sc wage time if treated == 0, mcolor(maroon)) (sc wage time if treated == 1, mcolor(dknavy)) (lfit wage time if treated == 0 & time != 1, lcolor(maroon)) (lfit wage time if treated == 1 & time != 1, lcolor(dknavy)) ///
 (lfit wage time if treated == 0 & time != -1, lcolor(maroon)) (lfit wage time if treated == 1 & time != -1, legend(order(1 "Controls" 2 "Treated")) lcolor(dknavy) xline(0.5, lpattern(dash))) 

*Regression 
tab time
replace time = time + 1
*diff-in-diff
reg wage i.treated##i.time if time >= 1
*parallel trends
reg wage i.treated##i.time if time <= 1

