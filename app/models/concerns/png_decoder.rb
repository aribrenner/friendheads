module PngDecoder

  PREFIX = 'data:image/png;base64,'

  def decode_png(data_url)
    return unless data_url
    Base64.decode64(data_url[PREFIX.length .. -1])
  end

end
