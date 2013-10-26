# App Skeleton

Powered by [Sinatra](https://github.com/sinatra/sinatra), [AngularJS](http://angularjs.org/), [Sass](http://sass-lang.com/), [Guard Livereload](https://github.com/guard/guard-livereload) and [Guard Shotgun](https://github.com/rchampourlier/guard-shotgun) for smooth workflow.

[Sinatra AssetPack](https://github.com/rstacruz/sinatra-assetpack) is used for asset management. Use any of the following: CoffeeScript, Javascript, Sass, CSS. Images in CSS are also processed by AssetPack (add `?embed` to embed in CSS).

## Usage

Run `bundle` and `bower install` to get all dependencies.

Run `guard` to start development server. It will automatically refresh corresponding files when you make changes so you don't need to switch to your browser.

To preview production run `foreman start`.
