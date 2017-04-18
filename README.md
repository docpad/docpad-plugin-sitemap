<!-- TITLE/ -->

<h1>Sitemap Plugin for DocPad</h1>

<!-- /TITLE -->


<!-- BADGES/ -->

<span class="badge-travisci"><a href="http://travis-ci.org/docpad/docpad-plugin-sitemap" title="Check this project's build status on TravisCI"><img src="https://img.shields.io/travis/docpad/docpad-plugin-sitemap/master.svg" alt="Travis CI Build Status" /></a></span>
<span class="badge-npmversion"><a href="https://npmjs.org/package/docpad-plugin-sitemap" title="View this project on NPM"><img src="https://img.shields.io/npm/v/docpad-plugin-sitemap.svg" alt="NPM version" /></a></span>
<span class="badge-npmdownloads"><a href="https://npmjs.org/package/docpad-plugin-sitemap" title="View this project on NPM"><img src="https://img.shields.io/npm/dm/docpad-plugin-sitemap.svg" alt="NPM downloads" /></a></span>
<span class="badge-daviddm"><a href="https://david-dm.org/docpad/docpad-plugin-sitemap" title="View the status of this project's dependencies on DavidDM"><img src="https://img.shields.io/david/docpad/docpad-plugin-sitemap.svg" alt="Dependency Status" /></a></span>
<span class="badge-daviddmdev"><a href="https://david-dm.org/docpad/docpad-plugin-sitemap#info=devDependencies" title="View the status of this project's development dependencies on DavidDM"><img src="https://img.shields.io/david/dev/docpad/docpad-plugin-sitemap.svg" alt="Dev Dependency Status" /></a></span>
<br class="badge-separator" />
<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-gratipay"><a href="https://www.gratipay.com/bevry" title="Donate weekly to this project using Gratipay"><img src="https://img.shields.io/badge/gratipay-donate-yellow.svg" alt="Gratipay donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>
<br class="badge-separator" />
<span class="badge-slackin"><a href="https://slack.bevry.me" title="Join this project's slack community"><img src="https://slack.bevry.me/badge.svg" alt="Slack community badge" /></a></span>

<!-- /BADGES -->


This DocPad plugin will automatically generate a valid `sitemap.xml` file for search engines. It's merely a wrapper for the [sitemap.js](https://github.com/ekalinin/sitemap.js) library.

This project was forked from the solid start made by [Khalid Jebbari](https://github.com/DjebbZ/docpad-plugin-sitemap).

To learn more about sitemap.xml files, read [the protocol](http://www.sitemaps.org/).


<!-- INSTALL/ -->

<h2>Install</h2>

Install this DocPad plugin by entering <code>docpad install sitemap</code> into your terminal.

<!-- /INSTALL -->


## Usage

For each document, you can specify the following metadata:

``` coffee
changefreq: 'always' || 'hourly' || 'daily' || 'weekly' || 'monthly' || 'yearly' || 'never' # Change frequency, defaults to 'weekly'
priority: 0.5 # value between 0.0 and 1.0, defaults to 0.5
sitemap: true || false # defaults to true, if false no entry for this document will be generated
```

For the whole site you can set defaults using the plugin configuration in your docpad.cson or docpad.coffee file.

``` coffee
	templateData:
		site:
			url: "http://your-website-production-url.com"  # required for sitemap

	plugins:
		sitemap:
			cachetime: 600000
			changefreq: 'weekly'
			priority: 0.5
			filePath: 'sitemap.xml'
```


By default all HTML files on your site will be considered for inclusion. To specify a different collection, change the `collectionName` plugin configuration option like so:

``` coffee
	plugins:
		sitemap:
			collectionName: 'someCollectionName'
```


<!-- HISTORY/ -->

<h2>History</h2>

<a href="https://github.com/docpad/docpad-plugin-sitemap/blob/master/HISTORY.md#files">Discover the release history by heading on over to the <code>HISTORY.md</code> file.</a>

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

<h2>Contribute</h2>

<a href="https://github.com/docpad/docpad-plugin-sitemap/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

<h2>Backers</h2>

<h3>Maintainers</h3>

These amazing people are maintaining this project:

<ul><li><a href="http://www.delarre.net">Ben Delarre</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=benjamind" title="View the GitHub contributions of Ben Delarre on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-sitemap">view contributions</a></li></ul>

<h3>Sponsors</h3>

No sponsors yet! Will you be the first?

<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-gratipay"><a href="https://www.gratipay.com/bevry" title="Donate weekly to this project using Gratipay"><img src="https://img.shields.io/badge/gratipay-donate-yellow.svg" alt="Gratipay donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>

<h3>Contributors</h3>

These amazing people have contributed code to this project:

<ul><li><a href="http://www.delarre.net">Ben Delarre</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=benjamind" title="View the GitHub contributions of Ben Delarre on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="https://github.com/apoleshchuk">Anton Poleshchuk</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=apoleshchuk" title="View the GitHub contributions of Anton Poleshchuk on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="https://github.com/brockfanning">brockfanning</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=brockfanning" title="View the GitHub contributions of brockfanning on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://delapouite.com">Bruno Heridet</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=Delapouite" title="View the GitHub contributions of Bruno Heridet on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="https://github.com/DjebbZ">Khalid Jebbari</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=DjebbZ" title="View the GitHub contributions of Khalid Jebbari on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="nathanbowser.com">Nathan Bowser</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=nathanbowser" title="View the GitHub contributions of Nathan Bowser on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://raffomania.github.io">Rafael Epplée</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=raffomania" title="View the GitHub contributions of Rafael Epplée on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://robloach.net">Rob Loach</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=RobLoach" title="View the GitHub contributions of Rob Loach on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="http://phaseone.me">Evan Bovie</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=phaseOne" title="View the GitHub contributions of Evan Bovie on repository docpad/docpad-plugin-sitemap">view contributions</a></li>
<li><a href="https://github.com/vsopvsop">vsopvsop</a> — <a href="https://github.com/docpad/docpad-plugin-sitemap/commits?author=vsopvsop" title="View the GitHub contributions of vsopvsop on repository docpad/docpad-plugin-sitemap">view contributions</a></li></ul>

<a href="https://github.com/docpad/docpad-plugin-sitemap/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /BACKERS -->


<!-- LICENSE/ -->

<h2>License</h2>

Unless stated otherwise all works are:

<ul><li>Copyright &copy; 2012+ <a href="http://www.delarre.net">Ben Delarre</a></li></ul>

and licensed under:

<ul><li><a href="http://spdx.org/licenses/MIT.html">MIT License</a></li></ul>

<!-- /LICENSE -->
