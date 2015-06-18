## Assignment

```markdown
* [ ] **Yak Shaving**
  *  _WIP Branch_:
    * `TIY-Assignments:17--tdg-test-driven-gambling`
  * _WIP Issues_: `17 -- TDG - Test Driven Gambling -- YOUR NAME`
    * [ ] link to PR for `TIY-Assignments:17--tdg-test-driven-gambling`
  * _WIP Files_:
    * `TIY-Assignments:17--tdg-test-driven-gambling`
      * `tdd/blackjack/README.md`
      * `tdd/blackjack/game_test.rb`
      * `tdd/blackjack/game.rb`
      * `tdd/blackjack/card_test.rb`
      * `tdd/blackjack/card.rb`
      * `tdd/blackjack/deck_test.rb`
      * `tdd/blackjack/deck.rb`
* [ ] **Blackjack**
  * TDD for blackjack, playable in irb 
  * [ ] **BEAST MODE**
    * [ ] build a blackjack app in Rails
  ```
  
### Blackjack

Blackjack is a game played with a deck of 52 cards. A card has a face value and a suit (2-10, Jack, Queen, King,
Ace for the face values; Diamonds, Hearts, Clubs, Spades for the suits). Each card is a unique combination of 
face value and suit.

In our version, there is one player playing against a dealer. The game starts with the player and dealer each getting 
a hand of two cards from the deck. The player can ask for an additional card (`hit`) as long as the value of the 
player's hand is less than 21. The player loses by ending up with a hand valued at greater than 21. Otherwise, the
player wins by ending up with a hand value greater than the dealer's hand value, or if the dealer's hand value exceeds
21. 

### Card values

Numbered cards have the value printed on them. Jacks, Queens, and Kings each have a value of 10. An Ace can have a 
value of 1 or 11, whichever maximizes the value of the entire hand. For example:

* A 5 and a Jack have a combined value of 15
* A 5 and an Ace have a combined value of 16 (5 + 11)
* A 5, 8, and Ace have a combined value of 14 (5 + 8 + 1)
* A 5 and two Aces have a combined value of 17 (5 + 11 + 1)

### The game

Once a game has started (in irb), it should display the hands for the player and the dealer. If the value of the player's
hand is 21, and the value of the dealer's hand is less, the game should display the message "Blackjack! Player wins."
If both player and dealer have 21, the game should display the message "Push! No winner."

The player may request an additional card by calling `@game.hit!`, which deals another card from the deck into the
player's hand. After each hit, the game should display the hands for the player and the dealer and report a win or
loss if applicable. If the player does not want to hit any more, call `@game.stay`. Then control passes to the dealer.

### The dealer

coming soon...

