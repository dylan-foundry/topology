Module: topology-geometry
Synopsis: Base, abstract geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define abstract class <geometry> (<object>)
end class <geometry>;

define generic geometry-dimension
    (g :: <geometry>)
 => (geometry-dimension :: <integer>);

define generic coordinate-dimension
    (g :: <geometry>)
 => (coordinate-dimension :: <integer>);

define generic simple?
    (g :: <geometry>)
 => (simple? :: <boolean>);

define generic is-3d?
    (g :: <geometry>)
 => (is-3d? :: <boolean>);

define generic measured?
    (g :: <geometry>)
 => (measured? :: <boolean>);

/* Query */

define generic disjoint?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (disjoint? :: <boolean>);

define generic intersects?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (intersects? :: <boolean>);

define generic touches?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (touches? :: <boolean>);

define generic crosses?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (crosses? :: <boolean>);

define generic within?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (within? :: <boolean>);

define generic contains?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (contains? :: <boolean>);

define generic overlap?
    (g1 :: <geometry>, g2 :: <geometry>)
 => (overlap? :: <boolean>);
