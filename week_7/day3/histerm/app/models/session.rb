require 'securerandom'
class Session < ActiveRecord::Base
  has_many :commands

  def to_param
    slug
  end

  def self.build!(opts = {})
    build(opts).save!
  end

  def self.build(opts = {})
    new(title: opts[:title] || new_title, slug: new_slug)
  end

  private

  def self.new_title
    %w(foo bar baz rails the-iron-yard fun code terminal command line emulator console).sample(3).join('-')
  end

  def self.new_slug
    SecureRandom.uuid
  end
end
