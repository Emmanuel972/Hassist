class Step < ApplicationRecord
  has_many :user_steps
  belongs_to :user, optional: true
  has_many_attached :files, dependent: :destroy

  validates :name, :content, presence: true
  validates :name, length: { minimum: 3 }
  validates :content, length: { minimum: 10 }

  scope :publicly_available, -> { where(user: nil) }
  scope :privately_available, -> { where.not(user: nil) }

  def url_files
    case name
    when "MDPH"
      return [{ name: "Demande à la MDPH",
                url: "https://asset.cloudinary.com/daixhq5r5/1af939d44835060c05f0adf0fa203eda",
                key: "demande_à_la_MDPH_f6pmsj" },
              { name: "Certificat médical",
                url: "https://asset.cloudinary.com/daixhq5r5/e7bd8fe204a2ea7f24769f1b5ebb62f7",
                key: "certificat_médical_syzwo0" },
              { name: "Geva-sco",
                url: "https://asset.cloudinary.com/daixhq5r5/fd52db4562504c861c118389ffb64694",
                key: "Geva-sco_sjyqul" }]
    end
  end
end
