require 'guard'
require 'guard/guard'

module Guard

  # The PDFLatex Guard automatically compiles your latex files with pdflatex.
  class Pdflatex < Guard

    # Gets called when all files should be regenerated.
    # @raise [:task_has_failed] when stop has failed
    #def run_all
    #  run_on_changes(Watcher.match_files(self, Dir.glob('**{,/*/**}/*.tex')))
    #end

    # @param [Array<String>] paths of changed paths and files
    # @raise [:task_has_failed] when stop has failed
    def run_on_changes(paths)
      ok = paths.map do |path|
        system *%W[/usr/bin/env pdflatex -halt-on-error -output-directory=#{File.dirname path}], path
      end.reduce(:&)
      throw :task_has_failed unless ok
    end

  end

end
