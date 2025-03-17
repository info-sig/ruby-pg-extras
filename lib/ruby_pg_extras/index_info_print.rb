# frozen_string_literal: true

module RubyPgExtras
  class IndexInfoPrint
    def self.call(data)
      new.call(data)
    end

    def call(data)
      rows = data.map do |el|
        [
          el.fetch(:index_name),
          el.fetch(:table_name),
          el.fetch(:columns).join(", "),
          el.fetch(:index_size),
          el.fetch(:index_scans),
          el.fetch(:null_frac),
        ]
      end

      puts "Table display is removed because of constants definition clash"
    end

    private

    def title
      "Index info"
    end
  end
end
