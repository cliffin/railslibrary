json.extract! bookstatus, :id, :book_name, :available, :created_at, :updated_at
json.url bookstatus_url(bookstatus, format: :json)
