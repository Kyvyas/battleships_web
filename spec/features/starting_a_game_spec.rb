require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering for game' do
    asked_for_name
    click_submit_name_button
  end

  # scenario 'set default name when none is entered' do
  #   visit 
  # end

  def asked_for_name
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name"
  end

  def click_submit_name_button
    visit '/New-Game'
    click_button 'Submit'
    expect(page).to have_content "Registration successful"
  end

  def no_name
  end

end
