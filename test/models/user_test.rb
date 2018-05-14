require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "rakoto", last_name: "nandra", email: "koto@exemple.com", encrypted_password: "rutrhrzuerzirzyjrei")
  end

  test "Impossible de sauvegarder avec un prénom vide" do
    assert_not @user.save
  end

  test "Impossible de sauvegarder avec un prénom avec juste des espaces" do
    @user.last_name = "     "
    assert_not @user.save
  end

  test "Impossible de créer un user qui a le même email qu'un autre user" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end


end
