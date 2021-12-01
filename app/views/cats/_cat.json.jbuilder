json.extract! cat, :id, :user_id, :name, :description, :picture, :dateofbirth, :breed, :sex, :origin, :dead, :causeofdeath, :created_at, :updated_at
json.url cat_url(cat, format: :json)
