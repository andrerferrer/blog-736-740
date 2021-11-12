# download the picture from somewhere to the computer
picture_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg'
file = URI.open(picture_url)

new_article = Article.create!(
  title: 'Nintendo Entertainment System',
  body: 'A very cool videogame'
)
# upload the picture to cloudiary, attaching to the article
new_article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
