*Use auto training data
sysuse auto, clear

*A normal regression
reg price mpg headroom trunk weight length i.rep78

*Margins
margins, dydx(*)
marginsplot, recast(scatter) yline(0)

*Coefplot install
net install "http://www.stata-journal.com/software/sj15-1/gr0059_1.pkg", replace

*Coefplot helpfile
help coefplot

*Plot all coefficients
coefplot, xline(0)

*Plot coefficients vertically without constant
coefplot, vertical drop(_cons *rep*) yline(0) xlabel(, alternate)

*Two regressions with same dependent variable
reg price mpg headroom trunk weight length i.rep78 if foreign == 0
estimate store foreign
reg price mpg headroom trunk weight length i.rep78 if foreign == 1
estimate store domestic

coefplot foreign domestic, drop(_cons *rep*) xline(0)

*Two regressions with another dependent variables
reg turn mpg headroom trunk weight length i.rep78 if foreign == 0
estimate store foreign_t
reg turn mpg headroom trunk weight length i.rep78 if foreign == 1
estimate store domestic_t

coefplot foreign domestic, bylabel(Price) || foreign_t domestic_t, bylabel(Turn) ||, drop(_cons *rep*) xline(0) byopts(xrescale)

*Plotting standardized regression estimates
reg price mpg headroom trunk weight length i.rep78
stdBeta, store(A B C, replace)
coefplot C, xline(0)













