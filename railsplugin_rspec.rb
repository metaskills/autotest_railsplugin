require 'autotest/rspec'

class Autotest::RailspluginRspec < Autotest::Rspec

  # Rspec version which only includes exceptions as
  # the rspec autotest class handles the usual mappings.

  def initialize
    super
    
    # Default libs for autospec. So far they suit us just fine.
    # self.libs = %w[. lib spec].join(File::PATH_SEPARATOR)
    
    # Ignore these directories in the plugin.
    add_exception %r%^\./(?:autotest|tasks)%
    
    # Ignore these ruby files in the root of the plugin folder.
    add_exception %r%^\./(install|uninstall)\.rb$%
    
    # Ignore these misc files in the root of the plugin folder.
    add_exception %r%^\./(.*LICENSE|Rakefile|README.*|CHANGELOG.*)$%i
    
    # Ignore any log file.
    add_exception %r%.*\.log$%
    
  end
  
end
