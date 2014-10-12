rename catch cc
proc catch {script msg} {
    set ret [cc $script xmsg]
    if {$ret != 0} {
        if {$xmsg == {_EXIT_}} {
            error {_EXIT_}
        } else {
            set $msg $xmsg
            return $ret
        }
    }
    return 0 
}