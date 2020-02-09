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
    image.putdata([x == (0, 0, 0, 0) and backgroundColors[index] or x for x in list(image.getdata())])
    image.save("cab-energy-interface-mk" + str(tier) + ".png")