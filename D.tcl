package require qwrap

foreach sys {C4 C6 C8} {
  foreach rep {rep1 rep2 rep3} {
    mol new ../hmmm-${sys}.psf
    mol addfile ../production/trajectories/hmmm-${sys}-${rep}.dcd step 10 waitfor all

    qunwrap compound fragment sel all

    set lip [atomselect top "segname MEMB"]
    set resid [lsort -real -unique [$lip get resid]]

    set fp1 [open "${sys}-${rep}-mean.dat" w]
    set fp2 [open "${sys}-${rep}-Dall.dat" w]

    for {set frame 1} {$frame < [molinfo top get numframes]} {incr frame} {
      set diff {}
      for {set i 0} {$i < [llength $resid]} {incr i} {
        set ref [atomselect top "segname MEMB and resid [lindex $resid $i] and noh" frame 0]
        set com [atomselect top "segname MEMB and resid [lindex $resid $i] and noh" frame $frame]

        set rmsd [measure rmsd $com $ref]
        set D [expr pow($rmsd,2) / 4 * pow(10,-7) / ($frame * 0.1)]

        lappend diff $D
      }

      puts $fp2 $diff
      puts $fp1 [expr [vecsum $diff] / [llength $diff]]
    }
    close $fp1
    close $fp2
    mol delete all
  }
}

quit

        
