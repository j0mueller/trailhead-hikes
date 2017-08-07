require "rails_helper"

feature "User signs in to existing account" do
  let!(:newuser) do
    User.create(
      username: "joeshmoe",
      email: "joeshmoe@gmail.com",
      password: "joe1234",
      password_confirmation: "joe1234"
    )
  end

  scenario "user supplies valid and required sign-in information" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"

    expect(page).to have_content "Signed in successfully"
    expect(page).to have_content "joeshmoe"
    expect(page).to have_content "Sign Out"
  end

  scenario "user submits incorrect email" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@mail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"

    expect(page).to have_content "Invalid Email or password."
  end

  scenario "user submits incorrect password" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "jo1234"
    click_button "Log in"

    expect(page).to have_content "Invalid Email or password."
  end

  scenario "user submits blank form" do
    visit new_user_session_path
    click_button "Log in"

    expect(page).to have_content "Invalid Email or password."
  end

end
