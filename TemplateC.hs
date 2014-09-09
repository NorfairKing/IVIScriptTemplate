{-# LANGUAGE TemplateHaskell #-}

-- Change 'IVIScriptTemplate' to the name of the script directory you want.
-- Change 'Template' to the name of this sourcefile
{-|
Module      : Scripts.IVIScriptTemplate.TemplateC
Description : A template script to interface with C
-}
module Scripts.IVIScriptTemplate.TemplateC where

import           Data.Functor
import           Language.Haskell.TH
import           Script
import           System.Directory
import           System.FilePath.Posix
import           System.Process

-- | A description of the workings of the script.
execute :: IVIScriptArgs -> IO IVIScriptResult
execute _ = do

    ph1 <- runCommand $ "cd " ++ here ++ " && make >/dev/null"
    _ <- waitForProcess ph1
    ph2 <- runCommand bin
    _ <- waitForProcess ph2

    return Success

    where
        bin = here </> "template.bin"

here :: FilePath
here = takeDirectory $(do
    dir <- runIO getCurrentDirectory
    filename <- loc_filename <$> location
    litE $ stringL $ dir </> filename)
