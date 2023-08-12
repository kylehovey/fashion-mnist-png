using PNGFiles
using FixedPointNumbers
using MLDatasets
using PlotlyJS

# load full training set
# train_x, train_y = FashionMNIST.traindata()

# load full test set
# test_x, test_y = FashionMNIST.testdata()

function metric(image::Array{N0f8,2})
  buf = IOBuffer()
  PNGFiles.save(buf, image)
  length(take!(buf))
end

function compress()
  sizes = [Vector{Any}() for _ in 1:10]
  train_x, train_y = FashionMNIST.traindata()

  for k in 1:size(train_x, 3)
    image = train_x[:, :, k]
    label = train_y[k]

    push!(sizes[label+1], metric(image))
  end

  sizes
end

function chart(sizes)
  names = FashionMNIST.classnames()

  data = [box(y=[], name="first")]

  for (k, points) in enumerate(sizes)
    push!(data, box(y=points, name=names[k]))
  end

  layout = Layout(
    title="Compression lengths for Fashion MNIST",
    xaxis_title="Label",
    yaxis_title="Compressed Size (bytes)",
    showlegend=true
  )

  plot(data, layout)
end

function main()
  sizes = compress()
  plot = chart(sizes)

  display(plot)
end
