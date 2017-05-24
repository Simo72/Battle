feature 'Main' do
  scenario 'expect players to fill in their names in a form' do
    visit('/')
    fill_in('player1', with: 'Daniele')
    fill_in('player2', with: 'Sam')
  end

  scenario 'players can submit their names' do
    visit('/')
    click_button('Submit')
  end

  scenario 'players can see their names on the screen after submitting' do
    visit('/')
    fill_in('player1', with: 'Daniele')
    fill_in('player2', with: 'Sam')
    click_button('Submit')
    expect(page).to have_content('Daniele Sam')
  end
end
