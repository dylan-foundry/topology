Module: topology-geometry
Synopsis: Linear-ring geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <linear-ring> (<line-string>)
end class <linear-ring>;

define constant <linear-ring-vector>
  = limited(<vector>, of: <linear-ring>);
