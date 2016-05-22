# Sixth Summer School on Formal Techniques
## May 22 - May 27, 2016  
[Menlo College](http://www.menlo.edu), Atherton, CA

Techniques based on formal logic, such as model checking, satisfiability, static analysis, and automated theorem proving, are finding a broad range of applications in modeling, analysis, verification, and synthesis. This school, the sixth in the series, will focus on the principles and practice of formal techniques, with a strong emphasis on the hands-on use and development of this technology. It primarily targets graduate students and young researchers who are interested in developing and using formal techniques in their research. A prior background in formal methods is helpful but not required. Participants at the school will have a seriously fun time experimenting with the tools and techniques presented in the lectures during laboratory sessions.

## Background Course on Logic

* Natarajan Shankar (SRI CSL) and Stéphane Graham-Lengrand (Ecole Polytechnique)

Speaking Logic ([Speaking Logic](speaklogicV6.pdf), [Type Theory](Main.pdf), [Reading](https://scholar.google.com/citations?view_op=view_citation&hl=en&user=qVzY4XYAAAAJ&cstart=20&pagesize=80&authuser=1&citation_for_view=qVzY4XYAAAAJ:_B80troHkn4C), [PVS Course](PVScourse.pdf), [PVS](http://pvs.csl.sri.com))  

**Abstract**: Formal logic has become the lingua franca of computing. It is used for specifying digital systems, annotating programs with assertions, defining the semantics of programming languages, and proving or refuting claims about software or hardware systems. Familiarity with the language and methods of logic is a foundation for research into formal aspects of computing. This course covers the basics of logic focusing on the use of logic as a medium for formalization and proof.

## Lecturers

Clark Barrett (NYU/Stanford), Stefano Tonetta (FBK Italy), Jean-Christophe Filliatre (LRI Paris), Carolyn Talcott (SRI), and Natarajan Shankar (SRI)

* Clark Barrett (NYU/Stanford):  
Satisfiability Modulo Theories  
([Slides](slides.pdf))  
**Abstract**: I will give an introduction to Satisfiability Modulo Theories (SMT) solvers, including the DPLL(T) architecture that combines a Boolean satisfiability (SAT) solver with a theory solver, techniques for building individual theory solvers, and techniques for theory combination. Lab sessions will explore these ideas by building and experimenting with small modules within the CVC4 SMT solver.
* Stefano Tonetta<sup>[†](#fn1)</sup> (FBK Italy):  
Advanced model checking for verification and safety assessment  
([Slides](https://es-static.fbk.eu/people/tonetta/index.php?n=Events.SSFT16))  
**Abstract**: The course will review the recent developments in model checking for finite- and infinite-state transition systems, including IC3 and its integration with implicit abstraction. We will then present a formal approach to contract-based refinement, and will cover the problem of safety analysis, i.e. assessing the response of a system to faults by automatically generating Fault Trees. We will report the results on two recent case studies on the application of these techniques: the AIR6110 Wheel Brake System, and the NextGen protocol.

The practical sessions will rely on the use of the nuXmv model checker, the xSAP platform for safety analysis, and the OCRA system for contract refinement.

* Jean-Christophe Filliatre (Paris-Sud, CNRS):  
An Introduction to Deductive Program Verification  
([Materials](http://why3.lri.fr/ssft-16/))  
**Abstract**: This lecture introduces elementary concepts and techniques related to deductive program verification, such as loop invariants, function contracts, termination proofs, ghost code, modeling of data structures, weakest preconditions, etc. A particular focus is made on the use of automated theorem provers in the verification process and the tension that may exists between an elegant specification and a fully automated proof. The lecture includes many examples using the Why3 tool (http://why3.lri.fr/) and lab sessions will invite participants to formally verify small yet challenging programs using Why3.
* Carolyn Talcott (SRI International Computer Science Laboratory):  
Pathway Logic: Using Formal Techniques to Understand How Cells Work  
([Maude](http:pathway-logic.html))  
**Abstract**: Pathway Logic (PL) is a framework based on rewriting logic for developing and analyzing formal executable models of cellular processes. The long term objective is better understanding of how cells work. Progress towards this goal involves curation of experimental knowledge, assembly of models to study a question of interest, visualizing the resulting models and using formal reasoning techniques to determine properties predicted by the models.

In these lectures we will focus on signal transduction: how cells sense their external and internal environment and make decisions. We will begin with some background and describe the informal models and reasoning often used by biologists. We will describe the PL representation of cellular signaling systems as rewriting logic specifications (using the Maude language). We will explain how knowledge is curated as formal objects, called datums, representing experimental findings, and the logic used to infer rewrite rules from datums. We will then introduce the Pathway Logic Assistant (PLA) a tool for interacting with PL knowledge bases. Using PLA one can search a knowledge base or assemble and visualize a model. Once a model is assembled one can explore its structure or ask questions such as `how can a given state be reached?' (the answer is an execution pathway) or `what if I remove this or add that?'. PLA treats signaling models as models of (tiny) distributed systems and using formal techniques such as forward/backward collection, search, and model checking to answer questions. We will briefly look under the hood of PLA to see how reflection is used to enable Maude to be part of an interactive system. Reflection is also used to manage multiple representations of the knowledge base and derived models for export/import to integrate with other tools and knowledge bases, for example graph drawing tools or special purpose model checkers.

The features of PL and PLA will be illustrated with substantial case studies.

* Sam Owre and Natarajan Shankar (SRI International Computer Science Laboratory):  
Specification, Verification, and Interactive Proof  
**Abstract**: Formalization plays a key role in computing in disciplines ranging from hardware and distributed computing to programming languages and hybrid systems. In this course, we explore the use of SRI's Prototype Verification System (PVS)[http://pvs.csl.sri.com] in formal specification and interactive proof construction. PVS and other proof assistants like ACL2, Coq, HOL, HOL Light, Isabelle, and Nuprl, have been used to formalize significant tracts of mathematics and verify complex hardware and software systems. In the lectures, we will explore the formalization of both introductory and advanced concepts from mathematics and computing. In the lab sessions, we use PVS to interactively construct proofs and to define new proof strategies.

## Invited Speakers

* Johan van Benthem<sup>[‡](#fn2)</sup> (Stanford/CWI):  
Logic, Games, and Computation  
**Abstract**: Logic and human agency form a natural field of investigation, and have done so ever since logic started. Influences from many disciplines meet at this interface today, ranging from philosophy to computer science, economics, and cognitive science. I will discuss some major current themes in logic and agency, using games as a unifying paradigm. I will give examples of how logic can be used to analyze games, but also how games can be used to analyze logic, and finally, how both directions connect with the foundations of computation. I end with some basic open problems that face us in this setting.
* Cindy Rubio Gonzalez (UC Davis):  
Floating-Point Precision Tuning Using Blame Analysis  
**Abstract**:
* Maria Paola Bonacina (Università degli Studi di Verona):  
Ordering-based Strategies for Theorem Proving  
**Abstract**: After a brief presentation of automated reasoning as a field of computer science, the lecture focuses on first-order logic as a machine-oriented language and surveys ordering-based strategies for first-order theorem proving. It covers some of the basic building blocks of a theorem prover, illustrating both inference and search aspects, and conveying that reasoning is about ignoring what is redundant as much as it is getting what is relevant.

* * *

<sup id="fn1">† Alessandro Cimatti is unable to lecture at the summer school. Professor Stefano Tonetta (FBK Italy) has kindly agreed to take his place.[↩](#ref1 "Go back")</sup>

<sup id="fn2">‡ Professor Sol Feferman is unable to present a lecture. We are pleased to announce that Professor Johan van Benthem (Amsterdam and Stanford) has kindly agreed to lecture in his place.[↩](#ref2 "Go back")</sup>

* * *

| **Sunday**| **Shankar/Lengrand: Speaking Logic** |
|---------------|--------------------------------------|
| 8.30 - 10 | lecture  |
| 10.30 - 12| lecture  |
| 1 - 2.15  | lecture  |
| 2.45 - 4  | lecture  |
| 4.15 - 5.30   | lecture  |
| **Monday**|  |
| 8.30 - 10 | Filliatre|
| 10.30 - 12| Cimatti  |
| 1 - 2 | Invited Talk: Johan van Benthem  |
| 2.30 - 4  | Barrett  |
| 4 - 5.30  | Owre |
| **Tuesday**   |  |
| 8.30 - 10 | Cimatti  |
| 10.30 - 12| Talcott  |
| 1 - 2.30  | Filliatre|
| 3.00 - 4.15   | lab (Shankar1a/Barrett1b)|
| 4.15 - 5.30   | lab (Cimatti1a/Fillatre1b)   |
| **Wednesday** |  |
| 8.30 - 10 | Talcott  |
| 10.30 - 12| Barrett  |
| 1 - 2.15  | lab (Talcott1a/Cimatti1b)|
| 2.45 - 4  | lab (Talcott1b/Barrett1a)|
| 4.15 - 5.30   | lab (Filliatre1a/Shankar1b)  |
| **Thursday**  |  |
| 8.30 - 10 | Shankar  |
| 10.30 - 12| Invited Talk: Maria Paola Bonacina   |
| 1 - 2.15  | lab (Filliatre2a/Barrett2b)  |
| 2.45 - 4  | lab (Talcott2a/Cimatti2b)|
| 4.15 - 5.30   | lab (Talcott2b/Cimatti2a)|
| 6.30 - 9  | Banquet  |
| **Friday**|  |
| 8.30 - 9.30   | Invited Talk: Cindy Rubio Gonzalez   |
| 10 - 11.15| lab (Filliatre2b/Shankar2a)  |
| 11.15 - 12.30 | lab (Barrett2a/Shankar2b)|

* * *

Information about previous Summer Schools on Formal Techniques can be found at

*   [SSFT15](http://fm.csl.sri.com/SSFT14)
*   [SSFT14](http://fm.csl.sri.com/SSFT14)
*   [SSFT13](http://fm.csl.sri.com/SSFT13)
*   [SSFT12](http://fm.csl.sri.com/SSFT12)
*   [SSFT11](http://fm.csl.sri.com/SSFT11)

* * *

Questions on any aspect of the school can be posted [here](http://fm-wiki.csl.sri.com/index.php/Questions).