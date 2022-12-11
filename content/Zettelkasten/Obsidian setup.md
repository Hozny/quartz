---
title: "Obsidian setup"
draft: false
---
# Obsidian setup

### Obsidian to Anki 
- Extension is called obsidian_to_anki
	- `((?:[^\n][\n]?)+) #flashcard ?\n*((?:\n(?:^.{1,3}$|^.{4}(?<!<!--).*))+)`
	- RegEx for NeuraCache style formatting of cards
Syntax for creating a note using NeuraCache format
```
Front of the deck #flashcard 
a single paragraph of notes 
should not have an empty line 
- this works
- $\frac{a}{b}$ latex also works
- bullet points will be points, I think Anki uses similar markdown rendering
<!--ID: 1670652509073-->


This will not be in the note. Running the plugin now will add an ID line under as seen below.

Flashcard to be delted #flashcard
back of this card


Again, this is being ignored. Re-run the Anki plugin and it will delete the node. Card is deleted when the ID is removed.
```


Each note file for a certain subject should link to the corresponding Anki file int `Anki/`. Files in `Anki` should be somewhat broader topics than specific note files in `Zettelkasten`. 
- it might be become a little messy to find out if certain topics are within a note file, but probably greping around is enough to check

### Publishing on website
See [[Obsidian quartz]] for publishing Obsidian notes using quartz

### References
1. https://www.youtube.com/watch?v=PXyv6pnVGhA&t=905s
	1. Tutorial video for setting up obsidian_to_anki

---
status: #🌱             
date: 2022-12-10           
tags: [[Personal Knowledge Management]]           