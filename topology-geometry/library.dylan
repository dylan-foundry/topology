Module: dylan-user

define library topology-geometry
  use common-dylan;

  export topology-geometry;
end library topology-geometry;

define module topology-geometry
  use common-dylan;

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
end module topology-geometry;
