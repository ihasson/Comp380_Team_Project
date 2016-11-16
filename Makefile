JCC = javac
JFLAG = -g

#default: 
AIAI.class: AIAI.java Course.class
	$(JCC) AIAI.java

AIUnitTests.class: AIUnitTests.java AIAI.class 
	$(JCC) AIUnitTests.java

test-AI: AIUnitTests.class AIAI.class
	java AIUNitTests 

Course.class: Course.java
	$(JCC) Course.java

Section.class: Section.java Course.class
	$(JCC) Section.java

Planner.class: Planner.java
	$(JCC) Planner.java

format: 
	uncrustify -c uncrustify.cfg Course.java --no-backup
documentation: AIAI.java Section.java Planner.java Course.java  
	javadoc -d documentation *java
clean:
	$(RM) *.class
