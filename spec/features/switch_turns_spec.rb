feature 'switches turns' do
  scenario 'whos turn is it' do
    sign_in_and_play
    expect(page).to have_content "Albie's turn"
  end

  scenario 'after player 1 attacks it switches players' do
    sign_in_and_play
    click_button 'attack'
    click_button 'Switch turns'
    expect(page).to have_content "Noby's turn"
    expect(page).not_to have_content "Albie's turn"
  end
end
