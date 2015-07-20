describe "adding a participant to the photo_session" do

it 'makes sure the participant name is added' do
  visit '/participant'
  fill_in 'Name', :with => ''
  click_button 'submit'
    expect(page).to have_content 'Success'
end

it 'makes sure the add users button works' do
  visit '/participant'
  fill_in 'Name', :with => 'UsersName'
  fill_in 'Email', :with => 'User@email.com'

  this is the other guys stuff --> expect(page.all("ul.todo_items li").size).to eq(0)

  click_button 'Add Person'
    expect(page).to have_content 'Success'
end

end
