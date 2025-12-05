def display_board(board):
    for row in board:
        print(" | ".join(row))
        print("-" * 5)

def is_winner(board, player):
    # Check rows
    for row in board:
        if all(cell == player for cell in row):
            return True
    # Check columns
    for col in range(3):
        if all(board[row][col] == player for row in range(3)):
            return True
    # Check diagonals
    if all(board[i][i] == player for i in range(3)) or all(board[i][2 - i] == player for i in range(3)):
        return True
    return False

def is_cat(board):
    for row in board:
        if " " in row:
            return False
    return True

def main():
    board = [[" " for _ in range(3)] for _ in range(3)]
    players = ["X", "O"]
    current_player = 0

    while True:
        display_board(board)
        print("Player", players[current_player], "turn")

        # Get user input for row and column
        while True:
            try:
                row = int(input("Enter row (1-3): ")) - 1
                col = int(input("Enter column (1-3): ")) - 1
                if 0 <= row <= 2 and 0 <= col <= 2 and board[row][col] == " ":
                    break
                else:
                    print("Invalid move!")
            except ValueError:
                print("Invalid input!")

        # Make move
        board[row][col] = players[current_player]

        # Check for winner
        if is_winner(board, players[current_player]):
            display_board(board)
            print("Player", players[current_player], "wins!")
            break

        # Check for cat
        if is_cat(board):
            display_board(board)
            print("CAT!")
            break

        # Switch player
        current_player = (current_player + 1) % 2

if __name__ == "__main__":
    main()
