module Shipcloud
  module Operations
    module Delete
      module ClassMethods
        # Deletes the given object
        #
        # @param [String] id The id of the object that gets deleted
        def delete(id)
          response = Shipcloud.request(:delete, "#{self.name.split("::").last.downcase}s/#{id}", {})
          true
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end