feature 'Main' do
  scenario 'Attack player 2 button' do
    sign_in_and_play
    click_button('Attack')
    find_button('Attack').click
    #expect(page).to have_content('Open up a whole can of whoop ass on player 2')
  end
end
