# Wordle Assistant

A tool for Wordle score-hunters to avoid guessing past solutions.

## Usage
### Desktop
Create a new bookmark and paste in the contents of the [bookmarklet](/bookmarklet.js) file. Navigate to the Wordle site and click that bookmark. If you subsequently attempt to enter a previously-used word, it will be highlighted in red.
### Mobile
On most mobile browsers, using the bookmarks menu will not work - the browser won't execute the script in the context of the page you were on. Additionally, it is not usually possible to create a new bookmark with JS as the target. 

You will need to create the bookmarklet by bookmarking an arbitrary site, and then editing that bookmark to paste in the contents of the [bookmarklet](/bookmarklet.js) file. You will also need to edit the name of the bookmark to be a string that doesn't match any English words, such the browser's auto-suggest feature will prioritize it over any other options, but still memorable enough that you can type it out from memory. For example, I use "WoHe" (short for Wordle Helper).
 
In order to use the script, navigate to the wordle site, then enter your bookmark's name in the url bar and click the bookmark when it shows up in the list of suggestions. 

## Build
Install Rails dependencies with `bundle install`

Run the dev server with `rails s`

Re-generate the bookmarklet JS script with `rake build_bookmarklet` (generates `bookmarklet_dev.js` by default, pointed at localhost:3000)

## Dependencies

This service is incredible brittle and depends entirely on an external data source (Rock Paper Shotgun). The bookmarklet script further depends on specific class names and element structure on the Wordle page itself. It could break at any time, for any of a host of reasons, and I am not committed to keeping it updated.