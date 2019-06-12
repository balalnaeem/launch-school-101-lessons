def binary_conversion(str)
  [str].pack('B*')
end

p binary_conversion("011001010110010001100001011000100110100101110100")