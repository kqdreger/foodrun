class Item < ApplicationRecord
	belongs_to :order
  	validates_presence_of :name, :description
  	broadcasts_to :order, inserts_by: :append, target: "items"
end
