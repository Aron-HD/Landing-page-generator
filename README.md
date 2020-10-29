# LANDING PAGES

### About

**This is one of the first scripts I made, and I would do it completely differently now. However this works fine and serves the functional purpose, so rescripting it isn't currently worth the time.**

Automated creation of formulaic HTML static pages for Judging panels across all 10 of our awards categories. Previously a copy and paste job.

Takes input from csv, panel chair must be at top.

Outputs two html files: one for the judging panel grid with headshots, another for the judging bios. (These are hidden for confidentiality).

**Examples:**

- [Grid](https://www.warc.com/WarcAwards.prize?tab=innovation)
- [Bios](https://www.warc.com/WARCAwards/innovation-judges.info#jane-wakely)

Recently added functionality to comment out judges who have not yet submitted their pics or bios, which was previously a bit tedious to either remove from the csv, or comment out manually.

---

# Redesign

Updating this to use Jinja2 module for templating rather than concatenating strings.


### Templates

##### Launch

- insights and inspirations (others extend from this)
- about
- entry details
- previous

##### Panels

- judges pics
- judges bios

##### Winners

These will be taken out of the landing page tabs when not relevant to keep judges separate.

- winners
- shortist


### Landing page codes

##### WARC Awards

- 5645 - About (Intro)
- 5902 - Previous
- 5665 - Entry details
- **Innovation** 
    - 5901 - bios
    - 5900 - pics
- **Purpose**
    - 5668 - bios
    - 5648 - pics
- **Content**
    - 5646 - bios
    - 5666 - pics
- **Social**
    - 5647 - bios
    - 5667 - pics

##### MENA

- 5638 - About (Intro)
- 5641 - Previous
- 5639 - Entry details
- 5642 bios
- 5640 pics

##### Asia

- 5694 - About (Intro)
- 5710 - Previous
- 5707 - Entry Details
- 5711 bios
- 5708 pics

##### Media Awards

- 5743 - About (Intro)
- 5752 - Previous
- 5744 - Entry details
- **Data**
    - 5750 bios
    - 5741 pics
- **Channel Integration**
    - 5748 bios
    - 5739 pics
- **Tech**
    - 5749 bios
    - 5740 pics
- **Partnerships**
    - 5751 bios
    - 5742 pics

##### China Prize
- 6593 - header 

##### Awards cartridge codes
- WARC - 5790
- MENA - 5822
- Asia - 5676
- Media - 5758

##### Navigation
- 91 - Our awards

### Improvements

- need to add in sorting alphabetically on last name so that this doesn't have to be filtered in google sheets before export.
- all of the imports from LP_functions.py should just be in a dictionary or a JSON file. When I do get around to revising this.
- I could also add functionality to CMS-Bot repo to automatically upload resized images into the file admin in CMS *before* the script runs, so that images are definitely uploaded.
- currently working on an easier way to take the bios from the All_judges.docx and place them directly into the csv. Might have to use pandas for this.
- eventually I want to connect to google sheets itself through the API, rather than using a csv to cut out another stage of the process.

