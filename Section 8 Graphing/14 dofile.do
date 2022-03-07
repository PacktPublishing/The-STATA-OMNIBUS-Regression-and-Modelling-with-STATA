*Load auto data
sysuse auto, clear

*Help 
help graph_text

*Generate base graph
tw (scatter price mpg)

*Scatter plot of price against miles per gallon with labelled markers
tw (scatter price mpg, mlabel(make))

*Scatter plot of price against miles per gallon with titles
tw (scatter price mpg, title(Price vs MPG) subtitle(Cars) xtitle(MPG) ytitle(Price) note(Autodata))

*Scatter plot of price against miles per gallon with added textbox
tw (scatter price mpg, text(10000 30 "Something" "Important"))

*Scatter plot of price against miles per gallon with added textbox, bold and italic font 
tw (scatter price mpg, text(10000 30 "{bf:Something}" "{it:Important}"))

*Scatter plot of price against miles per gallon with added textbox, bold and italic font 
tw (scatter price mpg, text(10000 30 "{bf:Something}" "{it:Important}") text(12000 30 "{bf:{&alpha} }" "{it:{&beta} }"))




