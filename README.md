# DocPad Sitemap Plugin

This DocPad plugin will automatically generate a valid `sitemap.xml` file for search engines. It's merely a wrapper for the [sitemap.js](https://github.com/ekalinin/sitemap.js) library.

To learn more about sitemap.xml files, read [the protocol](http://www.sitemaps.org/).

## Installation

For now manually copy `package.json` and `sitemap.plugin.coffee` into `yoursite/node_modules/docpad-plugin-sitemap`.

To be published on npm soon.

## Dependencies

- [underscore](http://documentcloud.github.com/underscore/). Comes with DocPad.
- [bal-util](https://github.com/balupton/bal-util/). Comes with DocPad.
- [sitemap.js](https://github.com/ekalinin/sitemap.js)

## Usage

For each document, you can specify those metadata :

``` coffee
changfreq: 'always' || 'hourly' || 'daily' || 'weekly' || 'monthly' || 'yearly' || 'never' # Change frequency, defaults to 'weekly'
priority: 0.5 # value between 0.0 and 1.0, defaults to 0.5
```

For the whole site you'll be able to specify thanks to the docpad.cson file :

``` coffee
hostname: 'http://example.com' # Base url of the website, should be changed
cachetime: 600000 # Defaults to 600000 ms = 600 seconds = 5 minutes
```

## Roadmap before considered usable

- Figure out how to distinguish documents from other files (layouts, assets etc.)
- Figure out how to write file to disc properly
- Write tests and make sure the sitemap.xml file is valid


## License

The MIT License (MIT)

Copyright (c) 2012 Khalid Jebbari.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.