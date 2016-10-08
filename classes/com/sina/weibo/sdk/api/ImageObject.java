package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.sina.weibo.sdk.utils.LogUtil;
import java.io.File;

public class ImageObject
  extends BaseMediaObject
{
  public static final Parcelable.Creator<ImageObject> CREATOR = new Parcelable.Creator()
  {
    public ImageObject createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ImageObject(paramAnonymousParcel);
    }
    
    public ImageObject[] newArray(int paramAnonymousInt)
    {
      return new ImageObject[paramAnonymousInt];
    }
  };
  private static final int DATA_SIZE = 2097152;
  public byte[] imageData;
  public String imagePath;
  
  public ImageObject() {}
  
  public ImageObject(Parcel paramParcel)
  {
    this.imageData = paramParcel.createByteArray();
    this.imagePath = paramParcel.readString();
  }
  
  public boolean checkArgs()
  {
    if ((this.imageData == null) && (this.imagePath == null))
    {
      LogUtil.e("Weibo.ImageObject", "imageData and imagePath are null");
      return false;
    }
    if ((this.imageData != null) && (this.imageData.length > 2097152))
    {
      LogUtil.e("Weibo.ImageObject", "imageData is too large");
      return false;
    }
    if ((this.imagePath != null) && (this.imagePath.length() > 512))
    {
      LogUtil.e("Weibo.ImageObject", "imagePath is too length");
      return false;
    }
    if (this.imagePath != null)
    {
      File localFile = new File(this.imagePath);
      try
      {
        if ((!localFile.exists()) || (localFile.length() == 0L) || (localFile.length() > 10485760L))
        {
          LogUtil.e("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
          return false;
        }
      }
      catch (SecurityException localSecurityException)
      {
        LogUtil.e("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
        return false;
      }
    }
    return true;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getObjType()
  {
    return 2;
  }
  
  /* Error */
  public final void setImageObject(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 89	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 90	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: astore_2
    //   10: aload_1
    //   11: getstatic 96	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   14: bipush 85
    //   16: aload_3
    //   17: invokevirtual 102	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   20: pop
    //   21: aload_3
    //   22: astore_2
    //   23: aload_0
    //   24: aload_3
    //   25: invokevirtual 105	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   28: putfield 34	com/sina/weibo/sdk/api/ImageObject:imageData	[B
    //   31: aload_3
    //   32: invokevirtual 108	java/io/ByteArrayOutputStream:close	()V
    //   35: return
    //   36: astore 4
    //   38: aconst_null
    //   39: astore_1
    //   40: aload_1
    //   41: astore_2
    //   42: aload 4
    //   44: invokevirtual 111	java/lang/Exception:printStackTrace	()V
    //   47: aload_1
    //   48: astore_2
    //   49: ldc 46
    //   51: ldc 113
    //   53: invokestatic 54	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_1
    //   57: ifnull -22 -> 35
    //   60: aload_1
    //   61: invokevirtual 108	java/io/ByteArrayOutputStream:close	()V
    //   64: return
    //   65: astore_1
    //   66: aload_1
    //   67: invokevirtual 114	java/io/IOException:printStackTrace	()V
    //   70: return
    //   71: astore_1
    //   72: aconst_null
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 108	java/io/ByteArrayOutputStream:close	()V
    //   82: aload_1
    //   83: athrow
    //   84: astore_2
    //   85: aload_2
    //   86: invokevirtual 114	java/io/IOException:printStackTrace	()V
    //   89: goto -7 -> 82
    //   92: astore_1
    //   93: aload_1
    //   94: invokevirtual 114	java/io/IOException:printStackTrace	()V
    //   97: return
    //   98: astore_1
    //   99: goto -25 -> 74
    //   102: astore 4
    //   104: aload_3
    //   105: astore_1
    //   106: goto -66 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	ImageObject
    //   0	109	1	paramBitmap	android.graphics.Bitmap
    //   9	70	2	localObject	Object
    //   84	2	2	localIOException	java.io.IOException
    //   7	98	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   36	7	4	localException1	Exception
    //   102	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	8	36	java/lang/Exception
    //   60	64	65	java/io/IOException
    //   0	8	71	finally
    //   78	82	84	java/io/IOException
    //   31	35	92	java/io/IOException
    //   10	21	98	finally
    //   23	31	98	finally
    //   42	47	98	finally
    //   49	56	98	finally
    //   10	21	102	java/lang/Exception
    //   23	31	102	java/lang/Exception
  }
  
  protected BaseMediaObject toExtraMediaObject(String paramString)
  {
    return this;
  }
  
  protected String toExtraMediaString()
  {
    return "";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeByteArray(this.imageData);
    paramParcel.writeString(this.imagePath);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\ImageObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */