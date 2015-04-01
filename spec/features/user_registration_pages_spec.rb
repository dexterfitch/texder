require 'rails_helper'

describe 'Registering a user' do
  it 'registers a new user' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: "thedoc@lollipop.com"
    fill_in 'Name', with: "Doc Lollipop"
    fill_in 'Number', with: "1234567890"
    fill_in 'Password', with: "12345678"
    fill_in 'Password confirmation', with: "12345678"
    click_button "Sign up"
    expect(page).to have_content "Welcome!"
  end

  it 'edits a user\'s account' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Edit profile'
    fill_in 'Email', with: "theunicorndoctorisin@lollipop.com"
    fill_in 'Name', with: "Doctor Lollipop"
    fill_in 'Number', with: "0987654321"
    fill_in 'Current password', with: user.password
    click_button "Update"
    expect(page).to have_content "updated successfully"
  end

  it 'deletes a user\'s account' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Edit profile'
    click_button 'Delete my account'
    expect(page).to have_content "successfully cancelled"
  end
end
