#Function that compresses a string if it saves space.
sub compress($str) {
    my @chars = split("",$str);
    my $count = 0;
    my $lastChar = @chars[0];
    my $compressedStr = "";
        
    for @chars {
	if ($_ eq $lastChar) {
	    $count++;
	}
	else {
	    $compressedStr ~= ($count > 1) ?? ($lastChar ~ $count) !! $lastChar;
	    $lastChar = $_;
	    $count = 1;
	}
    }	    
    
    $compressedStr ~= ($count > 1) ?? ($lastChar ~ $count) !! $lastChar;
    
    return ($compressedStr.chars < $str.chars) ?? $compressedStr !! $str;
}

my $str = prompt "Please, insert a string:";
say "String compressed: ", compress($str); 
