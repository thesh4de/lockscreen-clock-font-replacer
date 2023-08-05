modules_update_dir="$(dirname "$MODPATH")"
modules_dir="$(dirname "$modules_update_dir")/modules"
font_manager_dir="${modules_dir}/fontrevival"
roboto_font="${font_manager_dir}/system/fonts/Roboto-Regular.ttf"

font_install()
{
  if [ ! -d "$font_manager_dir" ]; then
    abort "Font Manager not found"
    elif [ ! -f  "$roboto_font" ]; then
      abort "Roboto Font not found"
    else
      mkdir -p "${MODPATH}/system/product/fonts"
      cp "$roboto_font" "${MODPATH}/system/product/fonts/GoogleSansClock-Regular.ttf"
      ui_print "Done"
  fi
}

font_install

##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
