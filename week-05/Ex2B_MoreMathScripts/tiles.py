# tiles.py
# Calculate how many boxes of 1ft x 1ft tiles are needed for a room,
# including 10% extra for waste and breakage.

length = 12  # room length in feet
width = 10   # room width in feet

tiles_needed = length * width
boxes_needed = (tiles_needed + 11) // 12  # integer division rounded up

extra_tiles = int(tiles_needed * 0.10 + 0.9999)  # at least 10% extra, rounded up
total_tiles = tiles_needed + extra_tiles
boxes_with_extra = (total_tiles + 11) // 12

print(f"Tiles needed for the room: {tiles_needed}")
print(f"Boxes needed without extra: {boxes_needed}")
print(f"Boxes to buy with 10% extra: {boxes_with_extra}")
