json.extract! video_clip, :id, :created_at, :updated_at
json.url video_clip_url(video_clip, format: :json)
