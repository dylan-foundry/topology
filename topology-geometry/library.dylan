Module: dylan-user

define library topology-geometry
  use common-dylan;

  export topology-geometry;
end library topology-geometry;

define module topology-geometry
  use common-dylan;

  export <coordinate-sequence>,
         xy-coordinates,
         xyz-coordinates,
         x-coordinate,
         y-coordinate,
         z-coordinate;

  export <envelope>,
         envelope-max,
         envelope-min;

  export <geometry>,
         geometry-dimension,
         coordinate-dimension,
         simple?,
         is-3d?,
         measured?,
         disjoint?,
         intersects?,
         touches?,
         crosses?,
         within?,
         contains?,
         overlap?;

  export <point>;

  export <line-string>,
         line-string-coordinates,
         closed?;

  export <linear-ring>;

  export <linear-ring-vector>;

  export <surface>,
         surface-area;

  export <polygon>,
         polygon-shell,
         polygon-holes;
end module topology-geometry;
