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
                url: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669947333/production/demande_%C3%A0_la_MDPH_f6pmsj.pdf",
                key: "demande_à_la_MDPH_f6pmsj" },
              { name: "Certificat médical",
                url: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669947260/production/certificat_m%C3%A9dical_syzwo0.pdf",
                key: "certificat_médical_syzwo0" },
              { name: "Geva-sco",
                url: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669947191/production/Geva-sco_sjyqul.pdf",
                key: "Geva-sco_sjyqul" }]
    end
  end
end
