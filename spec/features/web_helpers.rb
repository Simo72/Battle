def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Ian')
  fill_in('player2', with: 'Sam')
  click_button('Submit')
end
