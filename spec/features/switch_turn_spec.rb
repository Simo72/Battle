feature 'Switching players turns' do
  scenario 'Switch player 1 to player 2' do
    sign_in_and_play
    click_button('Switch')
    expect(page).to have_content("Sam's turn")
  end

end
