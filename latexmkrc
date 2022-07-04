$out_dir = 'build';

sub compile_asymptote {
	return system("asy -o \"$out_dir/\" \"$_[0]\"");
}

add_cus_dep("asy", "pdf", 1, "compile_asymptote");
