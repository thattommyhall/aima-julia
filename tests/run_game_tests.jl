include("../aimajulia.jl");

using Test;

using aimajulia;

#The following game tests are from the aima-python doctest

@test minimax_decision("A", Figure52Game()) == "A1";

@test alphabeta_full_search("A", Figure52Game()) == "A1";

@test alphabeta_search("A", Figure52Game()) == "A1";

@test play_game(Figure52Game(), alphabeta_player, alphabeta_player) == 3;

end


