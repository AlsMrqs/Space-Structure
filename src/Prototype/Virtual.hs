module Prototype.Virtual where

import qualified Space as Space

-- [!] Delta :: (Space.Coord a) => b -> a

data X = X
data Y = Y
data Z = Z

type Delta = (Double,Double)

data Command = Copy 
    { x :: Delta
    , y :: Delta
    , z :: Delta
    , o :: Space.Point }

-- [!] Memory:
data Virtual a = Virtual -- Monad.State [?]
    { upload   :: a -> Virtual a 
    , download :: [Command] -> [Virtual a]
    }
    
-- [!] script :: String -> Maybe [Command] -- [!] Outside function

-- State 

-- [!] todo: algorítmo de busca em Grafo

