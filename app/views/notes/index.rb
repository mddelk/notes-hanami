require "faker"

module Notes
  module Views
    module Notes
      class Index < ::Notes::View
        Note = Data.define(:id, :title, :content)

        expose :notes do
          Array.new(10) do
            Note.new(
              id: SecureRandom.uuid,
              title: Faker::ProgrammingLanguage.name,
              content: Faker::Lorem.paragraph
            )
          end
        end
      end
    end
  end
end
