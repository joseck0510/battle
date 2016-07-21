def sign_in_and_play
  visit '/'
  fill_in "player_1", :with => "Bob"
  fill_in "player_2", :with => "Bub"
  click_button 'Enter Names'
end

def attack_and_confirm
  click_link "Attack"
  click_button "OK"
end
