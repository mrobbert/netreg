use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'netreg' }
BEGIN { use_ok 'netreg::Controller::login' }

ok( request('/login')->is_success, 'Request should succeed' );
done_testing();
