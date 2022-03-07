*Load cardkrueger data 
use cardkrueger1994.dta

*describe data
describe

*Tabulate treated/controls vs before/after
tab treated t, su(fte) nost nofreq

*difference-in--difference estimation
	*with regress command
	reg fte i.treated##i.t
	*with diff command
	diff fte, treated(treated) period(t)

*difference-in--difference estimation with controls
	*with regress command
	reg fte i.treated##i.t kfc roys wendys
	*with diff command
	diff fte, treated(treated) period(t) cov(bk kfc roys) report 
