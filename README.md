# UV-5RM Plus GPS Field Guide

An offline, searchable walkthrough for the Baofeng UV-5RM Plus **GPS** handheld radio, in a single HTML file.

Read it online at <https://kunkles.github.io/uv5rm-plus-gps-guide/>, or download `uv5rm-plus-gps-guide.html` and open it in any browser to use it offline. No install, no build step, no internet needed (one optional feature uses it, see below).

## What's in it

- **Search** across every section, walkthrough step, menu setting, fix and glossary term (press `/`).
- **Animated walkthroughs** on a drawn radio: which key to press, when to hold, what the screen shows.
- **Clickable radio** explaining each key's short and long press.
- **Menu reference** for the GPS firmware's seven menus.
- **On-air basics**, range and accessories, field readiness, troubleshooting, reference tables.
- **Programming on a Mac** and unlock guides.
- **Channel plan** with CSV export in CHIRP's layout, a **test log**, a printable **pocket cheat sheet** and **radio labels**.
- **Emergency family channels**: a method for choosing them, plus a tool to import your local repeaters.

## Your data

The channel plan, test log, labels and ticked boxes are saved in your browser as you type. Two ways to keep them as files:

- **Autosave to a folder.** Choose a folder once and the guide keeps `uv5rm-guide-data.json` there up to date, and reloads it on the next visit. Works in Chrome, Edge, Brave, Opera and Arc on a computer. **Not available in Safari, Firefox or on phones**, which don't let a web page write to a chosen folder; the guide says so and falls back to browser storage.
- **Save to file** (top of the page) writes the data into a copy of the HTML file itself. Works in every browser, on demand.

Nothing is sent anywhere: the guide has no server. The copy in this repository contains no personal data.

### Keeping personal data out of the repository

**Save to file** writes your data into the HTML file, so never commit a copy you have saved into. Keep your own copy in `private/` (ignored by git) or outside the folder. Two checks back this up:

- A pre-commit hook refuses any commit where the guide contains saved data. Turn it on once per clone with `git config core.hooksPath hooks`.
- The same check runs on GitHub for every push and pull request.

## Finding local repeaters

The guide ships without anyone's local repeaters. Under *Emergency family channels › Find repeaters near you*:

1. Type a city or ZIP code; the guide opens a RepeaterBook proximity search in a new tab.
2. Copy the result rows and paste them back (or load a CHIRP-format CSV).
3. Tick the repeaters you want and add them to the channel plan.

This is the only step that needs internet. Repeater databases don't allow a web page to query them directly, which is why it isn't a single button.

## Accuracy

Built from Baofeng's *UV-5RM Plus GPS User Manual* (print V1.0), Baofeng's product listing, the CHIRP project's macOS notes and issue tracker, and community reports, checked November 2026. Baofeng's manual contradicts itself in places and firmware varies between production runs: if your radio shows something different, the radio is right. The guide has not been verified key-by-key against a physical radio.

Transmitting requires the appropriate licence. The guide explains what is and isn't legal on this radio in the US; check the rules where you live.

Not affiliated with Baofeng / Pofung, RepeaterBook or CHIRP.
