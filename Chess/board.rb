class Board
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        # @sentinel = NullPiece.new
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val) #val is Queen or Rook or Knight (pieces) instead of nil where it is empty?
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        raise if @rows[start_pos] == nil?
        @rows[start_pos] = @rows[end_pos] 
    end
end