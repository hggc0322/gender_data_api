class Company < ApplicationRecord
  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks
  #
  # # ElasticSearch Index
  # settings search: { number_of_shards: 1 } do
  #   mappings dynamic: 'false' do
  #     indexes :name, analyzer: 'english'
  #   end
  # end
end
