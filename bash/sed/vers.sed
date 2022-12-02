# 
# vers.sed
# Collect verses of the bible form XML-file
#

/<BIBLEBOOK/ s#.*bname="\([^"]*\)" bnumber="\([^"]*\)".*#BOOK\t\2\t\1#p;
/<CHAPTER/ s#.*"\([^"]*\)".*#CHAP\t\1#p;
/<VERS/ s#.*vnumber="\([^"]*\)">\(.*\)</VERS>.*#VERS\t\1\t\2#p
