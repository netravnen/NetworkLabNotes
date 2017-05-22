tclsh
puts [ open "flash:reset.tcl" w+ ] {
typeahead "\n"
copy running-config startup-config
typeahead "\n"
erase startup-config
delete /force vlan.dat
delete /force multiple-fs
ios_config "sdm prefer lanbase-routing"
typeahead "\n"
puts "Reloading the switch in 1 minute, type reload cancel to halt"
typeahead "\n"
reload in 1 RESET.TCL SCRIPT RUN
}
tclquit
