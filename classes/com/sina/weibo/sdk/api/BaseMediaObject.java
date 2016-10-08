package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.utils.LogUtil;

public abstract class BaseMediaObject
  implements Parcelable
{
  public static final int MEDIA_TYPE_CMD = 7;
  public static final int MEDIA_TYPE_IMAGE = 2;
  public static final int MEDIA_TYPE_MUSIC = 3;
  public static final int MEDIA_TYPE_TEXT = 1;
  public static final int MEDIA_TYPE_VIDEO = 4;
  public static final int MEDIA_TYPE_VOICE = 6;
  public static final int MEDIA_TYPE_WEBPAGE = 5;
  public String actionUrl;
  public String description;
  public String identify;
  public String schema;
  public byte[] thumbData;
  public String title;
  
  public BaseMediaObject() {}
  
  public BaseMediaObject(Parcel paramParcel)
  {
    this.actionUrl = paramParcel.readString();
    this.schema = paramParcel.readString();
    this.identify = paramParcel.readString();
    this.title = paramParcel.readString();
    this.description = paramParcel.readString();
    this.thumbData = paramParcel.createByteArray();
  }
  
  protected boolean checkArgs()
  {
    if ((this.actionUrl == null) || (this.actionUrl.length() > 512))
    {
      LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, actionUrl is invalid");
      return false;
    }
    if ((this.identify == null) || (this.identify.length() > 512))
    {
      LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, identify is invalid");
      return false;
    }
    if ((this.thumbData == null) || (this.thumbData.length > 32768))
    {
      StringBuilder localStringBuilder = new StringBuilder("checkArgs fail, thumbData is invalid,size is ");
      if (this.thumbData != null) {}
      for (int i = this.thumbData.length;; i = -1)
      {
        LogUtil.e("Weibo.BaseMediaObject", i + "! more then 32768.");
        return false;
      }
    }
    if ((this.title == null) || (this.title.length() > 512))
    {
      LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, title is invalid");
      return false;
    }
    if ((this.description == null) || (this.description.length() > 1024))
    {
      LogUtil.e("Weibo.BaseMediaObject", "checkArgs fail, description is invalid");
      return false;
    }
    return true;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract int getObjType();
  
  /* Error */
  public final void setThumbImage(android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 111	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 112	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: astore_2
    //   10: aload_1
    //   11: getstatic 118	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   14: bipush 85
    //   16: aload_3
    //   17: invokevirtual 124	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   20: pop
    //   21: aload_3
    //   22: astore_2
    //   23: aload_0
    //   24: aload_3
    //   25: invokevirtual 127	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   28: putfield 57	com/sina/weibo/sdk/api/BaseMediaObject:thumbData	[B
    //   31: aload_3
    //   32: invokevirtual 130	java/io/ByteArrayOutputStream:close	()V
    //   35: return
    //   36: astore 4
    //   38: aconst_null
    //   39: astore_1
    //   40: aload_1
    //   41: astore_2
    //   42: aload 4
    //   44: invokevirtual 133	java/lang/Exception:printStackTrace	()V
    //   47: aload_1
    //   48: astore_2
    //   49: ldc 67
    //   51: ldc -121
    //   53: invokestatic 75	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_1
    //   57: ifnull -22 -> 35
    //   60: aload_1
    //   61: invokevirtual 130	java/io/ByteArrayOutputStream:close	()V
    //   64: return
    //   65: astore_1
    //   66: aload_1
    //   67: invokevirtual 136	java/io/IOException:printStackTrace	()V
    //   70: return
    //   71: astore_1
    //   72: aconst_null
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 130	java/io/ByteArrayOutputStream:close	()V
    //   82: aload_1
    //   83: athrow
    //   84: astore_2
    //   85: aload_2
    //   86: invokevirtual 136	java/io/IOException:printStackTrace	()V
    //   89: goto -7 -> 82
    //   92: astore_1
    //   93: aload_1
    //   94: invokevirtual 136	java/io/IOException:printStackTrace	()V
    //   97: return
    //   98: astore_1
    //   99: goto -25 -> 74
    //   102: astore 4
    //   104: aload_3
    //   105: astore_1
    //   106: goto -66 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	BaseMediaObject
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
  
  protected abstract BaseMediaObject toExtraMediaObject(String paramString);
  
  protected abstract String toExtraMediaString();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.actionUrl);
    paramParcel.writeString(this.schema);
    paramParcel.writeString(this.identify);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    paramParcel.writeByteArray(this.thumbData);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\BaseMediaObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */