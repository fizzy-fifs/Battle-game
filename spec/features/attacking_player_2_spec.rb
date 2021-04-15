feature 'attacking player 2' do
    scenario 'get a confirmation' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content "John attacked Peter"
    end
end