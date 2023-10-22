new_project \
         -name {MakerDemo} \
         -location {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
