#!/usr/bin/env bash

#ampl solve_BundeslaenderTour.run > Resultate/solve_BundeslaenderTour.txt
#ampl solve_OesterreichTourC500.run > Resultate/solve_OesterreichTourC500.txt
#ampl solve_OesterreichTourC1000.run > Resultate/solve_OesterreichTourC1000.txt
#ampl solve_OesterreichTourC1000AllProfits1.run > Resultate/solve_OesterreichTourC1000AllProfits1.txt
#ampl solve_OesterreichTourC15000.run > Resultate/solve_OesterreichTourC15000.txt

date > Resultate/solve_Welttour.txt
ampl solve_Welttour.run >> Resultate/solve_Welttour.txt
#ampl solve_BundeslaenderTour.run >> Resultate/solve_Welttour.txt
date >> Resultate/solve_Welttour.txt
