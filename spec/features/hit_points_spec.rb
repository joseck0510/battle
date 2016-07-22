feature "View Hit Points" do
  scenario "Show Player's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Albie vs Player 2: Noby Albie 60HP Noby 60HP")
  end
end
