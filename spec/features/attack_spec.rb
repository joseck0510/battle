require 'spec_helper'

RSpec.feature "Attack Player", :type => :feature do
  scenario "Player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Bob has attacked Bub"
  end
end
