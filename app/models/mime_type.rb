class MimeType
    # matches given MIME type to what is currently accepted by the app
    attr_reader :given_type
    def initialize(given_type: "")
        @given_type = given_type.to_s
    end

    def allowed_mime_type
        mime_type = self.given_type
        mime_type       = self.recognized.find {|r| r == mime_type} || MissingMimeType.new.name
    end

    def recognized
        ["image", "video"]
    end

end
