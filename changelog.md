# Tesseract changelog

## 0.1.0

* Output of the command `rails plugin new tesseract --mountable`
* Nothing else. Seriously. This version is probably not usable.

## 0.1.1

* Adding information to gemspec, and this changelog.

## 0.2.0

* Adds sassc to gemspect
* Adds vendor/assets directory with images and stylesheets

## 0.2.1

* Adds precompile step to gem, allowing implementing apps to see
  vendor/assets/images content without having to add them to their own
  manifests.

## 0.2.2

* Adds the libraries-main stylesheet to precompilation in
  /lib/tesseract/engine.rb.

## 0.2.3

* This takes a baby step in the direction of testing for the precompilation,
  but I haven't worked out the syntax yet. So the test is skipped, with a
  long comment talking about the testing intent.

## 0.3.0

Starting to add layout templates, specifically:
* Moves application.html.erb from /app/views/layouts/tesseract/ to
  /app/views/layouts/ (up one directory). It was not loaded in the original
  location.
* Adds the head partial, which is copy-pasted from the original theme gem
  (adding only the new csp_meta_tag directive)
* Adds a skip tag and wrap-page div to the application template.
* Implementing sites are still required to load the libraries-main
  stylesheet on their own, via the `@import` in their own stylesheet, in order
  to take advantage of any SCSS variables defined by this gem.

## 0.3.1

This adds the rest of the layout templates, which are loaded in the body
of the application.

* Because the link helper class has not been introduced yet, the site_nav
  partial has been modified to call the Rails link_to function, rather
  than the nav_link_to function that will come with that helper.

## 0.4.0

This adds the last portion of the theme gem, the Link Helper.

* The link helper provides a single public method, nav_link_to, which is a
  navigation-specific link builder.
* Apps which implement this gem will need to load this helper explicitly in
  their application controller, via:

```
class ApplicationController < ActionController::Base
  helper Tesseract::Engine.helpers
  ...
end
