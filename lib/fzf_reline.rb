# frozen_string_literal: true

require_relative "fzf_reline/version"

module FzfReline
  class Error < StandardError; end
  # Your code goes here...
end


class Reline::LineEditor
  private def incremental_search_history(key)
    history_file = if $0 =~ /irb/i
                     IRB.conf[:HISTORY_FILE]
                   elsif $0 =~ /pry/i
                     Pry.config.history_file
                   end

    Reline.insert_text  `cat #{history_file} | fzf --tac |  tr '\n' ' '`
  end
end
