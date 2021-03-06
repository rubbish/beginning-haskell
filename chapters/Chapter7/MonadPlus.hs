module Chapter7.MonadPlus where

import Control.Monad

broken1 :: Integer -> [Integer]
broken1 n = [n-1, n+1]

broken2 :: Integer -> [Integer]
broken2 n = [1024, n+2]

-- exercise 7-2. searching with MonadPlus

find_ :: (a -> Bool) -> [a] -> Maybe a
find_ p = msum . map pmaybe
  where pmaybe a = if p a then Just a else Nothing
