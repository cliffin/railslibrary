json.extract! studentsregistered, :id, :first_name, :last_name, :branch, :contact, :book_availed, :exceeded_duration, :created_at, :updated_at
json.url studentsregistered_url(studentsregistered, format: :json)
