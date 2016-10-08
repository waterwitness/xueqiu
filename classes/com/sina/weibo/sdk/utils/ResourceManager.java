package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;

public class ResourceManager
{
  private static final String DIALOG_BACKGROUND_IMAGE_NAME = "weibosdk_dialog_bg.9.png";
  public static final int DIALOG_BOTTOM_MARGIN = 10;
  private static final String DIALOG_CLOSE_BUTTON_IMAGE_NAME = "ic_com_sina_weibo_sdk_close.png";
  public static final int DIALOG_LEFT_MARGIN = 10;
  public static final int DIALOG_RIGHT_MARGIN = 10;
  public static final int DIALOG_TOP_MARGIN = 30;
  private static final String DRAWABLE = "drawable";
  private static final String DRAWABLE_HDPI = "drawable-hdpi";
  private static final String DRAWABLE_LDPI = "drawable-ldpi";
  private static final String DRAWABLE_MDPI = "drawable-mdpi";
  private static final String DRAWABLE_XHDPI = "drawable-xhdpi";
  private static final String DRAWABLE_XXHDPI = "drawable-xxhdpi";
  private static final String LOADING_EN = "Loading...";
  private static final String LOADING_ZH_CN = "加载中...";
  private static final String LOADING_ZH_TW = "載入中...";
  private static final String NETWORK_NOT_AVAILABLE_EN = "Network is not available";
  private static final String NETWORK_NOT_AVAILABLE_ZH_CN = "无法连接到网络，请检查网络配置";
  private static final String NETWORK_NOT_AVAILABLE_ZH_TW = "無法連接到網络，請檢查網络配置";
  private static final String[] PRE_INSTALL_DRAWBLE_PATHS;
  private static final String TAG = ResourceManager.class.getName();
  public static final int dimen_dialog_bottom_margin = 4;
  public static final int dimen_dialog_left_margin = 1;
  public static final int dimen_dialog_right_margin = 3;
  public static final int dimen_dialog_top_margin = 2;
  public static final int drawable_dialog_background = 1;
  public static final int drawable_dialog_close_button = 2;
  private static final SparseArray<String> sDrawableMap;
  private static final HashMap<Locale, SparseArray<String>> sLanguageMap;
  private static final SparseIntArray sLayoutMap;
  public static final int string_loading = 1;
  public static final int string_network_not_available = 2;
  
  static
  {
    Object localObject = new SparseIntArray();
    sLayoutMap = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(1, 10);
    sLayoutMap.put(2, 30);
    sLayoutMap.put(3, 10);
    sLayoutMap.put(4, 10);
    PRE_INSTALL_DRAWBLE_PATHS = new String[] { "drawable-xxhdpi", "drawable-xhdpi", "drawable-hdpi", "drawable-mdpi", "drawable-ldpi", "drawable" };
    localObject = new SparseArray();
    sDrawableMap = (SparseArray)localObject;
    ((SparseArray)localObject).put(1, "weibosdk_dialog_bg.9.png");
    sDrawableMap.put(2, "ic_com_sina_weibo_sdk_close.png");
    sLanguageMap = new HashMap();
    localObject = new SparseArray();
    ((SparseArray)localObject).put(1, "加载中...");
    ((SparseArray)localObject).put(2, "无法连接到网络，请检查网络配置");
    sLanguageMap.put(Locale.SIMPLIFIED_CHINESE, localObject);
    localObject = new SparseArray();
    ((SparseArray)localObject).put(1, "載入中...");
    ((SparseArray)localObject).put(2, "無法連接到網络，請檢查網络配置");
    sLanguageMap.put(Locale.TRADITIONAL_CHINESE, localObject);
    localObject = new SparseArray();
    ((SparseArray)localObject).put(1, "Loading...");
    ((SparseArray)localObject).put(2, "Network is not available");
    sLanguageMap.put(Locale.ENGLISH, localObject);
  }
  
  private static Drawable extractDrawable(Context paramContext, String paramString)
  {
    InputStream localInputStream = paramContext.getAssets().open(paramString);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    TypedValue localTypedValue = new TypedValue();
    localTypedValue.density = localDisplayMetrics.densityDpi;
    paramContext = Drawable.createFromResourceStream(paramContext.getResources(), localTypedValue, localInputStream, paramString);
    localInputStream.close();
    return paramContext;
  }
  
