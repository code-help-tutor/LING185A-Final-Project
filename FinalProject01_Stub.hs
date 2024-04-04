WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
module FinalProject01 where

import Control.Applicative(liftA, liftA2, liftA3)
import Data.List

import CFGParsing

bottomUp :: (Eq nt, Eq t) => CFG nt t -> [t] -> [[ParseStep nt t]]
bottomUp cfg input =
  let (nts, ts, start, rules) = cfg in
  let startingConfig = ([], input) in
  let goalConfig = ([NoBar start], []) in
  parser [shift, reduce] rules startingConfig goalConfig
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- IMPORTANT: Please do not change anything above here.
--            Write all your code below this line.
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- These functions are placeholders to work with 'bottomUp' in Part 1.3. 
-- You should replace 'undefined' in these functions with your own code.

shift :: (Eq nt, Eq t) => [RewriteRule nt t] -> Config nt t -> [ParseStep nt t]
shift = undefined

reduce :: (Eq nt, Eq t) => [RewriteRule nt t] -> Config nt t -> [ParseStep nt t]
reduce = undefined

parser :: (Eq nt, Eq t)
       => [[RewriteRule nt t] -> Config nt t -> [ParseStep nt t]]
          -- ^ List of transition steps. ^
       -> [RewriteRule nt t]  -- Rules from the CFG.
       -> Config nt t         -- Starting configuration.
       -> Config nt t         -- Goal configuration.
       -> [[ParseStep nt t]]  -- List of possible parses.
parser = undefined