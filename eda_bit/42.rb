=begin
Create a function that takes an imgur link (as a string) and extracts the unique id and type. Return an object containing the unique id, and a string indicating what type of link it is.

In: string
Out: hash object

Rules:
An album (e.g. http://imgur.com/a/cjh4E)
A gallery (e.g. http://imgur.com/gallery/59npG)
An image (e.g. http://imgur.com/OzZUNMM)
An image (direct link) (e.g. http://i.imgur.com/altd8Ld.png)

Al:
- initialize a hash = {id: '', type: ''}
- split the string into different section based on separator (/)
- then take the last two elements of the array
- remove '.png' from the last element if it exists
- check for 'gallery' and 'a' in the first element
    if it is none of them, then it's an image
=end

def imgur_url_parser(str)
  result = {id: '', type: ''}
  type = str.split('/')[-2]
  id = str.split('/')[-1].split('.').first
  result[:id] = id
  if type == 'a'
    result[:type] = 'album'
  elsif type == 'gallery'
    result[:type] = 'gallery'
  else
    result[:type] = 'image'
  end
  result
end

p imgur_url_parser("http://i.imgur.com/altd8Ld.png") == { id: "altd8Ld", type: "image" }
p imgur_url_parser("http://imgur.com/a/cjh4E") == { id: "cjh4E", type: "album" }
p imgur_url_parser("http://imgur.com/gallery/59npG") == { id: "59npG", type: "gallery" }














