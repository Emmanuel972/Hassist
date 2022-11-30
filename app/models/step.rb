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
                url: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669835428/development/demande_%C3%A0_la_MDPH_neo9by.pdf",
                key: "demande_à_la_MDPH_neo9by" },
              { name: "Certificat médical",
                url:"https://res.cloudinary.com/daixhq5r5/image/upload/v1669835438/development/certificat_m%C3%A9dical_vj8qrr.pdf",
                key: "certificat_médical_vj8qrr" },
              { name: "Geva-sco",
                url: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669835453/development/Geva-sco_t3ao7b.pdf",
                key: "Geva-sco_t3ao7b" }]
    end
  end
end
