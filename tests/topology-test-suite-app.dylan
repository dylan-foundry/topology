module: topology-test-suite-app

define suite all-topology-test-suites ()
  suite topology-geometry-test-suite;
end;

run-test-application(all-topology-test-suites);
