feature 'Main' do
  scenario 'players can see their names on the screen after submitting' do
    sign_in_and_play
    expect(page).to have_content('Ian vs Sam')
  end
end
