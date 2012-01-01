Liquid = require "../../liquid_base"

module.exports = class Unless extends require("./if")

  # Unless is a conditional just like 'if' but works on the inverse logic.
  #
  #   {% unless x < 0 %} x is greater than zero {% end %}
  #
  render: (context) ->
    @blocks[0].negate = true
    super(context)

Liquid.Template.registerTag "unless", Unless
