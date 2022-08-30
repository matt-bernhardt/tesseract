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
