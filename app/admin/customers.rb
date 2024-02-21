ActiveAdmin.register Customer do
  remove_filter :image_attachment, :image_blob

  permit_params :full_name, :phone_number, :email_address, :notes, :image

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end
end
