# 
# books.sed
# Collect booknames and booknumbers of the bible form XML-file
#

/<BIBLEBOOK/ s#.*bname="\([^"]*\)" bnumber="\([^"]*\)".*#\2;\1# p
