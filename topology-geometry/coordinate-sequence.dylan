Module: topology-geometry
Synopsis: Coordinate implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <coordinate-sequence> (<sequence>)
  constant slot coordinate-data :: limited(<vector>, of: <double-float>),
    required-init-keyword: coordinates:;
end class <coordinate-sequence>;

define sealed domain make(singleton(<coordinate-sequence>));
define sealed domain initialize(<coordinate-sequence>);

define inline sealed method size
    (cs :: <coordinate-sequence>)
 => (size :: <integer>)
  size(cs.coordinate-data)
end method size;

define sealed method element
    (cs :: <coordinate-sequence>, index :: <integer>,
     #key default = unsupplied())
 => (result :: <double-float>)
  if (element-range-check(index, size(cs)))
    element-no-bounds-check(cs, index)
  else
    if (unsupplied?(default))
      element-range-error(cs, index)
    else
      default
    end if
  end if
end method;

define sealed method element-no-bounds-check
    (cs :: <coordinate-sequence>, index :: <integer>, #key default)
 => (res :: <double-float>)
  cs.coordinate-data[index]
end method;

define sealed method as
    (class == <coordinate-sequence>,
     data :: <sequence>)
 => (cs :: <coordinate-sequence>)
  if (modulo(data.size, 3) ~= 0)
    error("Coordinate data length must be a multiple of 3.");
  end if;
  let cs = make(limited(<vector>, of: <double-float>, size: data.size));
  for (v in data, idx from 0)
    cs[idx] := as(<double-float>, v);
  end;
  make(<coordinate-sequence>, coordinates: cs);
end method as;

define inline method xy-coordinates
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>, y :: <double-float>)
  let idx = idx * 3;
  values(cs[idx],
         cs[idx + 1])
end method xy-coordinates;

define inline method xyz-coordinates
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>, y :: <double-float>, z :: <double-float>)
  let idx = idx * 3;
  values(cs[idx],
         cs[idx + 1],
         cs[idx + 2])
end method xyz-coordinates;

define inline method x-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (x :: <double-float>)
  let idx = idx * 3;
  cs[idx]
end method x-coordinate;

define inline method y-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (y :: <double-float>)
  let idx = idx * 3;
  cs[idx + 1]
end method y-coordinate;

define inline method z-coordinate
    (cs :: <coordinate-sequence>, idx :: <integer>)
 => (z :: <double-float>)
  let idx = idx * 3;
  cs[idx + 2]
end method z-coordinate;

define inline method concatenate-coordinates
    (first-seq :: <coordinate-sequence>,
     #rest rest-seqs :: <coordinate-sequence>)
 => (result-seq :: <coordinate-sequence>)
  let cs
    = apply(concatenate-as, limited(<stretchy-vector>, of: <double-float>),
            first-seq, rest-seqs);
  as(<coordinate-sequence>, cs)
end method concatenate-coordinates;
