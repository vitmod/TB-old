################################################################################
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libzen"
PKG_VERSION="0.4.32"
PKG_LICENSE="GPL"
PKG_SITE="http://mediaarea.net/en/MediaInfo/"
PKG_URL="http://mediaarea.net/download/source/libzen/$PKG_VERSION/libzen_$PKG_VERSION.tar.bz2"
PKG_SOURCE_DIR="ZenLib"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="MediaInfo is a convenient unified display of the most relevant technical and tag data for video and audio files"

PKG_CONFIGURE_SCRIPT="Project/GNU/Library/configure"
PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD/Project/GNU/Library
  do_autoreconf
}

post_makeinstall_target() {
  cp -P libzen-config $ROOT/$TOOLCHAIN/bin
}