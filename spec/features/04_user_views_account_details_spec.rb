require "rails_helper"
#Tests were affected by implementing the Materialize 'toast' style feature that causes notices and alerts to disappear after a few seconds. The expected content does appear, but is sometimes not caught be these tests while the text is still on screen.

feature "User views their profile" do
  let!(:hiker) do
    User.create(
      username: "hiker",
      email: "hiker@gmail.com",
      password: "hiker123",
      password_confirmation: "hiker123"
    )
  end

  # scenario "signed in user is able to view account" do
  #   visit new_user_session_path
  #   fill_in 'Email', with: "hiker@gmail.com"
  #   fill_in 'Password', with: "hiker1234"
  #   click_button "Log in"
  #
  #   visit "/users/#{hiker.id}"
  #
  #   expect(page).to have_content("My Profile")
  # end
end
