require 'active_model/serializer'

class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :shipping_address, :billing_address

  def id
    object.id
  end

  def firstname
    object.try :first_name
  end

  def lastname
    object.try :last_name
  end

  def email
    object.email
  end

  def shipping_address
    address_hash object.shipping_address
  end

  def billing_address
    address_hash object.billing_address
  end

  private

  def address_hash(address)
    {
      address1: address.address1,
      address2: address.address2,
      zipcode: address.zipcode,
      city: address.city,
      state: address.state.name,
      country: address.country.name,
      phone: address.phone
    }
  end
end