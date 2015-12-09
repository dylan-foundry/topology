Module: topology-geometry
Synopsis: Envelope (bounding box) implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <envelope> (<object>)
  constant slot envelope-bounds :: <coordinate-sequence>,
    required-init-keyword: bounds:;
end class <envelope>;

define inline function envelope-min
    (e :: <envelope>)
 => (x :: <double-float>, y :: <double-float>, z :: <double-float>)
  xyz-coordinates(e.envelope-bounds, 0)
end;

define inline function envelope-max
    (e :: <envelope>)
 => (x :: <double-float>, y :: <double-float>, z :: <double-float>)
  xyz-coordinates(e.envelope-bounds, 1)
end;
