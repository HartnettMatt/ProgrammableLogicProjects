open_project -project {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo_fp\MakerDemo.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S010} \
    -fpga {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.map} \
    -header {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.hdr} \
    -spm {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.spm} \
    -dca {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.dca}
export_single_stapl \
    -name {M2S010} \
    -file {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\export\MakerDemo.stp} \
    -secured


export_single_ppd \
    -name {M2S010} \
    -file {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\export\MakerDemo.ppd}

export_single_dat \
    -name {M2S010} \
    -file {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\export\MakerDemo.dat} \
    -secured


save_project
close_project
