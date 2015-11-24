use v6;
class class Number::RGB:ver<1.001001> {
    has Int $.r = 0;
    has Int $.g = 0;
    has Int $.b = 0;

    method new (Str $hex is copy) {
        $hex ~~ s/^ '#'//;
        $hex.chars == 3 and $hex ~~ s/(.)(.)(.)/$0$0$1$1$2$2/;
        my ( $r, $g, $b ) = map { :16($_) }, $hex.comb(/../);
        return self.bless(:$r, :$g, :$b);
    }
};

multi infix:<+> (RGB $obj, Int $n) is export {
    RGB.new(
        r => $obj.r + $n,
        g => $obj.g + $n,
        b => $obj.b + $n
    );
}

multi infix:<+> (Int $n, RGB $obj) is export {
    RGB.new(
        r => $obj.r + $n,
        g => $obj.g + $n,
        b => $obj.b + $n
    );
}

multi infix:<+> (RGB $obj1, RGB $obj2) is export {
    RGB.new(
        r => $obj1.r + $obj2.r,
        g => $obj1.g + $obj2.g,
        b => $obj1.b + $obj2.b,
    );
}
