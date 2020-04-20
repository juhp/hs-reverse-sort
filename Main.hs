import Criterion
import Criterion.Main
import Data.List(sort, sortBy, sortOn)
import Data.Ord
import GHC.Exts(sortWith)

list :: [Int]
list = [1..10000]

main = defaultMain
  [ bench "sort"   $ nf sort (reverse list)
  , bench "reverse . sort" $ nf (reverse . sort) list
  , bench "sortBy" $ nf (sortBy (comparing Down)) list
  , bench "sortOn" $ nf (sortOn Down) list
  , bench "sortWith" $ nf (sortWith Down) list
  ]
