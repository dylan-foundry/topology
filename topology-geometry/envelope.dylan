Module: topology-geometry
Synopsis: Envelope (bounding box) implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <envelope> (<object>)
  constant slot envelope-min :: <coordinate>,
    required-init-keyword: min:;
  constant slot envelope-max :: <coordinate>,
    required-init-keyword: max:;
end class <envelope>;
