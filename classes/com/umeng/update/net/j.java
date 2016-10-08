package com.umeng.update.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.view.animation.Animation;
import android.widget.ImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Stack;
import java.util.WeakHashMap;
import u.a.a;
import u.a.b;
import u.a.f;
import u.a.m;

public class j
{
  public static boolean a = false;
  private static final String b = j.class.getName();
  private static final long c = 52428800L;
  private static final long d = 10485760L;
  private static final long e = 1800000L;
  private static final Map<ImageView, String> f = Collections.synchronizedMap(new WeakHashMap());
  private static Thread g;
  
  private static long a(File paramFile)
  {
    long l2;
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isDirectory()))
    {
      l2 = 0L;
      return l2;
    }
    Stack localStack = new Stack();
    localStack.clear();
    localStack.push(paramFile);
    long l1 = 0L;
    for (;;)
    {
      l2 = l1;
      if (localStack.isEmpty()) {
        break;
      }
      paramFile = ((File)localStack.pop()).listFiles();
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramFile[i];
        l2 = l1;
        if (!((File)localObject).isDirectory()) {
          l2 = l1 + ((File)localObject).length();
        }
        i += 1;
        l1 = l2;
      }
    }
  }
  
  private static Bitmap a(Bitmap paramBitmap)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
      RectF localRectF = new RectF(localRect);
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-12434878);
      localCanvas.drawRoundRect(localRectF, paramBitmap.getWidth() / 6, paramBitmap.getHeight() / 6, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
      paramBitmap.recycle();
      return localBitmap;
    }
    catch (OutOfMemoryError paramBitmap)
    {
      b.d(b, "Cant`t create round corner bitmap. [OutOfMemoryError] ");
    }
    return null;
  }
  
  public static File a(String paramString, Context paramContext, boolean[] paramArrayOfBoolean)
  {
    if (a.a())
    {
      paramString = new File(Environment.getExternalStorageDirectory().getCanonicalPath() + "/download/.um" + paramString);
      paramString.mkdirs();
      if (paramString.exists())
      {
        paramArrayOfBoolean[0] = true;
        return paramString;
      }
    }
    paramString = paramContext.getCacheDir().getAbsolutePath();
    new File(paramString).mkdir();
    a(paramString, 505, -1, -1);
    paramString = paramString + "/umdownload";
    new File(paramString).mkdir();
    a(paramString, 505, -1, -1);
    paramString = new File(paramString);
    paramArrayOfBoolean[0] = false;
    return paramString;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if (m.d(paramString)) {
      return null;
    }
    try
    {
      localObject = b(paramString) + ".tmp";
      long l;
      if (a.a())
      {
        paramContext = Environment.getExternalStorageDirectory().getCanonicalPath();
        l = 52428800L;
      }
      for (;;)
      {
        paramContext = new File(paramContext + "/download/.um");
        a(paramContext, l, 1800000L);
        localObject = new File(paramContext, (String)localObject);
        try
        {
          ((File)localObject).createNewFile();
          paramContext = new FileOutputStream((File)localObject);
          InputStream localInputStream = (InputStream)new URL(paramString).openConnection().getContent();
          byte[] arrayOfByte = new byte['က'];
          for (;;)
          {
            int i = localInputStream.read(arrayOfByte);
            if (i == -1)
            {
              paramContext.flush();
              localInputStream.close();
              paramContext.close();
              paramContext = new File(((File)localObject).getParent(), ((File)localObject).getName().replace(".tmp", ""));
              ((File)localObject).renameTo(paramContext);
              b.a(b, "download img[" + paramString + "]  to " + paramContext.getCanonicalPath());
              paramContext = paramContext.getCanonicalPath();
              return paramContext;
              paramContext = paramContext.getCacheDir().getCanonicalPath();
              l = 10485760L;
              break;
            }
            paramContext.write(arrayOfByte, 0, i);
          }
          b.a(b, paramContext.getStackTrace().toString() + "\t url:\t" + m.a + paramString);
        }
        catch (Exception paramContext) {}
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
    if ((localObject != null) && (((File)localObject).exists())) {
      ((File)localObject).deleteOnExit();
    }
    return null;
  }
  
  public static void a(Context paramContext, ImageView paramImageView, String paramString, boolean paramBoolean)
  {
    a(paramContext, paramImageView, paramString, paramBoolean, null, null, false);
  }
  
  public static void a(Context paramContext, ImageView paramImageView, String paramString, boolean paramBoolean, j.a parama)
  {
    a(paramContext, paramImageView, paramString, paramBoolean, parama, null, false);
  }
  
  public static void a(Context paramContext, ImageView paramImageView, String paramString, boolean paramBoolean, j.a parama, Animation paramAnimation)
  {
    a(paramContext, paramImageView, paramString, paramBoolean, parama, null, false);
  }
  
  public static void a(Context paramContext, ImageView paramImageView, String paramString, boolean paramBoolean1, j.a parama, Animation paramAnimation, boolean paramBoolean2)
  {
    if (paramImageView == null) {}
    do
    {
      return;
      f.put(paramImageView, paramString);
      try
      {
        File localFile = b(paramContext, paramString);
        if ((localFile == null) || (!localFile.exists()) || (a)) {
          break;
        }
        if (parama != null) {
          parama.a(j.b.a);
        }
        Drawable localDrawable = c(localFile.getAbsolutePath());
        if (localDrawable == null) {
          localFile.delete();
        }
        b(paramContext, paramImageView, localDrawable, paramBoolean1, parama, paramAnimation, paramBoolean2, paramString);
        return;
      }
      catch (Exception paramContext)
      {
        b.b(b, "", paramContext);
      }
    } while (parama == null);
    parama.a(f.b);
    return;
    new j.c(paramContext, paramImageView, paramString, j.b.b, null, paramBoolean1, parama, paramAnimation, paramBoolean2).execute(new Object[0]);
  }
  
  public static void a(File arg0, long paramLong1, final long paramLong2)
  {
    if (???.exists())
    {
      if (a(???.getCanonicalFile()) > paramLong1)
      {
        if (g == null) {
          g = new Thread(new Runnable()
          {
            public void run()
            {
              j.a(j.this, paramLong2);
              j.a(null);
            }
          });
        }
        synchronized (g)
        {
          g.start();
          return;
        }
      }
    }
    else if (!???.mkdirs()) {
      b.b(b, "Failed to create directory" + ???.getAbsolutePath() + ". Check permission. Make sure WRITE_EXTERNAL_STORAGE is added in your Manifest.xml");
    }
  }
  
  private static boolean a(ImageView paramImageView, String paramString)
  {
    paramImageView = (String)f.get(paramImageView);
    return (paramImageView != null) && (!paramImageView.equals(paramString));
  }
  
  public static boolean a(String paramString, int paramInt)
  {
    int i = 432;
    if ((paramInt & 0x1) != 0) {
      i = 436;
    }
    int j = i;
    if ((paramInt & 0x2) != 0) {
      j = i | 0x2;
    }
    return a(paramString, j, -1, -1);
  }
  
  public static boolean a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Class.forName("android.os.FileUtils").getMethod("setPermissions", new Class[] { String.class, Integer.TYPE, Integer.TYPE, Integer.TYPE }).invoke(null, new Object[] { paramString, Integer.valueOf(paramInt1), Integer.valueOf(-1), Integer.valueOf(-1) });
      return true;
    }
    catch (ClassNotFoundException paramString)
    {
      b.b(b, "error when set permissions:", paramString);
      return false;
    }
    catch (NoSuchMethodException paramString)
    {
      for (;;)
      {
        b.b(b, "error when set permissions:", paramString);
      }
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;)
      {
        b.b(b, "error when set permissions:", paramString);
      }
    }
    catch (IllegalAccessException paramString)
    {
      for (;;)
      {
        b.b(b, "error when set permissions:", paramString);
      }
    }
    catch (InvocationTargetException paramString)
    {
      for (;;)
      {
        b.b(b, "error when set permissions:", paramString);
      }
    }
  }
  
  protected static File b(Context paramContext, String paramString)
  {
    paramString = b(paramString);
    if (a.a()) {}
    for (paramContext = Environment.getExternalStorageDirectory().getCanonicalPath();; paramContext = paramContext.getCacheDir().getCanonicalPath())
    {
      paramContext = new File(new File(paramContext + "/download/.um"), paramString);
      if (!paramContext.exists()) {
        break;
      }
      return paramContext;
    }
    return null;
  }
  
  private static String b(String paramString)
  {
    int i = paramString.lastIndexOf(".");
    String str = "";
    if (i >= 0) {
      str = paramString.substring(i);
    }
    return m.a(paramString) + str;
  }
  
  private static void b(Context paramContext, ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, j.a parama, Animation paramAnimation, boolean paramBoolean2, String paramString)
  {
    paramContext = paramDrawable;
    if (paramBoolean2)
    {
      paramContext = paramDrawable;
      if (paramDrawable == null) {}
    }
    for (;;)
    {
      try
      {
        paramContext = new BitmapDrawable(a(((BitmapDrawable)paramDrawable).getBitmap()));
      }
      catch (Exception paramContext)
      {
        b.b(b, "bind failed", paramContext);
        if (parama == null) {
          continue;
        }
        parama.a(f.b);
        continue;
      }
      finally {}
      if (parama != null) {
        parama.a(f.b);
      }
      b.d(b, "bind drawable failed. drawable [" + paramContext + "]  imageView[+" + paramImageView + "+]");
      return;
      if (a(paramImageView, paramString))
      {
        if (parama != null) {
          parama.a(f.b);
        }
      }
      else
      {
        if (paramBoolean1) {
          paramImageView.setBackgroundDrawable(paramContext);
        }
        for (;;)
        {
          if (paramAnimation != null) {
            paramImageView.startAnimation(paramAnimation);
          }
          if (parama == null) {
            break;
          }
          parama.a(f.a);
          break;
          paramImageView.setImageDrawable(paramContext);
        }
        if (paramContext != null) {
          if (paramImageView != null) {}
        }
      }
    }
  }
  
  private static void b(File paramFile, long paramLong)
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.canWrite()) || (!paramFile.isDirectory())) {}
    for (;;)
    {
      return;
      paramFile = paramFile.listFiles();
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramFile[i];
        if ((!((File)localObject).isDirectory()) && (new Date().getTime() - ((File)localObject).lastModified() > paramLong)) {
          ((File)localObject).delete();
        }
        i += 1;
      }
    }
  }
  
  private static Drawable c(String paramString)
  {
    try
    {
      paramString = Drawable.createFromPath(paramString);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      b.d(b, "Resutil fetchImage OutOfMemoryError:" + paramString.toString());
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */