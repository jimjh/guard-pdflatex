require 'guard'
require 'guard/guard'

module Guard

  class Pdflatex < Guard

    def run_on_changes(paths)
      ok = paths.map do |path|
        system *%W[/usr/bin/env pdflatex -halt-on-error -output-directory=#{File.dirname path}], path
      end.reduce(:&)
      raise :task_has_failed unless ok
    end

  end

end
