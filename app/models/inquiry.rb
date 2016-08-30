class Inquiry < ActiveRecord::Base

    validates :name,  :presence => {:message => '名前を入力してください'}
    
    validates :email, format: { :message => 'メールアドレスを入力してください',with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
    
    validates :message,  :presence => {:message => 'お問い合わせ内容を入力してください'}

end