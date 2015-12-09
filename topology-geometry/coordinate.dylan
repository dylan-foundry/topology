Module: topology-geometry
Synopsis: Coordinate implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <coordinate> (<object>)
  constant slot coordinate-x :: <double-float>,
    required-init-keyword: x:;
  constant slot coordinate-y :: <double-float>,
    required-init-keyword: y:;
  constant slot coordinate-z :: <double-float>,
    required-init-keyword: z:;
end class <coordinate>;

define constant <coordinate-sequence>
  = limited(<vector>, of: <coordinate>);
