module: topology-geometry-test-suite
synopsis: Test suite for <coordinate-sequence>.

define test empty-coordinates-construction-test ()
  let cs = as(<coordinate-sequence>, #[]);
  assert-equal(cs.size, 0);
end test empty-coordinates-construction-test;

define test coordinates-construction-test ()
  let cs = as(<coordinate-sequence>, #[0.0d0, 0.0d0, 0.0d0]);
  assert-equal(cs.size, 3);
end test coordinates-construction-test;

define test data-conversion-coordinates-construction-test ()
  let cs = as(<coordinate-sequence>, #[0, 0.0, 0.0s0]);
  assert-equal(cs.size, 3);
end test data-conversion-coordinates-construction-test;

define test invalid-length-coordinates-construction-test ()
  assert-signals(<error>, as(<coordinate-sequence>, #[0.0d0]));
end test invalid-length-coordinates-construction-test;

define test invalid-data-coordinates-construction-test ()
  assert-signals(<error>, as(<coordinate-sequence>, "abc"));
end test invalid-data-coordinates-construction-test;

define test coordinate-access-test ()
  let cs = as(<coordinate-sequence>, #[1, 2, 3, 4, 5, 6]);
  assert-equal(1.0d0, x-coordinate(cs, 0));
  assert-equal(2.0d0, y-coordinate(cs, 0));
  assert-equal(3.0d0, z-coordinate(cs, 0));
  assert-equal(4.0d0, x-coordinate(cs, 1));
  assert-equal(5.0d0, y-coordinate(cs, 1));
  assert-equal(6.0d0, z-coordinate(cs, 1));
  assert-equal(1.0d0, begin
                        let (x, y) = xy-coordinates(cs, 0);
                        x
                      end);
  assert-equal(2.0d0, begin
                        let (x, y) = xy-coordinates(cs, 0);
                        y
                      end);
  assert-equal(1.0d0, begin
                        let (x, y, z) = xyz-coordinates(cs, 0);
                        x
                      end);
  assert-equal(2.0d0, begin
                        let (x, y, z) = xyz-coordinates(cs, 0);
                        y
                      end);
  assert-equal(3.0d0, begin
                        let (x, y, z) = xyz-coordinates(cs, 0);
                        z
                      end);
end test coordinate-access-test;

define test concatenate-coordinates-test ()
  let cs1 = as(<coordinate-sequence>, #[1, 2, 3]);
  let cs2 = as(<coordinate-sequence>, #[4, 5, 6]);
  let cs3 = as(<coordinate-sequence>, #[7, 8, 9]);
  let cs = concatenate-coordinates(cs1, cs2, cs3);
  assert-equal(9, cs.size);
  for (c in cs, index from 1)
    assert-equal(as(<double-float>, index), c);
  end for;
end test concatenate-coordinates-test;

define suite coordinate-sequence-test-suite ()
  test empty-coordinates-construction-test;
  test coordinates-construction-test;
  test data-conversion-coordinates-construction-test;
  test invalid-length-coordinates-construction-test;
  test invalid-data-coordinates-construction-test;
  test coordinate-access-test;
  test concatenate-coordinates-test;
end suite;
