require 'calabash-android'
require 'calabash-android/cucumber'
require 'calabash-cucumber/operations'
require 'rspec'
require 'pry'
require 'pry-byebug'
require 'yaml'
require 'rest-client'
require 'cpf_generator'
require 'pluoa-mapper'
require 'faker'
require 'cpf_cnpj'




World(Calabash::Android::Operations)

include PluoaMapper
include Faker
# include HelperCore

# ENV["PAGES_MAPPING_PATH"] = "features/support/pages_mapping/"
ENV['RESET_BETWEEN_SCENARIOS'] = '0'
ENV['START_SERVER_BETWEEN_SCENARIOS'] = '0'

# Setup
def options
    options = {}
    ARGV.each do |arg|
        key, value = arg.split('=')
        options[key.upcase] = value
    end
    options
end



def locale
    options['LOCALE'].nil? ? 'BR' : options['LOCALE'].upcase
end

def get_log
    options['LOG'].nil? ? 'NORMAL' : options['LOG'].upcase
end



CONFIG_DATA = YAML.load_file('./features/support/datas/config_data.yml')


def get_input_data(node)
    CONFIG_DATA[node]
end

# def get_labels
#     INT_DATA['labels']
# end
#
# def get_messages
#     INT_DATA['messages']
# end
#
# def get_patterns
#     INT_DATA['patterns']
# end


