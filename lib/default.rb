# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::XMLSitemap
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo

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
