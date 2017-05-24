feature 'Main' do
  scenario 'players can see their names on the screen after submitting' do
    visit('/')
    fill_in('player1', with: 'Daniele')
    fill_in('player2', with: 'Sam')
    click_button('Submit')
    expect(page).to have_content('Daniele vs Sam')
  end
end
