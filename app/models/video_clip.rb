class VideoClip < ApplicationRecord
    has_one_attached :videorecording

    def attachment_has_mimetype_of
        mime_type = self.extract_mime_type_from_attachment_blob
        recognized_mime_type = MimeType.new(given_type: mime_type).allowed_mime_type
    end

    def accepted_mimetypes
        #all_mimetypes = ["application", "audio",  "example", "font", "image", "video", "model", "text", "message", "multipart" ]
        # am = 
    end
    def extract_mime_type_from_attachment_blob
        #  returns content_type from blob
        content_type    = self.videorecording.content_type.to_s
        mimetype        = content_type.to_s.match(/^\w+/).to_s
    end

    def to_partial_path
        "video_clips/#{self.attachment_has_mimetype_of}"
    end

end
