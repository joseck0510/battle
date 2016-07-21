feature 'Switch turns' do
  scenario 'View whose turn it is' do
    sign_in_and_play
    expect(page).to have_content "Turn: Bob"
  end
  scenario 'After player 1 attacks, do the switch' do
    sign_in_and_play
    click_link "Attack"
    click_link "OK"
    expect(page).not_to have_content "Turn: Bob"
    expect(page).to have_content "Turn: Bub"
  end
end
