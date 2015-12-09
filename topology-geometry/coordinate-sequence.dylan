Module: topology-geometry
Synopsis: Coordinate implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <coordinate-sequence> (<sequence>)
  constant repeated slot coordinate-data :: <double-float>,
    init-keyword: data:,
    size-getter: size,
    size-init-keyword: size:,
    size-init-value: 0;
end class <coordinate-sequence>;

define inline method xy-coordinates
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>, y :: <double-float>)
  let idx = idx * 3;
  values(coordinate-data(cs, idx),
         coordinate-data(cs, idx + 1))
end method xy-coordinates;

define inline method xyz-coordinates
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>, y :: <double-float>, z :: <double-float>)
  let idx = idx * 3;
  values(coordinate-data(cs, idx),
         coordinate-data(cs, idx + 1),
         coordinate-data(cs, idx + 2))
end method xyz-coordinates;

define inline method x-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>)
  let idx = idx * 3;
  coordinate-data(cs, idx)
end method x-coordinate;

define inline method y-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (y :: <double-float>)
  let idx = idx * 3;
  coordinate-data(cs, idx + 1)
end method y-coordinate;

define inline method z-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (z :: <double-float>)
  let idx = idx * 3;
  coordinate-data(cs, idx + 2)
end method z-coordinate;
