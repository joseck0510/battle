require 'spec_helper'

RSpec.feature "Enter Names", :type => :feature do
  scenario "Player 1 and Player 2 enter their names" do
    visit '/'

    fill_in "player_1", :with => "Bob"
    fill_in "player_2", :with => "Bub"
    click_button 'Enter Names'

    expect(page).to have_text("Player 1 is called Bob and Player 2 is called Bub")

  end
end
