# survata.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [survata.*][plugin.survata]
> __Return value__      [nil][api.type.nil]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          
> __Sample code__       
> __See also__          
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Show a Survata Survey, should only be called after initialization.

## Syntax

	survata.show(listener)

##### listener ~^(required)^~
_[Listener][api.type.Listener]._ Survey wall statys listener, which returns status of survey wall availability, result of survey and user actions.
Possible status return values: completed,skipped,cancelled,credit earned,no survey available,network not available

## Examples

``````lua
local survata = require("plugin.survata")
survata.init("a152f0c5-0ba4-4b3e-8a0a-07ec9f96c5fd",surveyListener)
survata.show(listener) -- called after survata sdk initialized
``````