require "test_helper"

class AssetTest < ActionDispatch::IntegrationTest
  test 'vendor images have been correctly precompiled' do
    skip 'This is not working yet.'

    # The intent of this test is to make sure that the theme gem is correctly
    # making available the contents of the vendor/assets directory to
    # implementing applications.
    #
    # This is very adjacent to testing the asset pipeline, but I'm intending
    # it to be a test of whether we have correctly integrated with that
    # pipeline - not as a test for whether the pipeline itself works.

    assert asset_path 'mitlib-wordmark.svg'

    # The above test would complement a negative test, confirming that a
    # non-existent asset would fail.

    refute asset_path 'there-is-no-spoon.png'
  end
end
