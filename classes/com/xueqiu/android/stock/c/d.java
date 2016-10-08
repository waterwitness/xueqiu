package com.xueqiu.android.stock.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.stock.a.ac;
import com.xueqiu.android.stockchart.f.a;
import java.util.ArrayList;

public final class d
  extends ac
{
  private final int c;
  private final int d;
  
  public d(c paramc, Context paramContext)
  {
    super(paramContext);
    paramc = paramContext.getResources();
    this.c = paramc.getDimensionPixelSize(2131230924);
    this.d = paramc.getDimensionPixelSize(2131230923);
  }
  
  public final int a()
  {
    return c.d(this.a).size() - 1;
  }
  
  public final int a(int paramInt)
  {
    float f = ay.c(this.b);
    if (paramInt == -1) {
      return (int)(f * 0.4D);
    }
    return (int)(f * 0.3D);
  }
  
  public final String a(int paramInt1, int paramInt2)
  {
    Object localObject2 = "--";
    Object localObject1 = localObject2;
    if (paramInt1 == -1)
    {
      localObject1 = localObject2;
      if (paramInt2 == -1) {
        localObject1 = c.f(this.a);
      }
    }
    localObject2 = localObject1;
    if (paramInt1 == -1)
    {
      localObject2 = localObject1;
      if (paramInt2 >= 0) {
        localObject2 = h.c(c.e(this.a).get(paramInt2).getAsJsonObject().get((String)c.d(this.a).get(0)).getAsString());
      }
    }
    if (paramInt1 >= 0)
    {
      if (paramInt2 == -1) {
        return (String)c.g(this.a).get(paramInt1 + 1);
      }
      localObject1 = (String)c.d(this.a).get(paramInt1 + 1);
      JsonObject localJsonObject = c.e(this.a).get(paramInt2).getAsJsonObject();
      if ((localJsonObject != null) && (localJsonObject.get((String)localObject1) != null) && (!localJsonObject.get((String)localObject1).isJsonNull())) {
        return a.b(localJsonObject.get((String)localObject1).getAsDouble());
      }
    }
    return (String)localObject2;
  }
  
  public final void a(View paramView, int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)paramView.findViewById(16908308);
    localTextView.setTextColor(this.a.h().getColor(2131558668));
    localTextView.setGravity(19);
    localTextView.setTypeface(null, 0);
    if (paramInt2 >= 0) {
      localTextView.setGravity(21);
    }
    if (paramInt1 == -1) {
      localTextView.setTypeface(null, 1);
    }
    while (paramInt1 % 2 == 1)
    {
      paramView.setBackgroundColor(this.a.h().getColor(2131558647));
      return;
      String str = a(paramInt1, -1);
      if (str.endsWith("#"))
      {
        localTextView.setTypeface(null, 1);
        if (paramInt2 == -1)
        {
          localTextView.setText(str.replace("#", ""));
          localTextView.setTextColor(this.a.h().getColor(2131558586));
          localTextView.setTypeface(null, 1);
        }
      }
    }
    paramView.setBackgroundColor(this.a.h().getColor(2131558650));
  }
  
  public final int b()
  {
    return c.e(this.a).size();
  }
  
  public final int b(int paramInt)
  {
    if (paramInt < 0) {
      return 0;
    }
    return 1;
  }
  
  public final int b(int paramInt1, int paramInt2)
  {
    if (paramInt1 == -1) {
      return 2130903335;
    }
    return 2130903334;
  }
  
  public final int c()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */