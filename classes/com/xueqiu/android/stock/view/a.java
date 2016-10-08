package com.xueqiu.android.stock.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
  extends View
{
  public TypedArray a = getContext().getTheme().obtainStyledAttributes(new int[] { 2130772256, 2130772257 });
  private List<Map<String, Object>> b = null;
  private int c = (int)com.xueqiu.android.stockchart.f.a.a(getContext(), 19.0F);
  private int d = (int)com.xueqiu.android.stockchart.f.a.a(getContext(), 12.0F);
  private Canvas e = null;
  private Paint f = null;
  private int[] g = new int[3];
  private ArrayList<Map.Entry<String, Object>> h = new ArrayList();
  private ArrayList<Map.Entry<String, Object>> i = new ArrayList();
  
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  private int a(Map.Entry<String, Object> paramEntry)
  {
    String str2 = (String)paramEntry.getKey();
    String str1 = paramEntry.getValue().toString();
    paramEntry = str1;
    if (TextUtils.isEmpty(str1)) {
      paramEntry = "--";
    }
    return (int)((int)((int)this.f.measureText(str2) + 0 + com.xueqiu.android.stockchart.f.a.a(getContext(), 4.0F)) + this.f.measureText(paramEntry));
  }
  
  private void a()
  {
    new TextPaint().setTextSize(com.xueqiu.android.stockchart.f.a.a(getContext(), 12.0F));
    int k = Math.min(this.b.size(), 6);
    int j = 0;
    while (j < k)
    {
      Iterator localIterator = ((Map)this.b.get(j)).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (j % 2 == 0) {
          this.h.add(localEntry);
        } else {
          this.i.add(localEntry);
        }
      }
      j += 1;
    }
  }
  
  private void a(ArrayList<Map.Entry<String, Object>> paramArrayList, int paramInt)
  {
    int k = 0;
    int j = 0;
    while (k < 3)
    {
      int m = this.g[k];
      if (k < paramArrayList.size())
      {
        Object localObject = (Map.Entry)paramArrayList.get(k);
        String str2 = (String)((Map.Entry)localObject).getKey();
        String str1 = ((Map.Entry)localObject).getValue().toString();
        localObject = str1;
        if (TextUtils.isEmpty(str1)) {
          localObject = "--";
        }
        this.f.setColor(getResources().getColor(this.a.getResourceId(1, 0)));
        this.e.drawText(str2, j, paramInt, this.f);
        int n = (int)((int)this.f.measureText(str2) + j + com.xueqiu.android.stockchart.f.a.a(getContext(), 4.0F));
        this.f.setColor(getResources().getColor(this.a.getResourceId(0, 0)));
        this.e.drawText((String)localObject, n, paramInt, this.f);
      }
      k += 1;
      j += m;
    }
  }
  
  private void b()
  {
    int i2 = 0;
    int[] arrayOfInt = new int[3];
    int m = 0;
    int n = 0;
    if (m < 3) {
      if (m >= this.h.size()) {
        break label154;
      }
    }
    label154:
    for (int j = a((Map.Entry)this.h.get(m));; j = 0)
    {
      if (m < this.i.size()) {}
      for (int k = a((Map.Entry)this.i.get(m));; k = 0)
      {
        int i1 = j;
        if (j < k) {
          i1 = k;
        }
        n += i1;
        arrayOfInt[m] = i1;
        m += 1;
        break;
        k = (getWidth() - n) / 3;
        j = i2;
        while (j < 3)
        {
          arrayOfInt[j] += k;
          j += 1;
        }
        this.g = arrayOfInt;
        return;
      }
    }
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.e = paramCanvas;
    if (this.b == null) {
      return;
    }
    this.f = new Paint();
    this.f.setTextSize(this.d);
    this.f.setAntiAlias(true);
    a();
    b();
    int j = this.c / 2 + (this.c - this.d) / 2;
    a(this.h, j);
    int k = this.c;
    a(this.i, j + k);
  }
  
  public final void setData(List<Map<String, Object>> paramList)
  {
    this.b = paramList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */