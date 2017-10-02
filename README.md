# polidoc
Development platform for polidoc.net

# Intro
- Contents of polidoc.net are now tracked using country- and region-specific files, which replace the "Bestandsliste" 
- (Wishlist: scrape polidoc.net to update files)
- Manifesto- and party-level data: Uses .csv files to track manifesto and party coverage (can be edited in Excel and used by R), contains cmp codes, election years covered, manifesto titles, original and english party names 
- polidoc_manifestos.r creates tables and figures from the data to be used in the codebook 
- Codebook.tex creates the codebook from these files and only needs to be re-run for an update 
- Workflow: Files are edited via GitHub, committed, controlled, and integrated 
- Issues/ to dos are tracked 
