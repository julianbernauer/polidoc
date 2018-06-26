# polidoc
Development platform for polidoc.net

*Major Changes June 2018: no more separately maintained .csv files for documentation, we export the information from polidoc.net*

# Intro and source data 
- Managing and tracking contents of polidoc.net  
- The exported information contains country names and acronyms, cmp codes, election years covered, manifesto titles, original and english party names as well as party acronyms 
- R code is used to track manifesto and party coverage and produce a codebook 

# Workflow
1) Jobs are assigned via "Issues"
2) Prepare manifestos according to guidelines (see Codebook)
3) Generate entry and upload on polidoc.net via Server at the MZES 
4) Use "Pull requests" for open questions/review  

# Codebook
- "polidoc_manifestos.r" creates tables and figures from the source data to be used in the codebook 
- "polidoc_codebook.tex" creates the codebook from these files and only needs to be re-run for an update 

# Party list 
- In the folder you'll find lists of all parties covered across countries and regions 
- This is the master file for the assignemt of cmp-style codes 
- It is created from the source files using "polidoc_manifestos.r"

# Wishlist 
- Graphs on coverage on website 
- Link publications using polidoc.net on website 
 
