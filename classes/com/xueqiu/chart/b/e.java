package com.xueqiu.chart.b;

import android.text.TextPaint;
import com.xueqiu.chart.c.d;

public final class e
  extends b
{
  public TextPaint f = new TextPaint(1);
  public int g;
  public d h = new d()
  {
    public final String a(float paramAnonymousFloat)
    {
      return String.format("%.2f", new Object[] { Float.valueOf(paramAnonymousFloat) }).replaceAll("\\.?0*$", "");
    }
  };
  
  public e()
  {
    this.f.setTextSize(10.0F);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */