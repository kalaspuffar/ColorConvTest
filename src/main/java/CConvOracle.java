import org.apache.pdfbox.pdmodel.graphics.color.PDDeviceCMYK;

import javax.imageio.ImageIO;
import java.io.*;
import java.awt.*;
import java.awt.color.*;
import java.awt.image.*;
import java.net.URL;

public class CConvOracle {

    static BufferedImage toRGBImageAWT(WritableRaster raster, ColorSpace colorSpace) {

        ColorModel colorModel = new ComponentColorModel(colorSpace,
            false, false, Transparency.OPAQUE, raster.getDataBuffer().getDataType());

        BufferedImage src = new BufferedImage(colorModel, raster, false, null);
        BufferedImage dest = new BufferedImage(raster.getWidth(), raster.getHeight(),
                                               BufferedImage.TYPE_INT_RGB);
        ColorConvertOp op = new ColorConvertOp(null);
        //System.out.println("src="+src);
        //System.out.println("dst="+dest);
        op.filter(src, dest);
        return dest;
    }

    public static void main(String args[]) throws Exception {
        int width = 2577;
        int height = 1540;
        int numComponents = 4;

        WritableRaster raster =
        Raster.createInterleavedRaster(DataBuffer.TYPE_BYTE, width, height,
                numComponents, new Point(0, 0));

        System.out.println("Class: " + CConvOracle.class.getName());
        System.out.println("Raster: " + raster);

        ICC_Profile profile =
                ICC_Profile.getInstance("ISOcoated_v2_300_bas.icc");
        ICC_ColorSpace colorSpace = new ICC_ColorSpace(profile);

        long t0 = System.currentTimeMillis();
        for (int i=0;i<50;i++) {
            toRGBImageAWT(raster, colorSpace);
        }
        long t1 = System.currentTimeMillis();
        System.out.println((t1-t0));
   }
}

   
