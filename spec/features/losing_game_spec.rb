feature 'losing game' do
  scenario 'when a player 2 gets to 0 HP he/she loses the game' do
    sign_in_and_play
    11.times{ attack_and_switch_turns }
    expect(page).to have_content 'Noby 0HP'
    expect(page).to have_content 'Noby loses'
  end
end
