feature 'Main' do
  scenario 'allow player1 to check player2 hit poits' do
    visit('/')
    fill_in('player1', with: 'Daniele')
    fill_in('player2', with: 'Sam')
    click_button('Submit')
    expect(page).to have_content(100)
  end
end
