Module: topology-geometry
Synopsis: Polygon geometry implementation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <polygon> (<surface>)
  constant slot polygon-shell :: <linear-ring>,
    required-init-keyword: shell:;
  constant slot polygon-holes :: <linear-ring-vector>,
    required-init-keyword: holes:;
end class <polygon>;
