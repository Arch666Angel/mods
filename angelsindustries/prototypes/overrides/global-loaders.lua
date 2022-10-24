if not loaders_graphics then
  data.raw["item"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
  data.raw["item"]["loader"].icon_size = 32
  data.raw["item"]["loader"].icon_mipmaps = 1
  data.raw["loader"]["loader"].icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png"
  data.raw["loader"]["loader"].icon_size = 32
  data.raw["loader"]["loader"].icon_mipmaps = 1
  data.raw["loader"]["loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
      },
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128,
      },
    },
  }

  data.raw["item"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
  data.raw["item"]["fast-loader"].icon_size = 32
  data.raw["item"]["fast-loader"].icon_mipmaps = 1
  data.raw["loader"]["fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-red-ico.png"
  data.raw["loader"]["fast-loader"].icon_size = 32
  data.raw["loader"]["fast-loader"].icon_mipmaps = 1
  data.raw["loader"]["fast-loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
        priority = "extra-high",
        width = 128,
        height = 128,
      },
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128,
      },
    },
  }

  data.raw["item"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
  data.raw["item"]["express-loader"].icon_size = 32
  data.raw["item"]["express-loader"].icon_mipmaps = 1
  data.raw["loader"]["express-loader"].icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png"
  data.raw["loader"]["express-loader"].icon_size = 32
  data.raw["loader"]["express-loader"].icon_mipmaps = 1
  data.raw["loader"]["express-loader"].structure = {
    direction_in = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
        priority = "extra-high",
        width = 128,
        height = 128,
      },
    },
    direction_out = {
      sheet = {
        filename = "__angelsindustries__/graphics/entity/loader/loader-blue.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        y = 128,
      },
    },
  }

  if data.raw["item"]["faster-loader"] then
    data.raw["item"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
    data.raw["item"]["faster-loader"].icon_size = 32
    data.raw["loader"]["faster-loader"].icon = "__angelsindustries__/graphics/icons/loader-green-ico.png"
    data.raw["loader"]["faster-loader"].icon_size = 32
    data.raw["loader"]["faster-loader"].structure = {
      direction_in = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
          priority = "extra-high",
          width = 128,
          height = 128,
        },
      },
      direction_out = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-green.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          y = 128,
        },
      },
    }
  end
  if data.raw["item"]["extremely-fast-loader"] then
    data.raw["item"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
    data.raw["item"]["extremely-fast-loader"].icon_size = 32
    data.raw["loader"]["extremely-fast-loader"].icon = "__angelsindustries__/graphics/icons/loader-purple-ico.png"
    data.raw["loader"]["extremely-fast-loader"].icon_size = 32
    data.raw["loader"]["extremely-fast-loader"].structure = {
      direction_in = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
          priority = "extra-high",
          width = 128,
          height = 128,
        },
      },
      direction_out = {
        sheet = {
          filename = "__angelsindustries__/graphics/entity/loader/loader-purple.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          y = 128,
        },
      },
    }
  end
  if data.raw["technology"]["loader"] then
    data.raw["technology"]["loader"].icon = "__angelsindustries__/graphics/technology/yellow-loader-tech.png"
    data.raw["technology"]["loader"].icon_size = 128
  end
  if data.raw["technology"]["fast-loader"] then
    data.raw["technology"]["fast-loader"].icon = "__angelsindustries__/graphics/technology/red-loader-tech.png"
    data.raw["technology"]["fast-loader"].icon_size = 128
  end
  if data.raw["technology"]["express-loader"] then
    data.raw["technology"]["express-loader"].icon = "__angelsindustries__/graphics/technology/blue-loader-tech.png"
    data.raw["technology"]["express-loader"].icon_size = 128
  end
  if data.raw["technology"]["faster-loader"] then
    data.raw["technology"]["faster-loader"].icon = "__angelsindustries__/graphics/technology/green-loader-tech.png"
    data.raw["technology"]["faster-loader"].icon_size = 128
  end
  if data.raw["technology"]["extremely-fast-loader"] then
    data.raw["technology"]["extremely-fast-loader"].icon =
      "__angelsindustries__/graphics/technology/purple-loader-tech.png"
    data.raw["technology"]["extremely-fast-loader"].icon_size = 128
  end
end
