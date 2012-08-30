class Upload < ActiveRecord::Base
  
  has_attached_file :attachment,
    :styles =>{
      :thumb  => "100x75#",
      :medium => "200x150#"
    },
    :convert_options => { 
      :thumb => "-quality 95", 
      :medium => "-quality 95"
    }

    validates_attachment_presence :attachment
end
