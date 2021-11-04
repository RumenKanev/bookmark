feature 'Deleting a bookmark' do
    scenario 'A user can delete a bookmark' do
      Bookmark.create(url: 'http://www.giraffeacademy.com', title: 'Giraffe Academy')
      visit('/bookmarks')
      expect(page).to have_link('Giraffe Academy', href: 'http://www.giraffeacademy.com')
  
      first('.bookmark').click_button('Delete')
    
  
      expect(current_path).to eq '/bookmarks'
      expect(page).not_to have_link('Giraffe Academy', href: 'http://www.giraffeacademy.com')
    end
  end