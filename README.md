# Wordle Assistant

A tool for Wordle score-hunters to avoid guessing past solutions.

## Usage
Create a new bookmark and paste in the contents of the [bookmarklet](/bookmarklet.js) file. Navigate to the Wordle site and click that bookmark. If you subsequently attempt to enter a previously-used word, it will be highlighted in red.

## Build
Install Rails dependencies with `bundle install`

Run the dev server with `rails s`

Re-build the bookmarklet JS script with `rake build_bookmarklet`

## Dependencies

This service is incredible brittle and depends entirely on an external data source (Rock Paper Shotgun) for its data. The bookmarklet script further depends on specific markup elements on the Wordle page itself. The tool could break at any time for a wide array of reasons, and I have no commitment to keeping it updated. Use at your own risk.

It should also be noted that (as far as I know) the folks at the NYT haven't confirmed that Wordle solutions won't repeat.
