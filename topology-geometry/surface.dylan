Module: topology-geometry
Synopsis: Surface geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define abstract class <surface> (<geometry>)
end class <surface>;

define generic surface-area
    (s :: <surface>)
 => (area :: <double-float>);
