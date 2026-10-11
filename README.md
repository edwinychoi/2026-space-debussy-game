# 2026 Space Debussy Game

A small, soothing game in a single HTML file. Tap the dark sky to make stars while Debussy's *Clair de Lune* plays.
https://edwinychoi.github.io/2026-space-debussy-game/space-game.html

## Play

Download `space-game.html` and open it in a browser. It works offline.

Browsers block sound until you tap, so the music starts on your first tap unless you've allowed autoplay for the page.

## How it works

- **Tap or click** to make a star. Each one plays a soft celesta note in D-flat major, the key of *Clair de Lune*. The game listens to the recording and favours whichever notes the piano is playing at that moment.
- **Hold** to grow a bigger star. It plays a deeper, longer note when you let go.
- **Pinch** (or scroll, or pinch a trackpad) to fly forward and back through the stars in 3D.
- Groups of stars form soft, breathing clouds of gas. Flying through a cloud tints the view in its colour.
- Now and then, a star goes supernova.
- Stars pulse gently with the notes in the music: bigger stars with low notes, smaller stars with high ones.

## Editing

The playable file is built from `src/`:

- `src/space-game.template.html`: all the game code, with a placeholder where the music goes
- `src/clair-de-lune.mp3`: the recording that gets embedded
- `src/build.ps1`: inserts the MP3 into the template and writes `space-game.html`

After editing the template, rebuild with PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File src/build.ps1
```

## Music

*Clair de Lune* is by Claude Debussy (1905); the composition is in the public domain. The included recording is from the *Twilight* soundtrack and is not covered by any licence in this repository.
