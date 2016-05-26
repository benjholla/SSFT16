This directory contains runable code for the examples in
the Maude tutorial part of the Pathway Logic course.  
There is also an extension of the vending machine example.
See exercises.txt for more instructions 

nat-list.maude   --- formalizing natural numbers and lists thereof
vend.maude       --- a simple vending machine
mcvend.maude     --- adding properties for model checking
simple.maude     --- extracting simple paths from counter examples
fp-vend.maude    --- combines mcvend and path extraction

load-vend.maude  --- loads all of the above

vending-mall.maude  --- multiple vending machines 

meta-vend.maude   --- using reflection to analyze and control vending machines

excercises.txt    --- some suggestions for running the examples
                  --- .maude files also contain sample runs


The instructions assume you are starting Maude from this directory.
*** is the Maude comment -- the rest of the line is a comment
***(
all the stuff between () is a comment, could be many lines
)