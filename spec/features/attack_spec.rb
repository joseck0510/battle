require 'spec_helper'

RSpec.feature "Attack Player", :type => :feature do
  scenario "Player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Bob has attacked Bub"
  end
  scenario "Player 2 attacks player 1 and gets confirmation" do
    sign_in_and_play
    click_link "Attack"
    click_button "OK"
    click_link "Attack"
    expect(page).not_to have_content "Bob has attacked Bub"
    expect(page).to have_content "Bub has attacked Bob"
  end

  scenario "Player 2 takes 10 hit points damage" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Bub takes 10 HP damage. He now has 50 HP"
  end
  scenario "Player 1 takes 10 hit points damage" do
    sign_in_and_play
    click_link "Attack"
    click_button "OK"
    click_link "Attack"
    expect(page).to have_content "Bob takes 10 HP damage. He now has 50 HP"
  end
end
