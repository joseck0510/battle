feature "Losing the game" do

  scenario "player2 hits zero HP and loses the game" do
    sign_in_and_play
    11.times{attack_and_confirm}

    expect(page).to have_content "Bub has 0 HP"
    expect(page).to have_content "Bub has lost the game!"
  end

end
