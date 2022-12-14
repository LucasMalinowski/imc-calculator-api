# frozen_string_literal: true

require "rails_helper"

RSpec.describe Imc, type: :model do

  describe ".superclass" do
    it { expect(described_class.superclass).to be(ApplicationRecord) }
  end


  describe "database" do
    it { is_expected.to have_db_column(:height).of_type(:float) }
    it { is_expected.to have_db_column(:weight).of_type(:float) }

    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end
end

