class API < Grape::API

  include Grape::Rails::Cache

  prefix 'v1'
  version 'v1', using: :header, vendor: 'some_vendor'
  format :json
  content_type :json, "application/json;charset=utf-8"

  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end

  helpers APIHelper

  mount Version1::StoreAPI
  mount Version1::UserAPI
  mount Version1::OrderAPI
  mount Version1::AdminUserAPI

  add_swagger_documentation :base_path => '/api',
                            :markdown => true,
                            :hide_documentation_path => false

end
