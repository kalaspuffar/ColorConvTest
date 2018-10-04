
import org.apache.pdfbox.pdmodel.graphics.color.PDDeviceCMYK;

import java.awt.*;
import java.awt.color.*;
import java.awt.image.*;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;

public class CConvPDFBox {

    static BufferedImage toRGBImageAWT(WritableRaster raster,
                                       ColorSpace colorSpace) {

        ColorModel colorModel = new ComponentColorModel(colorSpace,
                false, false, Transparency.OPAQUE,
                raster.getDataBuffer().getDataType());

        BufferedImage src = new BufferedImage(colorModel, raster,
                false, null);
        BufferedImage dest = new BufferedImage(raster.getWidth(),
                raster.getHeight(),
                BufferedImage.TYPE_INT_RGB);
        ColorConvertOp op = new ColorConvertOp(null);
        //System.out.println("src="+src);
        //System.out.println("dst="+dest);
        op.filter(src, dest);
        return dest;
    }

    public static void main(String args[]) throws Exception {
        ImageReader reader =
                ImageIO.getImageReadersByFormatName("JPEG").next();
        WritableRaster raster;
        FileInputStream fis = new FileInputStream("cmyk.jpg");
        try (ImageInputStream iis = new MemoryCacheImageInputStream(fis)) {
            reader.setInput(iis);
            ImageReadParam irp = reader.getDefaultReadParam();
            raster = (WritableRaster) reader.readRaster(0, irp);
        }

        System.out.println("Class: " + CConvPDFBox.class.getName());
        System.out.println("Raster: " + raster);

        ICC_Profile profile =
                ICC_Profile.getInstance("ISOcoated_v2_300_bas.icc");
        ICC_ColorSpace colorSpace = new ICC_ColorSpace(profile);

        long t0 = System.currentTimeMillis();
        for (int i = 0; i < 50; i++) {
            toRGBImageAWT(raster, colorSpace);
        }
        long t1 = System.currentTimeMillis();
        System.out.println((t1 - t0));
    }
}