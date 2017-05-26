# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'Lose game' do
  scenario 'Player 2 loses game' do
    sign_in_and_play
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
    click_button('Attack')
    click_link("OK")
expect(page).to have_content "You lose Sam 0 points!!!"
  end
end
