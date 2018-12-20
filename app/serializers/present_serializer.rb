class PresentSerializer < ActiveModel::Serializer
  attributes :id, :contents, :name_recepient, :linked_elf, :status
end
