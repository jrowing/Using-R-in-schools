
txt = c("  Hello! I'm a short paragraph (containing about ",
        "50 words) that Tim has written to help illustrate a few ",
        "text-processing functions in R.  As you can see, I'm split ",
        "over a few lines--five, in fact--with each line consisting ",
        "of several words. Hope it's all fairly self-explanatory! ") 
       
txt = gsub("'", "", txt)
txt = gsub("-", " ", txt)
txt = tolower(txt)

txt = gsub("[^a-z ]", "", txt)

txt = gsub("^[ ]+", "", txt)
txt = gsub("[ ]+$", "", txt)
txt = gsub("[ ]+", " ", txt)


wd = unlist(strsplit(txt," "))

set.seed(123)
shuffle = sample(LETTERS)

cc = wd
for (i in 1:26) {
cc = gsub(letters[i], shuffle[i], cc)
}


##############################################


txt0 = scan("http://www.gutenberg.org/cache/epub/36/pg36.txt","",sep="\n")

startpt = grep("START OF THIS PROJECT GUTENBERG EBOOK", txt0) + 1
endpt   = grep("End of the Project Gutenberg EBook", txt0) - 1

txt = txt0[startpt:endpt]

origtxt = txt

txt = gsub("'", "", txt)
txt = gsub("-", " ", txt)
txt = tolower(txt)

txt = gsub("[^a-z ]", "", txt)

txt = gsub("^[ ]+", "", txt)
txt = gsub("[ ]+$", "", txt)
txt = gsub("[ ]+", " ", txt)

wd = unlist(strsplit(txt," "))

set.seed(999)
shuffle = sample(LETTERS)

cc = wd
for (i in 1:26) {
cc = gsub(letters[i], shuffle[i], cc)
}

lett = unlist(strsplit(cc, ""))


cc = gsub("K", "a", cc)
cc = gsub("W", "n", cc)
cc = gsub("T", "d", cc)

sort(table(cc))

cc = gsub("H", "i", cc)

sort(table(cc))

cc = gsub("N", "t", cc)
cc = gsub("B", "h", cc)
cc = gsub("R", "e", cc)

sort(table(cc))

cc = gsub("V", "r", cc)
cc = gsub("U", "w", cc)
cc = gsub("J", "s", cc)
cc = gsub("S", "o", cc)

sort(table(cc))

cc = gsub("S", "o", cc)

sort(table(cc))

cc = gsub("X", "f", cc)

sort(table(cc))

cc = gsub("A", "m", cc)
cc = gsub("F", "u", cc)
cc = gsub("M", "g", cc)
cc = gsub("Y", "p", cc)
cc = gsub("I", "l", cc)

sort(table(cc))

cc = gsub("P", "y", cc)
cc = gsub("O", "b", cc)
cc = gsub("C", "c", cc)

lett = unlist(strsplit(cc, ""))

intersect(lett,LETTERS)
setdiff(letters, lett)

cc[grep("E", cc)]
cc = gsub("E", "k", cc)
cc[grep("L", cc)]
cc = gsub("L", "q", cc)
cc[grep("D", cc)]
cc = gsub("D", "v", cc)
cc[grep("Q", cc)]
cc = gsub("Q", "x", cc)
cc[grep("G", cc)]
cc = gsub("G", "z", cc)
cc[grep("Z", cc)]
cc = gsub("Z", "j", cc)

lett = unlist(strsplit(cc, ""))

identical(cc, wd)
