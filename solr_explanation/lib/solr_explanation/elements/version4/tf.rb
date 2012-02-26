#
#   Copyright [2011-2012] [Solr.pl, Marek Rogoziński, Rafał Kuć]
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
require 'solr_explanation/elements/version3_4/tf'
require 'solr_explanation/elements/version4/term_freq'
require 'solr_explanation/explanation'

module SolrExplanation
  module Element
    module Version4
      class Tf < Element::Version3_4::Tf
        def available_children
          [
            Element::Version4::TermFreq
          ]
        end

        def self.matches?(line)
          line =~ Explanation.regexp(/tf\(freq=\d+\.{0,1}\d*\), with freq of:/)
        end
      end
    end
  end
end
