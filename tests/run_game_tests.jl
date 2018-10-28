include("../aimajulia.jl");

using Test;

using aimajulia;

#The following game tests are from the aima-python doctest

@testset "minimax" begin
    @test minimax_decision("A", Figure52Game()) == "A1";
end

@testset "alphabeta" begin
    @test alphabeta_full_search("A", Figure52Game()) == "A1";
    @test alphabeta_search("A", Figure52Game()) == "A1";
end

@testset "play_game" begin
    @test play_game(Figure52Game(), alphabeta_player, alphabeta_player) == 3;
end
