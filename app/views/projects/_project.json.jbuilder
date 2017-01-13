json.extract! project, :id, :sub_category_id, :title, :description, :item_number, :size, :materials, :recent, :created_at, :updated_at
json.url project_url(project, format: :json)