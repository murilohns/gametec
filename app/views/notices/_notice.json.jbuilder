json.extract! notice, :id, :title, :content, :admin_id, :created_at, :updated_at
json.url notice_url(notice, format: :json)