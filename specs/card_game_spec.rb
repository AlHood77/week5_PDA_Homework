require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game")
require_relative("../card")

class CardGameTest < MiniTest::Test

    def setup
        @card1 = Card.new("Hearts", 8)
        @card2 = Card.new("Diamonds", 1)

        @cards = [@card1, @card2]
    end

    def test_check_for_ace_in_game__true
        assert_equal(true, CardGame.check_for_ace(@card2))
    end

    def test_check_for_ace_in_game__false
        assert_equal(false, CardGame.check_for_ace(@card1))
    end

    def test_highest_card
        assert_equal(@card1, CardGame.highest_card(@card1, @card2))
    end

    def test_cards_total
        (assert_equal("You have a total of 9", CardGame.cards_total(@cards)))
    end

end
