# survata.init()

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

Initialize the Survata sdk with a publisher ID.

## Syntax

  survata.init( publisherId, listener)
	survata.init( publisherId, listener, testmode )

##### publisherId ~^(required)^~
_[String][api.type.String]._ Your publisher Id from the survata dashboard for your surveys.

##### listener ~^(required)^~
_[Listener][api.type.Listener]._ Survey status listener, which returns status of survey availability.

##### testmode ~^(optional)^~
_[String][api.type.String]._ Enable test mode for testing connectivity to Survata. Pass the string "test" as a value to the init function as the second argument.

## Examples

``````lua
local survata = require("plugin.survata")

survata.init("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",listener) -- Pass in publisher Id and listener
-- or
survata.init("a152f0c5-0ba4-4b3e-8a0a-07ec9f96c5fd",listener,"test") -- Pass in test publisher Id, and set TestMode
``````
