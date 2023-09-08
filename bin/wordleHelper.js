(async () => {
const LOCAL_CACHE_KEY = "WORDLE_HELPER_LOCAL_CACHE_KEY"
const rows = Array.from(document.getElementsByClassName("Row-module_row__pwpBq"));

function getRowTiles(row) {
    return Array.from(row.getElementsByClassName("Tile-module_tile__UWEHN"));
}

function setWarning(rowNumber) {
    getRowTiles(rows[rowNumber])
    .forEach(tile => tile.setAttribute("style", "border: 2px solid firebrick"));
}

function clearWarning(rowNumber) {
    getRowTiles(rows[rowNumber])
    .forEach(tile => tile.setAttribute("style", ""));
}

function getRowWord(tiles) {
    return tiles.map(elt => elt.innerHTML).join("")
}


// get pastwords from localStorage temporarily
const localWords = localStorage.getItem(LOCAL_CACHE_KEY);

let state = {
    pastWordList: localWords
}

// fetch new 
await fetch(DATA_URL).then(data => data.json()).then(words => {
    if(state.pastWordList.length < words) {
        state.pastWordList = words;
        localStorage.setItem(LOCAL_CACHE_KEY, words);
    }
})

const checkRepeat = () => {
    const rowTiles = rows.map(getRowTiles);
    rowTiles.forEach((row, i) => {
        // if row is full and word is in list, set warning style
        const word = getRowWord(row);
        if (word.length === 5 && pastWords.includes(word)) {
            setWarning(i);
        } else {
            clearWarning(i)
        }
    })
}

setInterval(checkRepeat, 200);
})()