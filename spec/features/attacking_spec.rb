feature 'Main' do
  scenario 'Attack player 2 button' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Ian attacked Sam'
  end
end

# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation
feature 'Player 2 attack' do
  scenario 'get confirmation after attack' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).to have_content 'Sam Hitpoints: 90'
  end
end
