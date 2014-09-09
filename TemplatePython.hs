-- Change 'IVIScriptTemplate' to the name of the script directory you want.
-- Change 'Template' to the name of this sourcefile
{-|
Module      : Scripts.IVIScriptTemplate.TemplatePython
Description : A template script
-}
module Scripts.IVIScriptTemplate.TemplatePython where

import           Script

-- | A description of the workings of the script.
executePython :: IVIScriptArgs -> IO IVIScriptResult
executePython args = do

    -- implement script here

    return Success
