import numpy as np
from PIL import Image
import os

def changeColor(image_file):
    im = Image.open(image_file)
    im = im.convert('RGBA')
    data = np.array(im)

    r1, g1, b1 = 255, 255, 255
    r2, g2, b2 = 210, 115, 138

    red, green, blue = data[:,:,0], data[:,:,1], data[:,:,2]
    mask = (red == r1) & (green == g1) & (blue == b1)
    data[:,:,:3][mask] = [r2, g2, b2]
    
    image_file = image_file.replace(".png","")
    im = Image.fromarray(data)
    im.save(f'{image_file}.png')
    
    return f"Done {image_file}"

list_png = os.listdir("/home/uirian/.config/grub/themes/distro/icons/")
for item in list_png:
    if ".png" in item:
        pass
    else:
        list_png.remove(item)

for image in list_png:
    changeColor("/home/uirian/.config/grub/themes/distro/icons/" + image)
