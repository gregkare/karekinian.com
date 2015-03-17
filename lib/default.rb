# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::XMLSitemap
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

require 'redcarpet'

module Redcarpet
  module Render
    class Language < HTML
      def block_code(code, lang)
        "<pre>" \
        "<code class=\"language-#{lang}\">#{html_escape(code)}</code>" \
        "</pre>"
      end
    end
  end
end
