# Testing image rendering.

### Prerequisite

Get dependencies
`./setup.sh` 

Edit your environment to define your JDK paths:
`cp env_template.sh env.sh`
`vi env.sh`


Set your CPUs to fixed frequency:
```
sudo cpupower -c all frequency-set -d 2.0GHz -u 2.0GHz -g performance 
sudo cpupower -c all frequency-info

# set perf bias
sudo cpupower -c all set -b 0
sudo cpupower -c all info
```


### Result from timetest_cconv_oracle.sh

```

---------------------------------------------------------
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
9052
---------------------------------------------------------
openjdk version "9.0.4"
OpenJDK Runtime Environment (build 9.0.4+11)
OpenJDK 64-Bit Server VM (build 9.0.4+11, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
23033
---------------------------------------------------------
openjdk version "10.0.2" 2018-07-17
OpenJDK Runtime Environment 18.3 (build 10.0.2+13)
OpenJDK 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
3457
---------------------------------------------------------
openjdk version "11" 2018-09-25
OpenJDK Runtime Environment 18.9 (build 11+28)
OpenJDK 64-Bit Server VM 18.9 (build 11+28, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
3054
---------------------------------------------------------
openjdk version "12-ea" 2019-03-19
OpenJDK Runtime Environment 19.3 (build 12-ea+11)
OpenJDK 64-Bit Server VM 19.3 (build 12-ea+11, mixed mode)
Class: CConvOracle
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
3067
```

### Result from timetest_cconv_pdfbox.sh

```

---------------------------------------------------------
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
58343
---------------------------------------------------------
openjdk version "9.0.4"
OpenJDK Runtime Environment (build 9.0.4+11)
OpenJDK 64-Bit Server VM (build 9.0.4+11, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
33348
---------------------------------------------------------
openjdk version "10.0.2" 2018-07-17
OpenJDK Runtime Environment 18.3 (build 10.0.2+13)
OpenJDK 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
51535
---------------------------------------------------------
openjdk version "11" 2018-09-25
OpenJDK Runtime Environment 18.9 (build 11+28)
OpenJDK 64-Bit Server VM 18.9 (build 11+28, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
58675
---------------------------------------------------------
openjdk version "12-ea" 2019-03-19
OpenJDK Runtime Environment 19.3 (build 12-ea+11)
OpenJDK 64-Bit Server VM 19.3 (build 12-ea+11, mixed mode)
Class: CConvPDFBox
Raster: ByteInterleavedRaster: width = 2577 height = 1540 #numDataElements 4 dataOff[0] = 0
56045
```

### Result from timetest_pdfbox.sh

```

---------------------------------------------------------
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
Rendered 1 page in 2825ms
---------------------------------------------------------
openjdk version "9.0.4"
OpenJDK Runtime Environment (build 9.0.4+11)
OpenJDK 64-Bit Server VM (build 9.0.4+11, mixed mode)
Rendered 1 page in 7767ms
---------------------------------------------------------
openjdk version "10.0.2" 2018-07-17
OpenJDK Runtime Environment 18.3 (build 10.0.2+13)
OpenJDK 64-Bit Server VM 18.3 (build 10.0.2+13, mixed mode)
Rendered 1 page in 4240ms
---------------------------------------------------------
openjdk version "11" 2018-09-25
OpenJDK Runtime Environment 18.9 (build 11+28)
OpenJDK 64-Bit Server VM 18.9 (build 11+28, mixed mode)
Rendered 1 page in 4520ms
---------------------------------------------------------
openjdk version "12-ea" 2019-03-19
OpenJDK Runtime Environment 19.3 (build 12-ea+11)
OpenJDK 64-Bit Server VM 19.3 (build 12-ea+11, mixed mode)
Rendered 1 page in 4418ms
```
