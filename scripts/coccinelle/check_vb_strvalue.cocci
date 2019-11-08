// Copyright (C) 2019 Network RADIUS SAS.  Licenced under CC-by-NC 4.0.
// Development of this scripts was sponsored by Network RADIUS SAS.
// Author: Jorge Pereira (jpereira@freeradius.org)
// Confidence: High
// Comments: Fix use of vb_strvalue
// Options: --no-includes

@r1_heap@
struct mydata *SMD;
format F =~ "s";
expression f;
@@
-f("%@F@", SMD->name);
+f("%m", SMD);

@r1_stack@
struct mydata SMD;
format F =~ "s";
expression f;
@@
-f("%@F@", SMD.name);
+f("%m", &SMD);
