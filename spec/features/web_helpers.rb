def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Daniele')
  fill_in('player2', with: 'Sam')
  click_button('Submit')
end
