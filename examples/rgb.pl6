use v6;
use Number::RGB;

my $white        = Number::RGB.new(255, 255, 255);
my $almost_black = Number::RGB.new('#111');

my $gray = $white / 2;
say $gray.hex; # prints "#808080"

say $almost_black + 25; # prints "42, 42, 42"
