module Prototype.Ambient where

import qualified Control.Monad.State as State
import qualified Data.Map as Map

import qualified Structure.Graph as Graph
import qualified Space

import qualified Prototype.Virtual as Virtual
import qualified Prototype.Game as Game

-- data Ambient = Ambient
--     { Positive :: Space.Point Player
--     , Negative :: Space.Point Player
--     } deriving (Show)

newtype Circunference = Circunference { radius :: Double }
newtype Ecliptic = Ecliptic { angle :: Double }

data Team a = Team { group :: Graph.Graph a }

data Player = Player 
    { username   :: String 
    , experience :: Double }
    -- [!] , coord    :: Space.Point } {?}

-- instance (Space.Coord a) => Space.Coord (Player a) where
--     coord :: Space.Axis -> (Player a) -> Double
--     coord Player = -- [!] Implement (Player attributes)


