from PIL import Image

fileBaseName = "cab-energy-interface"
backgroundColor = (192, 192, 0, 127)
image = Image.open(fileBaseName + "-original.png").copy()

# Create temporary one without a background
image.putdata([x == backgroundColor and (0, 0, 0, 0) or x for x in image.getdata()])
image.save(fileBaseName + "-transparant.png")

# Now add new background to it for each tier
backgroundColors = [(230, 230, 0, 200), (255, 140, 0, 200)]
for index in range(len(backgroundColors)):
    tier = index + 1

    image = Image.open(fileBaseName + "-transparant.png").copy()
    pixels = [x == (0, 0, 0, 0) and backgroundColors[index] or x for x in list(image.getdata())]

    if tier == 2: # Removing the inside
        for y in range(image.size[1]):
            for x in range(image.size[0]):
                drawX = x < image.size[0]/4 or x >= 3 * image.size[0]/4
                drawY = y < image.size[1]/4 or y >= 3 * image.size[1]/4
                draw = drawX or drawY
                pixels[y * image.size[1] + x] = draw and pixels[y * image.size[1] + x] or (0, 0, 0, 0)

    image.putdata(pixels)
    image = image.resize(tuple([tier * x for x in image.size]))
    image.save("cab-energy-interface-mk" + str(tier) + ".png")
