use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'netreg' }
BEGIN { use_ok 'netreg::Controller::machine' }

ok( request('/machine')->is_success, 'Request should succeed' );
done_testing();
