class Image < ApplicationRecord
  acts_as_taggable_on :tags
  validates(
    :url,
    format: {
      with: Regexp.new(
        '\Ahttps?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b'\
        '([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
        Regexp::IGNORECASE
      )
    },
    presence: true
  )
end
