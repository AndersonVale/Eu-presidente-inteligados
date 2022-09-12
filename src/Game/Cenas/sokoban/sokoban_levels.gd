extends Node


var maps = [
	
	[
		"--###",
		"--#.#",
		"--#-####",
		"###$-$.#",
		"#.-$@###",
		"####$#",
		"---#.#",
		"---###"
	],

	[
		"----#####",
		"----#---#",
		"----#$--#",
		"--###--$##",
		"--#--$-$-#",
		"###-#-##-#   ######",
		"#---#-##-#####--..#",
		"#-$--$----------..#",
		"#####-###-#@##--..#",
		"----#-----#########",
		"----#######",
	]
	, [
		"#### #######",
		"#..# #-----###",
		"#..###-$--$--#",
		"#...-#$####--#",
		"#...-$-@-##--#",
		"#..$-#-#--$-##",
		"######-##$-$-#",
		"--#-$--$-$-$-#",
		"--#----#-----#",
		"--############",
	],[
		"        ########",
		"        #-----@#",
		"        #-$#$-##",
		"        #-$--$#",
		"        ##$-$-#",
		"#########-$-#-###",
		"#....--##-$--$--#",
		"##...----$--$---#",
		"#....--##########",
		"########",
	],[
		"           ########",
		"           #--....#",
		"############--....#",
		"#----#--$-$---....#",
		"#-$$$#$--$-#--....#",
		"#--$-----$-#--....#",
		"#-$$-#$-$-$########",
		"#--$-#-----#",
		"##-#########",
		"#----#----#",
		"#-----$---##",
		"#--$$#$$--@#",
		"#----#----##",
		"###########",
	],[
		"        #####",
		"        #---#####",
		"        #-#$##--#",
		"        #-----$-#",
		"#########-###---#",
		"#....--##-$--$###",
		"#....----$-$$-##",
		"#....--##$--$-@#",
		"#########--$--##",
		"        #-$-$--#",
		"        ###-##-#",
		"          #----#",
		"          ######"
	],[
		"######  ###",
		"#..--# ##@##",
		"#..--###---#",
		"#..-----$$-#",
		"#..--#-#-$-#",
		"#..###-#-$-#",
		"####-$-#$--#",
		"---#--$#-$-#",
		"---#-$--$--#",
		"---#--##---#",
		"---#########",
	],[
		"--####",
		"--#--###########",
		"--#----$---$-$-#",
		"--#-$#-$-#--$--#",
		"--#--$-$--#----#",
		"###-$#-#--####-#",
		"#@#$-$-$--##---#",
		"#----$-#$#---#-#",
		"#---$----$-$-$-#",
		"#####--#########",
		"--#------#",
		"--#------#",
		"--#......#",
		"--#......#",
		"--#......#",
		"--########",
	],[
		"----------#######",
		"----------#--...#",
		"------#####--...#",
		"------#------.-.#",
		"------#--##--...#",
		"------##-##--...#",
		"-----###-########",
		"-----#-$$$-##",
		"-#####--$-$-#####",
		"##---#$-$---#---#",
		"#@-$--$----$--$-#",
		"######-$$-$-#####",
		"-----#------#",
		"-----########",
	],[
		"-###  #############",
		"##@####-------#---#",
		"#-$$---$$--$-$-...#",
		"#--$$$#----$--#...#",
		"#-$---#-$$-$$-#...#",
		"###---#--$----#...#",
		"#-----#-$-$-$-#...#",
		"#----######-###...#",
		"##-#--#--$-$--#...#",
		"#--##-#-$$-$-$##..#",
		"#-..#-#--$------#.#",
		"#-..#-#-$$$-$$$-#.#",
		"#####-#-------#-#.#",
		"----#-#########-#.#",
		"----#-----------#.#",
		"----###############",
	],[
		"-###  #############",
		"##@####-------#---#",
		"#-$$---$$--$-$-...#",
		"#--$$$#----$--#...#",
		"#-$---#-$$-$$-#...#",
		"###---#--$----#...#",
		"#-----#-$-$-$-#...#",
		"#----######-###...#",
		"##-#--#--$-$--#...#",
		"#--##-#-$$-$-$##..#",
		"#-..#-#--$------#.#",
		"#-..#-#-$$$-$$$-#.#",
		"#####-#-------#-#.#",
		"----#-#########-#.#",
		"----#-----------#.#",
		"----###############",
	],[
		"----------####",
		"-----#### #--#",
		"---###-@###$-#",
		"--##------$--#",
		"-##--$-$$##-##",
		"-#--#$##-----#",
		"-#-#-$-$$-#-###",
		"-#---$-#--#-$-#####",
		"-###----#--$$-#---#",
		"####-##-$---------#",
		"#.----###--########",
		"#..-..#-####",
		"#...#.#",
		"#.....#",
		"#######",
	],[
		"################",
		"#--------------#",
		"#-#-######-----#",
		"#-#--$-$-$-$#--#",
		"#-#---$@$---##-##",
		"#-#-#$-$-$###...#",
		"#-#---$-$--##...#",
		"#-###$$$-$-##...#",
		"#-----#-##-##...#",
		"#####---##-##...#",
		"----#####-----###",
		"--------#-----#",
		"--------#######",
	],
	[
		"---#########",
		"--##---##--######",
		"###-----#--#----###",
		"#--$-#$-#--#--...-#",
		"#-#-$#@$##-#-#.#.-#",
		"#--#-#$--#----.-.-#",
		"#-$----$-#-#-#.#.-#",
		"#---##--##$-$-.-.-#",
		"#-$-#---#--#$#.#.-#",
		"##-$--$---$--$...-#",
		"-#$-######----##--#",
		"-#--#    ##########",
		"-####",
	],
	[
		"-------#######",
		"-#######-----#",
		"-#-----#-$@$-#",
		"-#$$-#---#########",
		"-#-###......##---#",
		"-#---$......##-#-#",
		"-#-###......-----#",
		"##---####-###-#$##",
		"#--#$---#--$--#-#",
		"#--$-$$$--#-$##-#",
		"#---$-$-###$$-#-#",
		"#####-----$---#-#",
		"----###-###---#-#",
		"------#-----#---#",
		"------########--#",
		"-------------####",
	],[
		"---########",
		"---#---#--#",
		"---#--$---#",
		"-###-#$---####",
		"-#--$--##$---#",
		"-#--#-@-$-#-$#",
		"-#--#------$-####",
		"-##-####$##-----#",
		"-#-$#.....#-#---#",
		"-#--$..**.-$#-###",
		"##--#.....#---#",
		"#---###-#######",
		"#-$$--#--#",
		"#--#-----#",
		"######---#",
		"-----#####",
	],[
		"#####",
		"#---##",
		"#----#  ####",
		"#-$--####--#",
		"#--$$-$---$#",
		"###@-#$----##",
		"-#--##--$-$-##",
		"-#-$--##-##-.#",
		"-#--#$##$--#.#",
		"-###---$..##.#",
		"--#----#.*...#",
		"--#-$$-#.....#",
		"--#--#########",
		"--#--#",
		"--####",
	],[
		"---##########",
		"---#..--#---#",
		"---#..------#",
		"---#..--#--####",
		"--#######--#--##",
		"--#------------#",
		"--#--#--##--#--#",
		"####-##--####-##",
		"#--$--#####-#--#",
		"#-#-$--$--#-$--#",
		"#-@$--$---#---##",
		"####-##-#######",
		"---#----#",
		"---######",
	],[
		"-----###########",
		"-----#--.--#---#",
		"-----#-#.----@-#",
		"-#####-##..#-####",
		"##--#-..###-----###",
		"#-$-#...---$-#--$-#",
		"#----..-##--##-##-#",
		"####$##$#-$-#---#-#",
		"--##-#----#$-$$-#-#",
		"--#--$-#-#--#-$##-#",
		"--#---------------#",
		"--#--###########--#",
		"--####         ####",
	],[
		"--######",
		"--#---@####",
		"#####-$---#",
		"#---##----####",
		"#-$-#--##----#",
		"#-$-#--#####-#",
		"##-$--$----#-#",
		"-#-$-$-###-#-#",
		"-#-#--$--#-#-#",
		"-#-#-#$#---#-#",
		"##-###---#-#-######",
		"#--$--####-#-#....#",
		"#----$----$---..#.#",
		"####$--$#-$---....#",
		"#-------#--##-....#",
		"###################",
	],[
		"----##########",
		"#####--------####",
		"#-----#---$--#@-#",
		"#-#######$####--###",
		"#-#----##-#--#$-..#",
		"#-#-$--$--#--#--#.#",
		"#-#-$--#-----#$-..#",
		"#-#--###-##-----#.#",
		"#-###--#--#--#$-..#",
		"#-#----#-$####--#.#",
		"#-#$---$--$--#*-..#",
		"#----$-#-$-$-#--#.#",
		"####-$###----#*-..#",
		"---#----$$-###....#",
		"---#------## ######",
		"---########",
	],[
		"#########",
		"#-------#",
		"#-------####",
		"##-####-#--#",
		"##-#@##----#",
		"#-$$$-$--$$#",
		"#--#-##-$--#",
		"#--#-##--$-####",
		"####--$$$-$#--#",
		"-#---##---....#",
		"-#-#---#-#..-.#",
		"-#---#-#-##...#",
		"-#####-$--#...#",
		"-----##---#####",
		"------#####",
	],[
		"######     ####",
		"#----#######--#####",
		"#---$#--#--$--#---#",
		"#--$--$--$-#-$-$--#",
		"##$-$---#-@#-$----#",
		"#--$-###########-##",
		"#-#---#.......#-$#",
		"#-##--#-......#--#",
		"#-#---$........$-#",
		"#-#-$-#....-..#--#",
		"#--$-$####$####-$#",
		"#-$---###-$---$--##",
		"#-$-----$-$--$----#",
		"##-######-$-#####-#",
		"#---------#-------#",
		"###################",
	],[
		"----#######",
		"----#--#--####",
		"#####-$#$-#--##",
		"#..-#--#--#---#",
		"#..-#-$#$-#--$####",
		"#.--#-----#$--#--#",
		"#..---$#--#-$----#",
		"#..@#--#$-#$--#--#",
		"#..-#-$#-----$#--#",
		"#..-#--#$$#$--#--##",
		"#..-#-$#--#--$#$--#",
		"#..-#--#--#---#---#",
		"##.-####--#####---#",
		"-####  ####   #####",
	],[
		"###############",
		"#..........--.####",
		"#..........$$.#--#",
		"###########$-#---##",
		"#------$--$-----$-#",
		"##-####---#--$-#--#",
		"#------#---##--#-##",
		"#--$#--#-##--###-#",
		"#-$-#$###----#-#-#",
		"###--$-#--#--###-#",
		"-##----$-##-#--#-##",
		"-#-$--#--$--$-$---#",
		"-#--$--$#$$$--#---#",
		"-#--#--$------#####",
		"-#-@##--#--#--#",
		"-##############",
	],[
		"####",
		"#--##############",
		"#--#---..#......#",
		"#--#-#-#####-...#",
		"##$#----........#",
		"#---##$######--####",
		"#-$-#-----#-####@-#",
		"##$-#-$---######--#",
		"#--$-#$$$##-------#",
		"#------#----#$#$###",
		"#-####-#$$$$$----#",
		"#-#----$-----#---#",
		"#-#---##-##-----###",
		"#-######$######-$-#",
		"#--------#    #---#",
		"##########    #####",
	],[
		"-#######",
		"-#--#--#####",
		"##--#--#...###",
		"#--$#--#...--#",
		"#-$-#$$-...--#",
		"#--$#--#...-.#",
		"#---#-$########",
		"##$-------$-$-#",
		"-#--#--$$-#---#",
		"-######--##$$@#",
		"------#------##",
		"------########",
	],[
		"-#################",
		"-#...---#----#---##",
		"##.....--$##-#-#$-#",
		"#......#--$--#----#",
		"#......#--#--#-#--#",
		"#########-$--$-$--#",
		"--#-----#$##$-##$##",
		"-##---$----#-$----#",
		"-#--##-###-#--##$-#",
		"-#-$-$$-----$--$--#",
		"-#-$----$##$-######",
		"-#######--@-##",
		"-------######",
	],[
		"---------#####",
		"-----#####---#",
		"----##-$--$--####",
		"#####-$--$-$-##.#",
		"#-------$$--##..#",
		"#--######-###..-#",
		"##-#--#----#...-#",
		"#-$---#----#...-#",
		"#@-#$-##-####...#",
		"####--$-$$--##..#",
		"---##--$-$--$...#",
		"----#-$$--$-#--.#",
		"----#---$-$--####",
		"----######---#",
		"---------#####",
	],[
		"#####",
		"#---##",
		"#-$--#########",
		"##-#-#-------######",
		"##-#---$#$#@--#---#",
		"#--#------$-#---$-#",
		"#--###-#########-##",
		"#--##-..*.....-#-#",
		"##-##-*.*..*.*-#-##",
		"#-$##########-##$-#",
		"#--$---$--$----$--#",
		"#--#---#---#---#--#",
		"###################",
	],[
		"-------###########",
		"-------#---#-----#",
		"#####  #-----$-$-#",
		"#---#####-$##-#-##",
		"#-$-##---#-##-$--#",
		"#-$--@$$-#-##$$$-#",
		"##-###---#-##----#",
		"-#-#---###-#####$#",
		"##-#-----$--#....#",
		"#--###-##-$-#....##",
		"#-$---$-#---#..$.-#",
		"#--##-$-#--##....-#",
		"#####---######...##",
		"----#####    #####",
	],[
		"--####",
		"--#--#########",
		"-##--##--#---#",
		"-#--$#-$@$---####",
		"-#$--$--#-$-$#--##",
		"##--$##-#$-$-----#",
		"#--#--#-#---$$$--#",
		"#-$----$--$##-####",
		"#-$-$-#$#--#--#",
		"##--###--###$-#",
		"-#--#....-----#",
		"-####......####",
		"---#....####",
		"---#...##",
		"---#...#",
		"---#####",
	],[
		"------####",
		"--#####--#",
		"-##-----$#",
		"##-$--##-###",
		"#@$-$-#-$--#",
		"####-##---$#",
		"-#....#$-$-#",
		"-#....#---$#",
		"-#....--$$-##",
		"-#...-#-$---#",
		"-######$-$--#",
		"------#---###",
		"------#$-##",
		"------#--#",
		"------####",
	]
]

