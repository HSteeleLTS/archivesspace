{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",
    "uri" => "/repositories/:repo_id/jobs",
    "properties" => {
      "uri" => {"type" => "string", "required" => false},

      "filenames" => {
        "type" => "array",
        "ifmissing" => "error",
        "items" => {
          "type" => "string",
        }
      },

      "time_submitted" => {
        "type" => "date-time",
        "readonly" => true
      },

      "time_started" => {
        "type" => "date-time",
        "readonly" => true
      },

      "time_finished" => {
        "type" => "date-time",
        "readonly" => true
      },

      "owner" => {
        "type" => "string",
        "readonly" => true
      },

      "status" => {
        "type" => "string",
        "enum" => ["running", "completed", "canceled", "queued"],
        "default" => "queued",
        "readonly" => true
      },

      "import_type" => {
        "type" => "string",
        "enum" => ["ead_xml", "marcxml", "marcxml_subjects_and_agents", "accession_csv", "digital_object_csv"]
      }
    },
  },
}
