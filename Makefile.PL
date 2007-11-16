use inc::Module::Install;
include 'Module::AutoInstall';

name 'Module-Install-Template';
all_from 'lib/Module/Install/Template.pm';
perl_version '5.006';

requires 'Template';

build_requires 'Test::More' => '0.70';

$::IS_MODULE_INSTALL_TEMPLATE = 1;

install_script glob('bin/*');

use_standard_tests(without => 'pod_coverage');
auto_install;
auto_include;
WriteAll;
