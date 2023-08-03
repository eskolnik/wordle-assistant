# Wordle Assistant

A tool for Wordle score-hunters to avoid guessing past solutions.

## Usage
Create a new bookmark by dragging 
<a href="javascript:(async()=>{const DATA_URL='https://wordle-assistant.onrender.com/';const rows=Array.from(document.getElementsByClassName('Row-module_row__pwpBq'));function rowTiles(row){return Array.from(row.getElementsByClassName('Tile-module_tile__UWEHN'))}function setWarning(rowNumber){rowTiles(rows[rowNumber]).map(tile=>tile.setAttribute('style','background: firebrick'))}function clearWarning(){rows.map(row=>{rowTiles(row).map(tile=>tile.setAttribute('style',''))})}function rowWord(rowTiles){return rowTiles.map(elt=>elt.innerHTML).join('')}const words=()=>rows.map(rowTiles).map(rowWord);const pastWords=await fetch(DATA_URL).then(data=>data.json());let state={warning:false};const checkRepeat=()=>{const currentRow=words().indexOf('')-1;if(currentRow===-1){currentRow=5}const currentWord=words()[currentRow];if(currentWord.length>=5&&pastWords.includes(currentWord)){if(state.warning){return}setWarning(currentRow);state.warning=true}else{clearWarning();state.warning=false}};setInterval(checkRepeat,500)})()">This Link</a>
to your bookmarks bar. Navigate to the Wordle site and click that bookmark. If you subsequently attempt to enter a previously-used word, it will be highlighted in red.

Alternatively, you can create a new bookmark and paste in the contents of the [bookmarklet](/bookmarklet.js) file.

## Build
Install Rails dependencies with `bundle install`

Run the dev server with `rails s`

Re-build the bookmarklet JS script with `rake build_bookmarklet`

## Dependencies

This service is incredible brittle and depends entirely on an external data source (Rock Paper Shotgun) for its data. The bookmarklet script further depends on specific markup elements on the Wordle page itself. The tool could break at any time for a wide array of reasons, and I have no commitment to keeping it updated. Use at your own risk.

It should also be noted that (as far as I know) the folks at the NYT haven't confirmed that Wordle solutions won't repeat.
