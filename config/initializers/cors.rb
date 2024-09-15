Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # origins 'localhost:3001' # フロントエンドのURLを指定
      origins 'https://recruitment-app2-frontend.vercel.app'
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end