# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

require 'minitest/autorun'
require './lib/whoknows'

class WhoKnowsTest < Minitest::Test

  def setup
    @test_host = 'whoknows.net'
  end

  #
  # @note test public methods
  #
  def test_public_methods
    assert_equal(true, WhoKnows::Scan.public_method_defined?(:scan))
    assert_equal(true, WhoKnows::Scan.public_method_defined?(:add_target))
    assert_equal(true, WhoKnows::Scan.public_method_defined?(:scan_from_plugin))
  end

  #
  # @note test private methods
  #
  def test_private_methods
    assert_equal(true, WhoKnows::Scan.private_method_defined?(:prepare_target))
    assert_equal(true, WhoKnows::Scan.private_method_defined?(:make_target_list))
  end

  def test_invalid_url
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new(nil)
    end
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new('')
    end
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new([])
    end
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new({})
    end
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new([[]])
    end
    assert_raises 'No targets selected' do
      WhoKnows::Scan.new([{}])
    end
  end

  def test_scanner
    scanner = WhoKnows::Scan.new(@test_host)
    assert(scanner)
  end

  def test_scan
    max_redirects = 5
    plugins = PluginSupport.load_plugins
    assert(plugins)

    scanner = WhoKnows::Scan.new(@test_host, max_threads: 25)

    scanner.scan do |target|
      assert(target)
      result = WhoKnows::Parser.run_plugins(target, plugins, scanner: scanner)
      assert(result)

      WhoKnows::Redirect.new(target, scanner, max_redirects)

      whoknows_result = WhoKnows::Parser.parse(target, result)
      assert(whoknows_result['target'])
      assert(whoknows_result['status'])
      assert(whoknows_result['result'])
      countries = whoknows_result['result'].select { |a| a[0] == 'Country' }
      assert_equal('Country', countries.first[0])
    end
  end 
end
