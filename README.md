## Why Geomoded?

Unlike previous mod loaders, which merely inject the DLLs and let devs handle the rest, Geomoded aims to be a more comprehensive project that provides all the tools needed for creating mods in one package.

Geomoded's goal is to solve **mod incompatibility** - to ensure that mods work together without buttons getting misplaced or hooks mysteriously disappearing.

## "Hello World!" Example

Here's a **Hello World** mod in Geomoded:

```cpp
#include <Geomoded/Bindings.hpp>
#include <Geomoded/modify/MenuLayer.hpp>

using namespace Geomoded::prelude;

class $modify(MenuLayer) {
	void onMoreGames(CCObject*) {
		FLAlertLayer::create(
			"Geomoded",
			"Hello World from my Custom Mod!",
			"OK"
		)->show();
	}
};
```

This code modifies what happens when the "More Games" button is clicked on the home scene in Geometry Dash, showing a custom popup.

## Documentation

Detailed documentation, tutorials, and installation instructions on using Geomoded can be found [here](https://docs.Geomoded-sdk.org).

New to modding GD? Geomoded's documentation also comes with a handy [tutorial book](https://docs.Geomoded-sdk.org/#/handbook/chap0) that explains all the basics of GD modding!

## Contribution

You can contribute to Geomoded by opening a [Pull Request](https://github.com/Geomoded-sdk/Geomoded/pulls)! Please follow the contribution guidelines.

## Questions, help, etc.

If you have any further questions, need help, or just want to share your love for catgirls, be sure to join [our Discord server](https://discord.gg/9e43WMKzhp)!
