set fp [open "output.txt" w+]
set f [molinfo top get numframes]
set memb [atomselect top "segname MEMB"]
set reslist [lsort -unique -real [$memb get resid]]
set len [tcl::mathfunc::max {*}$reslist]
set pre {}
for {set i 0} {$i < $f} {incr i} {
set pre {}
animate goto $i
	for {set k 1} {$k <= $len} {incr k} {
	set sel [atomselect top "segname MEMB and resid $k and name P P1"]
	set z [lindex [measure center $sel] 2]
	lappend pre $z
	}
puts $fp "$pre"
}
close $fp