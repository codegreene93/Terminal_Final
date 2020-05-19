json.extract! purchaseorder, :id, :orderno, :supplier, :description, :cost, :created_at, :updated_at
json.url purchaseorder_url(purchaseorder, format: :json)
