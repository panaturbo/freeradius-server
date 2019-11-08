// Copyright (C) 2019 Network RADIUS SAS.  Licenced under CC-by-NC 4.0.
// Development of this scripts was sponsored by Network RADIUS SAS.
// Author: Jorge Pereira (jpereira@freeradius.org)
// Confidence: High
// Comments: Fix use of ARRAY_SIZE instead of random sizeof(T)/sizeof(E)
// Options: --no-includes

@@
type E;
E[] T;
@@
(
-sizeof(T)/sizeof(E)
+ARRAY_SIZE(T)
|
-sizeof(T)/sizeof(*T)
+ARRAY_SIZE(T)
|
-sizeof(T)/sizeof(T[...])
+ARRAY_SIZE(T)
)
