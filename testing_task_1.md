### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

# incorrect convention used for naming function - ie should be 'snake_case'
# equality operator incorrect - should be ==
  def checkforAce(card)
    if card.value = 1 
      return true
    else
      return false
    end
  end

  # spelling typo when defining function - 'dif' instead of 'def'
  dif highest_card(card1 card2) #should be a class method
  if card1.value > card2.value
    return card #card not defined
  else
    return card2
  end
end
end

# total hasn't been set a starting value therefore assignment operator won't know where to increment from
# function is also sitting outside the scope of the Cardgame Class
def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total #line needs to go after next end
  end
end
```
