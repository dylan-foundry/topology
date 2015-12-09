Module: topology-geometry
Synopsis: Point geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <point> (<geometry>)
  constant slot point-coordinates :: <coordinate-sequence>,
    required-init-keyword: coordinates:;
end class <point>;

define inline method geometry-coordinates
    (p :: <point>)
 => (coordinates :: <coordinate-sequence>)
  p.point-coordinates
end method geometry-coordinates;
