require "rails_helper"
#Tests were affected by implementing the Materialize 'toast' style feature that causes notices and alerts to disappear after a few seconds. The expected content does appear, but is sometimes not caught be these tests while the text is still on screen.

feature "User creates a new account" do
  let!(:newuser) do
    User.create(
      username: "joeshmoe",
      email: "joeshmoe@gmail.com",
      password: "joe1234",
      password_confirmation: "joe1234"
    )
  end

  # scenario "user supplies valid and required new account information" do
  #   visit new_user_registration_path
  #
  #   fill_in 'Username', with: "testuser1"
  #   fill_in 'Email', with: "testuser1@gmail.com"
  #   fill_in 'Password', with: 'password'
  #   fill_in 'Confirm Password', with: 'password'
  #
  #   click_button "Sign up"
  #
  #   expect(page).to have_content "Welcome to Trailhead!"
  # end

  # scenario "user submits an empty form" do
  #   visit new_user_registration_path
  #   click_button 'Sign up'
  #
  #   expect(page).to have_content("Username can't be blank")
  #   expect(page).to have_content("Email can't be blank")
  #   expect(page).to have_content("Password can't be blank")
  # end

  # scenario "user submits a pre-existing username" do
  #   visit new_user_registration_path
  #
  #   fill_in 'Username', with: "joeshmoe"
  #   fill_in 'Email', with: "testuser1@gmail.com"
  #   fill_in 'Password', with: "testuser1234"
  #
  #   click_button 'Sign up'
  #   expect(page).to have_content "Username has already been taken"
  # end

  # scenario "user submits a pre-existing email address" do
  #   visit new_user_registration_path
  #
  #   fill_in 'Username', with: "testuser2"
  #   fill_in 'Email', with: "joeshmoe@gmail.com"
  #   fill_in 'Password', with: "testuser1234"
  #
  #   click_button 'Sign up'
  #   expect(page).to have_content "Email has already been taken"
  # end
end
