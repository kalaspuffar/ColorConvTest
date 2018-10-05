# Test after adding Kcms

```
try {
    // force KCMS (faster than LCMS) if available
    Class.forName("sun.java2d.cmm.kcms.KcmsServiceProvider");
    System.setProperty("sun.java2d.cmm", "sun.java2d.cmm.kcms.KcmsServiceProvider");
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
```


### Result from timetest_cconv_oracle.sh


```

---------------------------------------------------------
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
2593
---------------------------------------------------------
openjdk version "9.0.4"
OpenJDK Runtime Environment (build 9.0.4+11)
OpenJDK 64-Bit Server VM (build 9.0.4+11, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:185)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:496)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:292)
        at CConvOracle.main(CConvOracle.java:34)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
26031
---------------------------------------------------------
openjdk version "10.0.2" 2018-07-17
OpenJDK Runtime Environment 18.3 (build 10.0.2+13)
OpenJDK 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:190)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:499)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:291)
        at CConvOracle.main(CConvOracle.java:34)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
4569
---------------------------------------------------------
openjdk version "11" 2018-09-25
OpenJDK Runtime Environment 18.9 (build 11+28)
OpenJDK 64-Bit Server VM 18.9 (build 11+28, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:315)
        at CConvOracle.main(CConvOracle.java:34)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
3540
---------------------------------------------------------
openjdk version "12-ea" 2019-03-19
OpenJDK Runtime Environment 19.3 (build 12-ea+11)
OpenJDK 64-Bit Server VM 19.3 (build 12-ea+11, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:315)
        at CConvOracle.main(CConvOracle.java:34)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
3370
```

### Result from timetest_cconv_pdfbox.sh

```


---------------------------------------------------------
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
2835
---------------------------------------------------------
openjdk version "9.0.4"
OpenJDK Runtime Environment (build 9.0.4+11)
OpenJDK 64-Bit Server VM (build 9.0.4+11, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:185)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:496)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:292)
        at CConvPDFBox.main(CConvPDFBox.java:47)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
32942
---------------------------------------------------------
openjdk version "10.0.2" 2018-07-17
OpenJDK Runtime Environment 18.3 (build 10.0.2+13)
OpenJDK 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:190)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:499)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:291)
        at CConvPDFBox.main(CConvPDFBox.java:47)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
54706
---------------------------------------------------------
openjdk version "11" 2018-09-25
OpenJDK Runtime Environment 18.9 (build 11+28)
OpenJDK 64-Bit Server VM 18.9 (build 11+28, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:315)
        at CConvPDFBox.main(CConvPDFBox.java:47)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
56360
---------------------------------------------------------
openjdk version "12-ea" 2019-03-19
OpenJDK Runtime Environment 19.3 (build 12-ea+11)
OpenJDK 64-Bit Server VM 19.3 (build 12-ea+11, mixed mode)
java.lang.ClassNotFoundException: sun.java2d.cmm.kcms.KcmsServiceProvider
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:582)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        at java.base/java.lang.Class.forName0(Native Method)
        at java.base/java.lang.Class.forName(Class.java:315)
        at CConvPDFBox.main(CConvPDFBox.java:47)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
58775
```