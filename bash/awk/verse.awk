##
BEGIN {
    bnumber = 0 ;
    cnumber = 0 ;
    vnumber = 0 ;
    print ("bnumber\tcnumber\tvnumber\tverse")
}
{
    if ($1 == "BOOK") { bnumber = $2; } ;
    if ($1 == "CHAP") { cnumber = $2; } ;
    if ($1 == "VERS") {
        vnumber = $2 ;
        vers = $3;
        print(bnumber "\t" cnumber "\t" vnumber "\t" vers ) ;
    
    } ;
}
