module StatsPlots

using Reexport
import RecipesBase: recipetype
import Tables
import TableOperations
using RecipesPipeline
@reexport using Plots
import Plots: _cycle
using Plots.PlotMeasures
using StatsBase
using Distributions
using LinearAlgebra: eigen, diagm
import DataValues: DataValue
using Widgets, Observables
import Observables: AbstractObservable, @map, observe
import Widgets: @nodeps
import DataStructures: OrderedDict
import Clustering: Hclust, nnodes
using Interpolations
using MultivariateStats: MultivariateStats
using AbstractFFTs: fft, ifft
import KernelDensity
using NaNMath
@recipe f(k::KernelDensity.UnivariateKDE) = k.x, k.density
@recipe f(k::KernelDensity.BivariateKDE) = k.x, k.y, permutedims(k.density)

@shorthands cdensity

export @df, dataviewer

include("df.jl")
include("interact.jl")
include("corrplot.jl")
include("cornerplot.jl")
include("distributions.jl")
include("boxplot.jl")
include("dotplot.jl")
include("violin.jl")
include("ecdf.jl")
include("hist.jl")
include("marginalhist.jl")
include("marginalscatter.jl")
include("marginalkde.jl")
include("bar.jl")
include("dendrogram.jl")
include("andrews.jl")
include("ordinations.jl")
include("covellipse.jl")
include("errorline.jl")

end # module
