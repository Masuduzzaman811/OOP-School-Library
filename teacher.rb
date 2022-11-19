require_relative './person'

class Teacher < Person
  attr_reader :specialization

  # rubocop:disable Style/OptionalBooleanParameter

  def initialize(age, specialization, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @id = Random.rand(1...1000)
    @specialization = specialization
  end
  # rubocop:enable Style/OptionalBooleanParameter

  def can_use_services?
    true
  end
end
