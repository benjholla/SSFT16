This directory contains the Pathway Logic Hras model (rules and dish)
along with the files needed to parse and run the model.

See exercises.txt for example commands to run and problems to solve

theops.maude           --- the PL sorts and model independent operations
proteinops.maude       --- protein constants 
locationops.maude      --- location name constants  
modificationops.maude  --- modification constants
qq.maude               --- defines hrasDish (the starting state)
rules.maude            --- rules for reaching Hras-GTP
all.maude              --- loads the above and defines the combined modules
dish-occs-nocell.maude --- auxiliary functions for occurrences 
qqq-mc.maude           --- defines properties to use in model-checking
load-mc.maude          --- loads the additional files to do model-checking

PLALauncher            --- contains script to launch the PLA client

Two properties for model checking are defined in qqq-mc.maude

 ops goalP avoidP : Thing LocName -> Prop .
 eq PD(s:Soup) |= goalP(th:Thing, l:LocName) 
       = hasOcc(PD(s:Soup),th:Thing,l:LocName) .
 eq PD(s:Soup) |= avoidP(th:Thing, l:LocName) 
       = not(hasOcc(PD(s:Soup),th:Thing,l:LocName)) .

For example, a dish satisfies goalP for [Sos1 - Yphos] in EgfRC if 
the dish has the form PD(s:Soup {EgfRC | e:Soup [Sos1 - Yphos] }
while it satisfies avoidP for [Sos1 - Yphos] in EgfRC if
has the form PD(s:Soup {EgfRC | e:Soup } and [Sos1 - Yphos] 
does not appear in e:Soup.

The function avoidOcc(dish, thing, locname)
removes thing from the locname component of the dish.

