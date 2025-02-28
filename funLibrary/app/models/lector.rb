class Lector < ApplicationRecord
    has_many :books
    # Callback pour générer le UUID avant la création
    before_create :generate_uuid
  
    # Validation des autres attributs
    validates :first_name, :last_name, :address, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    def full_name
        "#{first_name} #{last_name}"
      end

  
    private
  
    # Méthode pour générer le UUID
    def generate_uuid
      self.uuid ||= SecureRandom.uuid
    end
  end