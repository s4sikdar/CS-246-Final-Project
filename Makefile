CXX = g++
CXXFLAGS = -std=c++14 -Werror=vla -g -O0 -Wall -MMD
EXEC = biquadris
OBJECTS = main.o blank.o grid.o block.o game_controller.o gameboard.o level1.o level2.o level3.o level4.o iblock.o lblock.o jblock.o oblock.o sblock.o zblock.o oboblock.o tblock.o cmd_observer.o xwindow_observer.o subject.o command.o left_command.o right_command.o drop_command.o down_command.o counter_clockwise.o clockwise.o uplevel_command.o downlevel_command.o restart_command.o sequence_command.o level.o I_command.o J_command.o L_command.o O_command.o S_command.o Z_command.o T_command.o random_command.o norandom_command.o window.o
DEPENDS = ${OBJECTS:.o=.d}

${EXEC}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC} -lX11

-include ${DEPENDS}

.PHONY: clean

clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS}
