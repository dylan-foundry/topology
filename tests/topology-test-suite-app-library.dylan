module: dylan-user

define library topology-test-suite-app
  use testworks;
  use topology-geometry-test-suite;
end library;

define module topology-test-suite-app
  use testworks;
  use topology-geometry-test-suite;
end module;
