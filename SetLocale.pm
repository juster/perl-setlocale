package SetLocale;

use Exporter qw(import);
@EXPORT = qw/setlocale/;
$VERSION = '0.01';
require XSLoader;
XSLoader::load('SetLocale', $VERSION);

