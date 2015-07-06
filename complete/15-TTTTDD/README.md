# Tic-Tac-Toe

Tic-Tac-Toe is a _game_ between 2 _players_ played on a _board_.

## Game

To start a game, determine who the players are. We can do that by naming them.

One player plays 'X', and the other player plays 'O'.

The game begins with two specified players and an empty board.

## Board

A board is a 3x3 grid of spaces. Each space starts empty. A space can hold an 'X'
or an 'O'. Once something is placed in a space, nothing else can be placed there.

The board is drawn with lines separating spaces. An empty board looks like

```code
 | |
-+-+-
 | |
-+-+-
 | |
```

## Game

The first thing the game does is display the board and prompt the 'X' player to 
make a move.

A move is a player placing 'X' or 'O' in an empty space on the board.

After the 'X' player places the first 'X', the board is displayed again,
and the 'O' player is prompted to make a move.

The game continues until either one player wins or until there are no more empty 
spaces on the board.

The 'X' player wins by having three 'X's in one row or three 'X's in one column
or three 'X's in one diagonal. Similarly for the 'O' player.

## Player

After describing the game, it appears like there's no logic for a Player. It's just
a label. All the interesting things about a player's behavior are handled by the
person playing the game.

That would be different if the player was a computer....

## BEAST MODE

Given the logic of how the game ends, a computer player will play according to 
the following strategy:

* if the computer can make a move that wins, do so
* otherwise if the computer's opponent could make a move that would win on the
next turn, the computer should make a move in that same space
* otherwise if the computer could make a move that would provide a choice of winning
moves on the next turn (by giving the computer 2 in a row on a row and column, for
example), do so
* otherwise if the computer could make a move that would provide a single winning
move on the next turn, do so
* otherwise move in any empty space