
# survata-corona-plugin

# survata.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [library][api.type.library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          survata
> __Sample code__       
> __See also__          
> __Availability__      Starter, Pro, Enterprise
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The survata plugin enables Survata survey walls to be added to your applications which offer content as affiliates.

## Sign Up

To use the Survata service, please [sign up](http://www.survata.com/) for an account.

## Platforms

* Android: Yes
* iOS: No
* Mac: No
* Win: No
* Kindle: No
* NOOK: No

## Syntax

	local survata = require "plugin.survata"

## Functions

#### [survata.init()][plugin.survata.init]

#### [survata.show()][plugin.survata.show]

## Project Settings

### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.survata"] =
		{
			-- required
			publisherId = "com.survata",
		},
	},		
}
``````

### Enterprise

TBD

## Sample Code

You can access sample code [here](SAMPLE_CODE_URL).

## Support

More support is available from the Survata team:

* [E-mail](mailto://jazz@survata.com)
* [Forum](http://forum.coronalabs.com/plugin/survata)
* [Plugin Publisher](http://www.survata.com)


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
