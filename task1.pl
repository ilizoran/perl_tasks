# tasks

format STDOUT =
	@<<<<< @<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$n,		 $sum,			$naslov
----------------------------------------------------------------
.

# format NUMBER_TOP =
# Number
# --------------------------------------------------------------
# .

select(STDOUT);
# $~ NUMBER;
# $^ NUMBER_TOP;

$sum = 0;
$naslov;
print "Unesite broj veci od nule (n > 0): \n";
$n = <STDIN>;
if ($n > 0) {
	# zbir prvih n brojeva
	# $sum = $n * ($n + 1) / 2;
	for ($i = 1; $i <= $n; $i++) {
		$sum += $i;
	}
	$naslov = 'zbir prvih n brojeva';
	write;

	# zbir kvadrata prvih n neparnih
	$sum 	= 0;
	$broj 	= 1;
	while ($broj <= (2 * $n - 1)) {
		$sum += $broj * $broj;
		$broj = $broj + 2;
	}
	$naslov = "zbir kvadrata prvih n neparnih";
	write;
}
else {
	print "Neispravan unos!\n";
}
