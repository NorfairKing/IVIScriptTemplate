-- Change 'IVIScriptTemplate' to the name of the script directory you want.
-- Change 'Template' to the name of this sourcefile
module Scripts.IVIScriptTemplate.Template where

import Script

-- | A description of the workings of the script.
execute :: IVIScriptArgs -> IO IVIScriptResult
execute args = do

    -- implement script here

    return Success
