class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_attached_file :avatar,
                    :default_url  => "/avatars/default/:style/missing.png",
                    :styles       => { :normal => "215x215" },
                    :path         => ":rails_root/public/avatars/:class/:attachment/:id_partition/:style/:filename",
                    :url          => "/avatars/:class/:attachment/:id_partition/:style/:basename.:extension"
  validates_attachment :avatar,
                       :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"] },
                       :size => { :in => 10.kilobytes..50.kilobytes, :message => "must be in between 10KB and 50KB" }

  validates_attachment_content_type :avatar, :content_type => /\Aimage/

  has_many :relationships, foreign_key: "follower_id", dependent: :destroy

  has_many :followed_users, through: :relationships, source: :followed

  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower


  #XXX: not works for me yet:
  #validates :follower_id, :followed_id, presence: true
  #validates_uniqueness_of :follower_id, scope: [:followed_id]

  #validates :follower_id, :followed_id, presence: true
  #validates_uniqueness_of :follower_id, scope: [:followed_id]

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    self.relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

end
