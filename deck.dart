// Deck Program
// -----------------------------------------------------------------------------
class Deck {
  List<Card> cards = [];

  var suits = ["Hearts", "Diamonds", "Clubs", "Spades"];
  var ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];

  Deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(rank, suit);
        cards.add(card);
      }
    }
  }

  toString() {
    int i =1;
    String returnString = "";
    for (var card in cards) {
      returnString = returnString + "${i} ${card.rank} of ${card.suit}\n";
      i++;
    }
    return returnString;
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suitToMatch) {
    return cards.where((card) => card.suit == suitToMatch);
  }
}

class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  toString() {
    return "${rank} of ${suit}\n";
  }
}

main() {
  var deck = Deck();
  print("-------- NEW DECK -------\n");
  print(deck);
  deck.shuffle();
  print("----- SHUFFLED DECK -----\n");
  print(deck);
  print("--- ALL THE DIAMONDS ---");
  print(deck.cardsWithSuit("Diamonds"));
}