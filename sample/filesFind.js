if( typeof module !== 'undefined' )
require( 'wFiles' )

var _ = wTools;

var o =
{
  outputFormat : "record",
  filePath : _.realMainFile(),
  _globPath : "*.js",
  relative : null,
}

debugger
var file = _.fileProvider.filesFind( o );
console.log( file );