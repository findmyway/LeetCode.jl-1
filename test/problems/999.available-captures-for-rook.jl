@testset "999.available-captures-for-rook.jl" begin
    board = [
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' 'p' '.' '.' '.' '.'
        '.' '.' '.' 'R' '.' '.' '.' 'p'
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' 'p' '.' '.' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        ]
    @test num_rook_captures(board) == 3

    board = [
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' 'p' 'p' 'p' 'p' 'p' '.' '.'
        '.' 'p' 'p' 'B' 'p' 'p' '.' '.'
        '.' 'p' 'B' 'R' 'B' 'p' '.' '.'
        '.' 'p' 'p' 'B' 'p' 'p' '.' '.'
        '.' 'p' 'p' 'p' 'p' 'p' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        ]
    @test num_rook_captures(board) == 0

    board = [
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' 'p' '.' '.' '.' '.'
        '.' '.' '.' 'p' '.' '.' '.' '.'
        'p' 'p' '.' 'R' '.' 'p' 'B' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        '.' '.' '.' 'B' '.' '.' '.' '.'
        '.' '.' '.' 'p' '.' '.' '.' '.'
        '.' '.' '.' '.' '.' '.' '.' '.'
        ]
    @test num_rook_captures(board) == 3
end