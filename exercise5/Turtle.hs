module Turtle where

import Geometry
import Generate

data Turtle = Turtle Point Direction PenState
    deriving Show

data PenState = PenUp | PenDown
    deriving Show

startTurtle :: Turtle
startTurtle = Turtle origin North PenUp

location :: Turtle -> Point
location (Turtle pos dir pen) = pos

data Command = TurnLeft | TurnRight | Move Int | LiftPen | LowerPen
    deriving Show

action :: Turtle -> Command -> Turtle
action (Turtle pos dir pen) TurnLeft  = Turtle pos (turnLeft dir)  pen
action (Turtle pos dir pen) TurnRight = Turtle pos (turnRight dir) pen
action (Turtle pos dir pen) (Move n)  =
    Turtle (plusPoint pos (timesPoint n (oneStep dir))) dir pen
action (Turtle pos dir _) LiftPen     =
    Turtle pos dir PenUp
action (Turtle pos dir _) LowerPen    =
    Turtle pos dir PenDown

genCommand :: Int -> Command
genCommand n
    | r == 0 = TurnLeft
    | r == 1 = TurnRight
    | r == 2 = LiftPen
    | r == 3 = LowerPen
    | otherwise = Move (r - 3)
    where
        r = n `mod` 11

genCommands :: Int -> [Command]
genCommands seed = map genCommand (generate seed)
