(function _FileMid_s_() {

'use strict';/* ddd */

if( typeof module !== 'undefined' )
{

  require( './FileBase.s' );

  var _ = _global_.wTools;

  _.assert( _global_.wFieldsStack );

  if( !_global_.wTools.FileStat )
  require( './base/FileStat.s' );
  if( !_global_.wTools.FileRecord )
  require( './base/FileRecord.s' );
  if( !_global_.wTools.FileRecordOptions )
  require( './base/FileRecordOptions.s' );

  require( './base/FileArchive.s' );

  require( './fprovider/aAbstract.s' );
  require( './fprovider/aPartial.s' );

  _.includeAny( __dirname + '/base/Path.ss','' )
  if( !_global_.wTools.FileProvider.Path )
  _.includeAny( __dirname + '/fprovider/mPathMixin.ss','' )

  if( !_global_.wTools.FileProvider.Find )
  require( './fprovider/mFindMixin.s' );

  if( !_global_.wTools.FileProvider.Secondary )
  require( './fprovider/mSecondaryMixin.s' );

  // require( './fprovider/mPathMixin.ss' );
  // require( './fprovider/mFindMixin.s' );
  // require( './fprovider/mSecondaryMixin.s' );

}

var _ = _global_.wTools;
var FileRecord = _.FileRecord;
var Self = _global_.wTools;

// --
// prototype
// --

var Proto =
{
}

//

_.mapExtend( Self,Proto );

Self.FileProvider = Self.FileProvider || Object.create( null );
Self.FileFilter = Self.FileFilter || Object.create( null );

_.files = _.mapExtend( _.files || Object.create( null ),Proto );
// _.files.pathCurrentAtBegin = _.pathCurrent();

// --
// export
// --

if( typeof module !== 'undefined' )
if( _global_._UsingWtoolsPrivately_ )
delete require.cache[ module.id ];

if( typeof module !== 'undefined' && module !== null )
module[ 'exports' ] = Self;

})();
