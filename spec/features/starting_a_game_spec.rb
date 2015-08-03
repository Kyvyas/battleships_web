require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering for game' do
    asked_for_name
    click_submit_name_button
  end

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

  scenario 'No name entered' do
    visit '/New-Game'
    name = ""
    expect{ click_button 'Submit' }.to raise_error "Please enter your name"
  end


end
