module Blog
	class Currency < Grape::API
		version 'v1', using: :path
		resource :blog do
			get :exchange do
				params

			end

		end
	end
end 