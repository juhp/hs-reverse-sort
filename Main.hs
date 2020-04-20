import Criterion (bench, nf)
import Criterion.Main (defaultMain)
import Data.List(sort, sortBy, sortOn)
import Data.Ord (comparing, Down(Down))
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
