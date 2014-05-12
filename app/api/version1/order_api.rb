module Version1
  class OrderAPI < Grape::API


    resource :orders do

      # desc "Create Order"
      # params do
      #   requires :id, type: Integer, desc: "Item id."
      #   requires :image, type: Rack::Multipart::UploadedFile, desc: "Image file."
      # end
      # post do
      #   authenticate!
      #   image = params[:image]
      #   image_hash = {
      #       filename: image[:filename],
      #       type: image[:type],
      #       headers: image[:head],
      #       tempfile: image[:tempfile]
      #   }
      #   picture = Picture.new
      #   picture.item_id = params[:id]
      #   picture.file = ActionDispatch::Http::UploadedFile.new(image_hash)
      #   picture.save
      #   present :status, "Success"
      #   present :data, picture, with: Version1::Entities::Picture
      # end

    end
  end
end
