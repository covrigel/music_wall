class Song < ActiveRecord::Base

  LINK_REGEX = /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/

  validates :title, presence: true
  validates :author, presence: true
  validates :link, presence: true, format: {with: LINK_REGEX, message: "The link you provided cannot be accepted as it is"}

end