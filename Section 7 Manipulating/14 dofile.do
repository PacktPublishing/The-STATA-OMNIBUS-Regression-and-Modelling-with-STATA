*Load the auto data
sysuse auto, clear

*List data
list make price rep78 in 1/20

*Underscore variables
gen id = _n
gen total = _N

*List data
list make price rep78 id total in 1/20

*Subscripting
gen newprice1 = price[1]
gen newprice2 = price[_n-1]

*List data
list make price newprice* rep78 id total in 1/20

*By groups
bys rep78: gen newid = _n
bys rep78: gen newtotal = _N

*List data
list make price rep78 newid newtotal in 1/20

*Maximum price in each repair group
bys rep78 (price): gen maxprice = price[_N]
bys rep78 (price): gen minprice = price[1]

*List data
list make price maxprice minprice rep78 newid newtotal in 1/20

*Same with egen
egen maxprice2 = max(price), by(rep78) 
egen minprice2 = min(price), by(rep78) 

*List data
list make price maxprice maxprice2 rep78 newid newtotal in 1/20
