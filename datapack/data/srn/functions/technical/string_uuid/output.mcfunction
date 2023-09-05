# ------------------------
## Example: 
## function srn:example with storage srn:storage root.temp
# ------------------------
$data modify storage srn:storage root.temp.out set value $(Name)
data modify storage srn:storage root.temp.out set from storage srn:storage root.temp.out.hoverEvent.contents.id