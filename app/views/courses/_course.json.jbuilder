json.extract! course, :id, :name, :course_no, :discipline, :area, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
