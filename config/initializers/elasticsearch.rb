if File.exists?("elasticsearch-5.6.16/config/elasticsearch.yml")
   config = YAML.load_file("elasticsearch-5.6.16/config/elasticsearch.yml")[Rails.env].symbolize_keys
   Elasticsearch::Model.client = Elasticsearch::Client.new(config)
end
