feature 'Main' do
  scenario 'Attack player 2 button' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Ian attacked Sam'
  end
end
