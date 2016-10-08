package com.d.a.b.b;

import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.d.a.b.a.f;
import com.d.a.b.d;
import com.d.a.b.d.b;

public final class e
{
  final String a;
  final String b;
  final f c;
  final int d;
  final int e;
  final b f;
  final Object g;
  final boolean h;
  final BitmapFactory.Options i;
  private final String j;
  
  public e(String paramString1, String paramString2, String paramString3, f paramf, int paramInt, b paramb, d paramd)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.j = paramString3;
    this.c = paramf;
    this.d = paramd.j;
    this.e = paramInt;
    this.f = paramb;
    this.g = paramd.n;
    this.h = paramd.m;
    this.i = new BitmapFactory.Options();
    paramString1 = paramd.k;
    paramString2 = this.i;
    paramString2.inDensity = paramString1.inDensity;
    paramString2.inDither = paramString1.inDither;
    paramString2.inInputShareable = paramString1.inInputShareable;
    paramString2.inJustDecodeBounds = paramString1.inJustDecodeBounds;
    paramString2.inPreferredConfig = paramString1.inPreferredConfig;
    paramString2.inPurgeable = paramString1.inPurgeable;
    paramString2.inSampleSize = paramString1.inSampleSize;
    paramString2.inScaled = paramString1.inScaled;
    paramString2.inScreenDensity = paramString1.inScreenDensity;
    paramString2.inTargetDensity = paramString1.inTargetDensity;
    paramString2.inTempStorage = paramString1.inTempStorage;
    if (Build.VERSION.SDK_INT >= 10) {
      paramString2.inPreferQualityOverSpeed = paramString1.inPreferQualityOverSpeed;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramString2.inBitmap = paramString1.inBitmap;
      paramString2.inMutable = paramString1.inMutable;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */