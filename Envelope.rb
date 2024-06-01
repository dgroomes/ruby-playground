# This class is for me to explore some features of the language, especially with regard to classes.
class Envelope

  # This has the effect of defining a "message" method that returns the value of the "@message" instance variable.
  # We might say that this "message" method as an accessor method for the "message" attribute. Attributes are actually
  # just a concept and idiom. In this class, we're modeling a read-only "message" attribute, which is implemented as a
  # combination of the assignment in "initialize", and the accessor method defined using "attr_reader".
  attr_reader :message

  def initialize(message)
    @message = message
  end
end