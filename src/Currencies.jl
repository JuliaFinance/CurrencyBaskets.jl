module Currencies

# Quantities
include("Quantities.jl")

using MacroTools
using Requests
using Compat

import Base: +, -, *, /, ==
import Currencies.Quantities: unit

# Exports
export AbstractMonetary, Monetary
export currency, decimals, @usingcurrencies
export currencyinfo, iso4217num, iso4217alpha, shortsymbol, longsymbol
export valuate, ExchangeRateTable, ecbrates
export Basket, StaticBasket, DynamicBasket
export simplefv, compoundfv
export newcurrency!, @usingcustomcurrency
export format

# Currency data
include("data/currencies.jl")
include("data/symbols.jl")
include("data/locale.jl")

# Monetary type, currencies, and arithmetic
include("monetary.jl")
include("currency.jl")
include("arithmetic.jl")

# Baskets
include("basket.jl")
include("mixed.jl")

# Computations (valuation & investments)
include("valuate.jl")
include("investments.jl")

# Interface (display/formatting, convenience macro)
include("format/formatting.jl")
include("usingcurrencies.jl")
include("custom.jl")

end # module