  private static View extractView(Context paramContext, String paramString, ViewGroup paramViewGroup)
  {
    paramString = paramContext.getAssets().openXmlResourceParser(paramString);
    return ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(paramString, paramViewGroup);
  }
  
  public static String getAppropriatePathOfDrawable(Context paramContext, String paramString)
  {
    int j = 0;
    if (TextUtils.isEmpty(paramString))
    {
      LogUtil.e(TAG, "id is NOT correct!");
      return null;
    }
    String str1 = getCurrentDpiFolder(paramContext);
    String str2 = str1 + "/" + paramString;
    LogUtil.i(TAG, "Maybe the appropriate path: " + str2);
    if (isFileExisted(paramContext, str2)) {
      return str2;
    }
    LogUtil.d(TAG, "Not the correct path, we need to find one...");
    int i = 0;
    if (i >= PRE_INSTALL_DRAWBLE_PATHS.length)
    {
      LogUtil.e(TAG, "Not find the appropriate path for drawable");
      return null;
    }
    if (j == 0) {
      if (str1.equals(PRE_INSTALL_DRAWBLE_PATHS[i]))
      {
        j = 1;
        LogUtil.i(TAG, "Have Find index: " + i + ", " + PRE_INSTALL_DRAWBLE_PATHS[i]);
      }
    }
    do
    {
      i += 1;
      break;
      str2 = PRE_INSTALL_DRAWBLE_PATHS[i] + "/" + paramString;
    } while (!isFileExisted(paramContext, str2));
    return str2;
  }
  
  private static String getCurrentDpiFolder(Context paramContext)
  {
    int i = paramContext.getResources().getDisplayMetrics().densityDpi;
    if (i <= 120) {
      return "drawable-ldpi";
    }
    if ((i > 120) && (i <= 160)) {
      return "drawable-mdpi";
    }
    if ((i > 160) && (i <= 240)) {
      return "drawable-hdpi";
    }
    if ((i > 240) && (i <= 320)) {
      return "drawable-xhdpi";
    }
    return "drawable-xxhdpi";
  }
  
  public static int getDimensionPixelSize(int paramInt)
  {
    return sLayoutMap.get(paramInt, 0);
  }
  
  public static Drawable getDrawable(Context paramContext, int paramInt)
  {
    return getDrawableFromAssert(paramContext, getAppropriatePathOfDrawable(paramContext, (String)sDrawableMap.get(paramInt, "")), false);
  }
  
