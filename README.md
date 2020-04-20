# Descending sort in Haskell

Here are the benchmarks from [Roman Cheplyaka's nice article](https://ro-che.info/articles/2016-04-02-descending-sort-haskell), extended with `reverse . sort` and `sortWith`.

See also this related [hlint hint discussion](https://github.com/ndmitchell/hlint/issues/669).

For typical (newtype-based) sorting, the fastest is sortBy (or sortWith).
