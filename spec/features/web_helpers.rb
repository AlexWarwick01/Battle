def sign_in_and_play
  visit('/names')
  fill_in :player1 , with: "Alex"
  fill_in :player2 , with: "Tuyet"
  click_button "Submit"
end
