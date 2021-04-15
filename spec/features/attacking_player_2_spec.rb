feature 'attacking player 2' do
    scenario 'get a confirmation' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content "John attacked Peter"
    end

    scenario 'reduce player 2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        expect(page).to_not have_content 'Peter: 60HP'
        expect(page).to have_content 'Peter: 50HP'
    end
end