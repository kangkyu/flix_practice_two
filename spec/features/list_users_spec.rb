require 'spec_helper'

describe "viewing the list of users" do
  
  it "shows the users" do
    user1 = User.create!(user_attributes(username: "Larry", email: "larry@example.com"))
    user2 = User.create!(user_attributes(username: "Moe", email: "moe@example.com"))
    user3 = User.create!(user_attributes(username: "Curly", email: "curly@example.com"))

    sign_in(user1)
    visit users_url

    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end

end