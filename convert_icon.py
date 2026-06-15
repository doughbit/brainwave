"""One-off: convert dictation-icon.jpg to brainwave.ico with multiple sizes."""
from PIL import Image
from pathlib import Path

src = Path(r"C:\Users\cindy\Downloads\agent ui\dictation-icon.jpg")
dst = Path(r"C:\Users\cindy\Tools\brainwave\brainwave.ico")

img = Image.open(src).convert("RGBA")
# Standard Windows icon sizes
sizes = [(16, 16), (24, 24), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)]
img.save(dst, format="ICO", sizes=sizes)
print(f"Wrote {dst} ({dst.stat().st_size} bytes)")
