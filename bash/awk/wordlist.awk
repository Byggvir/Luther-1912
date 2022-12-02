BEGIN { 
    word = "" ;
    counter = 0 ;
} 
{ 
    if ($1 == word ) 
        {counter++} 
    else { 
        if (counter > 0 ) print (word ";" counter);
        word = $1 ;
        counter = 1 ;
        }
} 
END { 
    print (word ";" counter);
}
