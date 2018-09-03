module ApplicationHelper
  #devisesフォルダ以外のviewでもdevise関係のメソッドが使えるようになる
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def user_avatar(user)
    if user.avatar.attached?
      image_tag user.avatar.variant(resize: "100x80"), :alt => "UserIcon"
    else
      image_tag "/Noimage.png", :size => '80x80', :alt => "NoimageUserIcon"
    end
  end

end
