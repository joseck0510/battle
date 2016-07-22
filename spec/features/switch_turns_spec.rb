feature 'switches turns' do
  scenario 'whos turn is it' do
    sign_in_and_play
    expect(page).to have_content "Albie's turn"
  end

  scenario 'after player 1 attacks it switches players' do
    sign_in_and_play
    attack_and_switch_turns
    expect(page).to have_content "Noby's turn"
    expect(page).not_to have_content "Albie's turn"
  end
  scenario 'after player 2 attacks it switches players' do
    sign_in_and_play
    attack_and_switch_turns
    attack_and_switch_turns
    expect(page).to have_content "Albie's turn"
    expect(page).not_to have_content "Noby's turn"
  end
end
