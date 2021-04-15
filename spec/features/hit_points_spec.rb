feature 'View Hit Point' do
    scenario 'See player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Peter: 60HP'
    end

end