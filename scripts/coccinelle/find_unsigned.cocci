// Copyright (C) 2019 Network RADIUS SAS.  Licenced under CC-by-NC 4.0.
// Development of this scripts was sponsored by Network RADIUS SAS.
// Author: Jorge Pereira (jpereira@freeradius.org)
// Confidence: High
// Comments: A variable that is declared as unsigned should not be tested
// to be less than

@u@
type T;
unsigned T i;
position p;
@@

 i@p < 0

@script:python@
p << u.p;
i << u.i;
@@

coccilib.report.print_report(p[0], "WARNING: Reference to unsigned")
