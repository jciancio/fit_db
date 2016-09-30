class UsersController < ApplicationController
  active_scaffold :"user" do |config|
    config.columns[:gender].form_ui = :select
    config.columns[:gender].options = { options: User::GENDER.map(&:to_sym) }
    config.columns[:birthday].form_ui = :date_picker
    config.columns.exclude :feet, :inches
    config.columns[:height].params.add :feet, :inches
  end

  private
    def before_update_save(record)
      height = (record.feet.to_i * 12) + (record.inches.to_i)
      record.update(height: height)
    end
end
