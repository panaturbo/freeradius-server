// Copyright (C) 2019 Network RADIUS SAS.  Licenced under CC-by-NC 4.0.
// Development of this scripts was sponsored by Network RADIUS SAS.
// Author: Jorge Pereira (jpereira@freeradius.org)
// Confidence: High
// Comments: Fix semantic parentheses
// Options: --no-includes --include-headers

@@
expression E;
constant C;
@@
- !E & C
+ !(E & C)
