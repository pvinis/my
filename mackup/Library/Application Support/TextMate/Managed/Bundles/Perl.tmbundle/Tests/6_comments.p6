# Line Comments

say "hello, world!"; # At the end of a line


=begin pod
=test

Documentation block comment

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.

=end pod


#Embedded comments

ok #`[
    Multiline
    comments
    is fine
] 1, 'multiline embedded comment with #`[]';


# Embedded comments with nesting

ok #`[
    Multiline
    [ comments ]
    is fine
] 1, 'multiline embedded comment with #`[]';


# Embedded commants with doubled delimiters

say #`{{
        This comment contains unmatched } and { { { {   (ignored)
        Plus a nested {{ ... }} pair                    (counted)
    }} q<< <<woot>> >>


# Embedded comments with more unique characters

is(#`᚛ foo ᚜   "This should not be a comment");
is(#`⁅ foo ⁆   "This should not be a comment");
is(#`⁽ foo ⁾   "This should not be a comment");
is(#`❨ foo ❩   "This should not be a comment");
is(#`❮ foo ❯   "This should not be a comment");
is(#`❰ foo ❱   "This should not be a comment");
is(#`❲ foo ❳   "This should not be a comment");
is(#`⟦ foo ⟧   "This should not be a comment");
is(#`⦅ foo ⦆   "This should not be a comment");
is(#`⦓ foo ⦔   "This should not be a comment");
is(#`⦕ foo ⦖   "This should not be a comment");
is(#`『 foo 』   "This should not be a comment");



----------------------------------------------------------------------------




Q[A literal string]
｢More plainly.｣
Q ^Almost any non-word character can be a delimiter!^
Q<Make sure you <match> opening and closing delimiters>
Q{This is still a closing curly brace → \}

'Very plain'
q[This back\slash stays]
q[This back\\slash stays] # Identical output
q{This is not a closing culy brace → \}, but this is → }
Q :q $There are no backslashes here, only lots of \$\$\$!$
'(Just kidding. There\'s no money in that string)'
'No $interpolation {here}!'
Q:q#Just a literal "\n" here#


say ['a', 'b', 42].join(' ');   # a b 42
#   ^^^^^^^^^^^^^^ Array constructor