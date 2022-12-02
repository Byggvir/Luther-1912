# Create wordlist from text

s#.*>\([^<]*\)<.*#\1#;
s#- ##g;
s#[,:;\.!?()„“"]##g;
s#[0-9]\+##g;
s#  *#\n#g;
