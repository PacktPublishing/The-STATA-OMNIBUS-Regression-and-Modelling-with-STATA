*Non-parallel trends with 3 time periods
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
3	1	1500	1
4	-1	1100	1
4	0	1600	1
4	1	1700	1
end


*Visualise example 
tw (sc wage time if treated == 0, mcolor(maroon)) (sc wage time if treated == 1, mcolor(dknavy)) (lfit wage time if treated == 0 & time != 1, lcolor(maroon)) (lfit wage time if treated == 1 & time != 1, lcolor(dknavy)) (lfit wage time if treated == 0 & time != -1, lcolor(maroon)) (lfit wage time if treated == 1 & time != -1, legend(order(1 "Controls" 2 "Treated")) lcolor(dknavy))  

*Regression example 
gen post = (time >= 1 )
reg wage i.treated##c.time##i.post 

*Non-parallel trends with 9 time periods
clear
input id time wage treated

id	time	wage	treated
1	-4	500	0
1	-3	600	0
1	-2	700	0
1	-1	800	0
1	0	900	0
1	1	1200	0
1	2	1500	0
1	3	1800	0
1	4	2100	0
2	-4	700	0
2	-3	800	0
2	-2	900	0
2	-1	1000	0
2	0	1100	0
2	1	1400	0
2	2	1700	0
2	3	2000	0
2	4	2300	0
3	-4	1200	1
3	-3	1200	1
3	-2	1200	1
3	-1	1200	1
3	0	1200	1
3	1	1300	1
3	2	1300	1
3	3	1300	1
3	4	1300	1
4	-4	1400	1
4	-3	1400	1
4	-2	1400	1
4	-1	1400	1
4	0	1400	1
4	1	1500	1
4	2	1500	1
4	3	1500	1
4	4	1500	1

end

*Visualise example 
tw (sc wage time if treated == 0, mcolor(maroon)) (sc wage time if treated == 1, mcolor(dknavy)) (lfit wage time if treated == 0  & time <= 0, lcolor(maroon)) (lfit wage time if treated == 1 & time <= 0, lcolor(dknavy)) (lfit wage time if treated == 0  & time >= 1, range(0 4) lcolor(maroon))  (lfit wage time if treated == 1 & time >= 1, lcolor(dknavy) legend(order(1 "Controls" 2 "Treated")) range(0 4) yscale(range(500 1500)))

*Regression example 
gen post = (time >= 1 )
reg wage i.treated##c.time##i.post 

*Regression example 
gen post2 = 0
replace post2 = time if time >= 1
reg wage i.treated##c.time##i.post2


