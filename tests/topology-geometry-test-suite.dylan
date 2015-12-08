module: topology-geometry-test-suite
synopsis: Test suite for the topology-geometry library.

define test example-test ()
  assert-true(#t);
end test example-test;

define suite topology-geometry-test-suite ()
  test example-test;
end suite;
