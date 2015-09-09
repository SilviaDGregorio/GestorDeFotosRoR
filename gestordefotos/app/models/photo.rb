#encoding: utf-8
class Photo < ActiveRecord::Base
	belongs_to :album
	
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/add.png"
    validates_attachment_content_type :image, :content_type => ["image/jpeg","image/pjpeg","image/x-citrix-pjpeg","image/x-citrix-jpeg"], :message => "Solo se admiten imágenes JPG"
    validates_attachment_presence :image, :message => "Selecciona una imagen"
    validates_attachment_size :image, :less_than => 3072000, :message => "La imagen es demasiado pesada (3 Mb máximo)"



end
