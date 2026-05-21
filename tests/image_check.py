from PIL import Image


def image_contains_yellow(path):
    img = Image.open(path).convert("RGB")

    width, height = img.size

    for x in range(width):
        for y in range(height):
            r, g, b = img.getpixel((x, y))

            # detekce žluté
            if r > 200 and g > 200 and b < 150:
                return True

    return False
