require 'rails_helper'

RSpec.describe 'Api::V1::HealthCheck' do
  describe 'GET api/v1/health_check' do
    subject(:healht_check) { get(api_v1_health_check_path) }

    it '正常にレスポンスが返る' do
      healht_check
      res = response.parsed_body
      expect(res['message']).to eq 'helth_check OK'
      expect(response).to have_http_status(:success)
    end
  end
end
