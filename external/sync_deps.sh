
 1949  cd /tmp/nodegl/external/
 1950  ls
 1951  rm -rf *
 1952  export TMP_DIR=/tmp/nodegl/external
 1953  wget -nc https://raw.githubusercontent.com/nlohmann/json/develop/single_include/nlohmann/json.hpp -P $TMP_DIR/json
 1954  ls
 1955  cd ..
 1956  ls
 1957  mkdir usr
 1958  cd usr/
 1959  ls
 1960  cd ..
 1961  rm -rf usr/
 1962  cd external/
 1963  ls
 1964  ls json/
 1965  tar czf nlohmann_json.tgz json/
 1966  wget -nc https://github.com/glfw/glfw/releases/download/3.3.2/glfw-3.3.2.bin.WIN64.zip -P $TMP_DIR
 1967  cp nlohmann_json.tgz /var/ftp/pub/
 1968  sudo cp nlohmann_json.tgz /var/ftp/pub/
 1969  sudo cp glfw-3.3.2.bin.WIN64.zip /var/ftp/pub/
 1970  wget -nc https://sourceforge.net/projects/pthreads4w/files/pthreads-w32-2-9-1-release.zip -P $TMP_DIR
 1971  sudo cp pthreads-w32-2-9-1-release.zip /var/ftp/pub/
 1972  wget -nc https://www.khronos.org/registry/OpenGL/api/GL/glext.h -P $TMP_DIR/gl/include/GL
 1973  wget -nc https://www.khronos.org/registry/OpenGL/api/GL/glcorearb.h -P $TMP_DIR/gl/include/GL
 1974  wget -nc https://www.khronos.org/registry/OpenGL/api/GL/wglext.h -P $TMP_DIR/gl/include/GL
 1975  ls
 1976  tar czf glext.tgz gl/include/GL/glext.h 
 1977  tar tzf glext.tgz 
 1978  tar tzf glcorearb.h gl/include/GL/glcorearb.h
 1979  tar czf glcorearb.h gl/include/GL/glcorearb.h
 1980  tar czf wglext.tgz gl/include/GL/wglext.h 
 1981  wget -nc https://www.khronos.org/registry/EGL/api/KHR/khrplatform.h -P $TMP_DIR/gl/include/KHR
 1982  tar czf khrplatform.tgz gl/include/KHR/khrplatform.h 
 1983  ls
 1984  ls *.tgz
 1985  ls
 1986  wget -nc https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0-win32.zip -P $TMP_DIR
 1987  wget -nc https://www.gyan.dev/ffmpeg/builds/packages/ffmpeg-4.3.1-2020-09-21-full_build-shared.zip -P $TMP_DIR/ffmpeg
 1988  wget -nc https://github.com/g-truc/glm/releases/download/0.9.9.8/glm-0.9.9.8.zip -P $TMP_DIR/glm
 1989  wget -nc https://raw.githubusercontent.com/nothings/stb/master/stb_image.h -P $TMP_DIR/stb
 1990  tar czf stb_image.tgz stb/
 1991  tar tzf stb_image.tgz 
 1992  wget -nc https://raw.githubusercontent.com/microsoft/DirectX-Graphics-Samples/v10.0.17763.0/Libraries/D3DX12/d3dx12.h -P $TMP_DIR/d3dx12
 1993  tar czf d3dx12.tgz d3dx12/
 1994  ls
 1995  ls *.tgz
 1996  mv *.tgz /var/ftp/pub/
 1997  cp *.tgz /var/ftp/pub/
 1998  sudo cp *.tgz /var/ftp/pub/
 1999  sudo cp *.zip /var/ftp/pub/
 2000  wget -nc https://www.gyan.dev/ffmpeg/builds/packages/ffmpeg-4.3.1-2020-09-21-full_build-shared.zip -P $TMP_DIR/ffmpeg
 2001  cd /tmp/
 2002  ls
 2003  cd nodegl/external/
 2004  ls
 2005  wget https://www.gyan.dev/ffmpeg/builds/packages/ffmpeg-4.3.1-2020-11-08-full_build-shared.7z
 2006  cp ffmpeg-4.3.1-2020-11-08-full_build-shared.7z /var/ftp/pub/
 2007  sudo cp ffmpeg-4.3.1-2020-11-08-full_build-shared.7z /var/ftp/pub/
 2008  history
 2009  history > sync_deps.sh
