
-- | This file gives a list of example rules that the players can submit.
module Nomyx.Library.PlayerManagement where

import Control.Monad
import Nomyx.Language

-- | kick a player and prevent him from returning
banPlayer :: PlayerNumber -> Rule
banPlayer pn = do
   delPlayer pn
   void $ onEvent_ (playerEvent Arrive) $ const $ void $ delPlayer pn--- | kick a player and prevent him from returning

-- | allow rule only if balance > threshold
allowRule :: Int -> Rule
allowRule ts = do
    onRuleProposed $ \r -> do
        balance <- getBalance $ _rProposedBy r
        let lowBalance = ((< ts) <$> balance) == (Just True)
        when lowBalance
            (suppressRule_ $ _rNumber r)
