require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a new post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/dog1.jpg")
    fill_in 'Caption', with: '#hathound'
    click_button 'Create Post'
    expect(page).to have_content('#hathound')
    expect(page).to have_css("img[src*='dog1.jpg']")
  end
end
