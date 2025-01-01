module Jekyll
    class Sibling
      attr_accessor :name, :path, :extname, :basename, :isDir
  
      def initialize(name, path)
        @name = name
        @path = path
        @extname = File.extname(name)
        @basename = File.basename(name, @extname)
        @isDir = File.directory?(path)
      end
    end
  
    class ListSiblings < Generator
      safe true
      priority :low
  
      def generate(site)
        site.pages.each do |page|
          # Only process pages that have a directory
          if page.dir && !page.dir.empty?
            siblings = get_siblings(site, page.dir)
            page.data['siblings'] = siblings
          end
        end
      end
  
      private
  
      def get_siblings(site, dir)
        # Get the absolute path of the current directory
        current_path = File.join(site.source, dir)
  
        # Collect all files and directories in the current directory
        siblings = Dir.entries(current_path).select do |entry|
          # Exclude current and parent directory references
          entry != '.' && entry != '..'
        end
  
        # Create Sibling objects for each entry and return them
        siblings.map do |sibling_name|
          sibling_path = File.join(dir, sibling_name)
          Sibling.new(sibling_name, sibling_path)
        end
      end
    end
  end
  