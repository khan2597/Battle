def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Nate Diaz'
    fill_in :player_2_name, with: 'Jorge Masvidal'
    click_button 'Submit'
end