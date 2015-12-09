Module: topology-geometry
Synopsis: Line-string geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <line-string> (<geometry>)
  constant slot line-string-coordinates :: <coordinate-sequence>,
    required-init-keyword: coordinates:;
end class <line-string>;

define inline method geometry-coordinates
    (g :: <line-string>)
 => (coordinates :: <coordinate-sequence>)
  g.line-string-coordinates
end method geometry-coordinates;

define inline method empty?
    (g :: <line-string>)
 => (empty? :: <boolean>)
  empty?(g.line-string-coordinates)
end method empty?;

define inline method closed?
    (g :: <line-string>)
 => (closed? :: <boolean>)
  ~empty?(g) &
   begin
    let cs = g.line-string-coordinates;
    cs.first == cs.last
   end
end method closed?;
