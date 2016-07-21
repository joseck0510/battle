require 'spec_helper'

RSpec.feature "Show Hit Points", :type => :feature do
  scenario "Shows Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Bub has 60 HP")
  end
  scenario "shows Player 1's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Bob has 60 HP")
  end
end
