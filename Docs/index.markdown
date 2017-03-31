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
