# polidoc
Development platform for polidoc.net

# Intro
- Contents of polidoc.net are now tracked using country- and region-specific files, which replace the "Bestandsliste" 
- (Wishlist: scrape polidoc.net to update files or create polidoc.net from files)
- Manifesto- and party-level data: Uses .csv files (can be edited in Excel and used by R) to track manifesto and party coverage, contains cmp codes, election years covered, manifesto titles, original and english party names 
- polidoc_manifestos.r creates tables and figures from the data to be used in the codebook 
- Codebook.tex creates the codebook from these files and only needs to be re-run for an update 
- Workflow: Files are assigned, edited, committed, controlled, and integrated via GitHub
- Use "Issues" to assign files and tasks  
- Use "Pull requests" for open questions/review  
