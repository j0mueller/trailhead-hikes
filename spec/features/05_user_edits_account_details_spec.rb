require "rails_helper"

feature "User edits account" do
  let!(:newuser) do
    User.create(
      username: "joeshmoe",
      email: "joeshmoe@gmail.com",
      password: "joe1234",
      password_confirmation: "joe1234"
    )
  end

  scenario "user is not signed in" do
    visit root_path

    expect(page).to_not have_content("joeshmoe")
  end

  scenario "signed in user can edit account details" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"
    visit "/users/#{newuser.id}"
    click_link "Edit Account"

    expect(page).to have_content("Edit My Account")
  end


  scenario "User edits username" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"
    click_link "joeshmoe"
    click_link "Edit Account"
    fill_in 'Username', with: "BillyBob"
    fill_in 'Current password', with: "joe1234"

    click_button 'Update'
    expect(page).to have_content "Your account has been updated successfully"
  end

  scenario "User edits email" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"
    click_link "joeshmoe"
    click_link "Edit Account"
    fill_in 'Email', with: "joe@mail.com"
    fill_in 'Current password', with: "joe1234"

    click_button 'Update'
    expect(page).to have_content "Your account has been updated successfully"
  end

  # scenario "User edits password" do
  #   visit new_user_session_path
  #   fill_in 'Email', with: "joeshmoe@gmail.com"
  #   fill_in 'Password', with: "joe1234"
  #
  #   click_button "Log in"
  #   click_link "joeshmoe"
  #   click_link "Edit Account"
  #   fill_in 'Password (6 characters minimum)', with: "apples"
  #   fill_in 'Confirm Password', with: "apples"
  #   fill_in 'Current password', with: "joe1234"
  #
  #   click_button 'Update'
  #   expect(page).to have_content "Your account has been updated successfully"
  end
end
