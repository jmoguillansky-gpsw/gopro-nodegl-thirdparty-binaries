import os
import sys

def installPkgConfigFile(name, baseDir, installDir):
    inFileName = f"lib\pkgconfig\{name}.in"
    outFileName = f"{installDir}\Lib\pkgconfig\{name}"
    inFile = open(inFileName, 'r')
    outFile = open(outFileName, 'w')
    contents = inFile.read()
    baseDir = baseDir.replace('\\', '\\\\')
    outFile.write(contents % baseDir)
    inFile.close()
    outFile.close()
    
def main():
    baseDir = os.getcwd()
    installDir = sys.argv[1]
    pkgConfigFiles = os.listdir('lib\pkgconfig')
    for pkgConfigFile in pkgConfigFiles:
        installPkgConfigFile(pkgConfigFile[:-3], baseDir, installDir)

main()
