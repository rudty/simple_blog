json.extract! article, :id, :nickname, :title, :content, :created_at, :updated_at
json.url article_url(article, format: :json)