  /* Error */
  public static Drawable getDrawableFromAssert(Context paramContext, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 140	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   4: astore_3
    //   5: aload_3
    //   6: aload_1
    //   7: invokevirtual 146	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnull +179 -> 191
    //   15: aload_1
    //   16: invokestatic 288	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   19: astore_3
    //   20: aload_0
    //   21: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   24: invokevirtual 156	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   27: astore 4
    //   29: iload_2
    //   30: ifeq +62 -> 92
    //   33: aload_0
    //   34: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   37: invokevirtual 292	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   40: astore 5
    //   42: new 294	android/graphics/drawable/NinePatchDrawable
    //   45: dup
    //   46: new 152	android/content/res/Resources
    //   49: dup
    //   50: aload_0
    //   51: invokevirtual 140	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   54: aload 4
    //   56: aload 5
    //   58: invokespecial 297	android/content/res/Resources:<init>	(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    //   61: aload_3
    //   62: aload_3
    //   63: invokevirtual 303	android/graphics/Bitmap:getNinePatchChunk	()[B
    //   66: new 305	android/graphics/Rect
    //   69: dup
    //   70: iconst_0
    //   71: iconst_0
    //   72: iconst_0
    //   73: iconst_0
    //   74: invokespecial 308	android/graphics/Rect:<init>	(IIII)V
    //   77: aconst_null
    //   78: invokespecial 311	android/graphics/drawable/NinePatchDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    //   81: astore_0
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 178	java/io/InputStream:close	()V
    //   90: aload_0
    //   91: areturn
    //   92: aload_3
    //   93: aload 4
    //   95: getfield 164	android/util/DisplayMetrics:densityDpi	I
    //   98: invokevirtual 315	android/graphics/Bitmap:setDensity	(I)V
    //   101: new 317	android/graphics/drawable/BitmapDrawable
    //   104: dup
    //   105: aload_0
    //   106: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   109: aload_3
    //   110: invokespecial 320	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   113: astore_0
    //   114: goto -32 -> 82
    //   117: astore_3
    //   118: aload_1
    //   119: astore_0
    //   120: aload_3
    //   121: astore_1
    //   122: aload_1
    //   123: invokevirtual 323	java/io/IOException:printStackTrace	()V
    //   126: aload_0
    //   127: ifnull +62 -> 189
    //   130: aload_0
    //   131: invokevirtual 178	java/io/InputStream:close	()V
    //   134: aconst_null
    //   135: areturn
    //   136: astore_0
    //   137: aload_0
    //   138: invokevirtual 323	java/io/IOException:printStackTrace	()V
    //   141: aconst_null
    //   142: areturn
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_1
    //   146: aload_1
    //   147: ifnull +7 -> 154
    //   150: aload_1
    //   151: invokevirtual 178	java/io/InputStream:close	()V
    //   154: aload_0
    //   155: athrow
    //   156: astore_1
    //   157: aload_1
    //   158: invokevirtual 323	java/io/IOException:printStackTrace	()V
    //   161: goto -7 -> 154
    //   164: astore_1
    //   165: aload_1
    //   166: invokevirtual 323	java/io/IOException:printStackTrace	()V
    //   169: aload_0
    //   170: areturn
    //   171: astore_0
    //   172: goto -26 -> 146
    //   175: astore_3
    //   176: aload_0
    //   177: astore_1
    //   178: aload_3
    //   179: astore_0
    //   180: goto -34 -> 146
    //   183: astore_1
    //   184: aconst_null
    //   185: astore_0
    //   186: goto -64 -> 122
    //   189: aconst_null
    //   190: areturn
    //   191: aconst_null
    //   192: astore_0
    //   193: goto -111 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	paramContext	Context
    //   0	196	1	paramString	String
    //   0	196	2	paramBoolean	boolean
    //   4	106	3	localObject1	Object
    //   117	4	3	localIOException	IOException
    //   175	4	3	localObject2	Object
    //   27	67	4	localDisplayMetrics	DisplayMetrics
    //   40	17	5	localConfiguration	android.content.res.Configuration
    // Exception table:
    //   from	to	target	type
    //   15	29	117	java/io/IOException
    //   33	82	117	java/io/IOException
    //   92	114	117	java/io/IOException
    //   130	134	136	java/io/IOException
    //   5	11	143	finally
    //   150	154	156	java/io/IOException
    //   86	90	164	java/io/IOException
    //   15	29	171	finally
    //   33	82	171	finally
    //   92	114	171	finally
    //   122	126	175	finally
    //   5	11	183	java/io/IOException
  }
  
  public static Locale getLanguage()
  {
    Locale localLocale = Locale.getDefault();
    if ((Locale.SIMPLIFIED_CHINESE.equals(localLocale)) || (Locale.TRADITIONAL_CHINESE.equals(localLocale))) {
      return localLocale;
    }
    return Locale.ENGLISH;
  }
  
  public static Drawable getNinePatchDrawable(Context paramContext, int paramInt)
  {
    return getDrawableFromAssert(paramContext, getAppropriatePathOfDrawable(paramContext, (String)sDrawableMap.get(paramInt, "")), true);
  }
  
  public static String getString(Context paramContext, int paramInt)
  {
    paramContext = getLanguage();
    return (String)((SparseArray)sLanguageMap.get(paramContext)).get(paramInt, "");
  }
  
  private static boolean isFileExisted(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    Context localContext;
    for (;;)
    {
      return false;
      Object localObject2 = paramContext.getAssets();
      Object localObject1 = null;
      paramContext = null;
      try
      {
        localObject2 = ((AssetManager)localObject2).open(paramString);
        paramContext = (Context)localObject2;
        localObject1 = localObject2;
        LogUtil.d(TAG, "file [" + paramString + "] existed");
        if (localObject2 != null) {}
        try
        {
          ((InputStream)localObject2).close();
          return true;
        }
        catch (IOException paramContext)
        {
          for (;;)
          {
            paramContext.printStackTrace();
          }
        }
      }
      catch (IOException localIOException)
      {
        localContext = paramContext;
        LogUtil.d(TAG, "file [" + paramString + "] NOT existed");
        if (paramContext != null) {
          try
          {
            paramContext.close();
            return false;
          }
          catch (IOException paramContext)
          {
            paramContext.printStackTrace();
            return false;
          }
        }
      }
      finally
      {
        if (localContext == null) {}
      }
    }
    try
    {
      localContext.close();
      throw paramContext;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\utils\ResourceManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */