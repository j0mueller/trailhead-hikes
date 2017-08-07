require "rails_helper"

feature "User cancels account" do
  let!(:newuser) do
    User.create(
      username: "joeshmoe",
      email: "joeshmoe@gmail.com",
      password: "joe1234",
      password_confirmation: "joe1234"
    )
  end

  scenario "signed in user can cancel account" do
    visit new_user_session_path
    fill_in 'Email', with: "joeshmoe@gmail.com"
    fill_in 'Password', with: "joe1234"
    click_button "Log in"
    click_link "joeshmoe"
    click_link "Edit Account"
    expect(page).to have_content("Unhappy?")

    click_button "Cancel my account"
    expect(page).to have_content("Bye! Your account has been successfully cancelled. We hope to see you again soon.")
  end
end
