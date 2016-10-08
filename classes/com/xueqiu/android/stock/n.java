package com.xueqiu.android.stock;

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

public final class n
  extends ac
{
  private final int c;
  private final int d;
  
  public n(RZRQActivity paramRZRQActivity, Context paramContext)
  {
    super(paramContext);
    paramRZRQActivity = paramContext.getResources();
    this.c = paramRZRQActivity.getDimensionPixelSize(2131230924);
    this.d = paramRZRQActivity.getDimensionPixelSize(2131230923);
  }
  
  public final int a()
  {
    return RZRQActivity.b(this.a).size();
  }
  
  public final int a(int paramInt)
  {
    return (int)(ay.c(this.b) * 0.33D);
  }
  
  public final String a(int paramInt1, int paramInt2)
  {
    Object localObject1 = "--";
    Object localObject2 = localObject1;
    if (paramInt1 == -1)
    {
      localObject2 = localObject1;
      if (paramInt2 == -1) {
        localObject2 = RZRQActivity.d(this.a);
      }
    }
    localObject1 = localObject2;
    if (paramInt1 == -1)
    {
      localObject1 = localObject2;
      if (paramInt2 >= 0) {
        localObject1 = RZRQActivity.e(this.a)[paramInt2];
      }
    }
    localObject2 = localObject1;
    JsonObject localJsonObject;
    if (paramInt1 >= 0)
    {
      localJsonObject = RZRQActivity.b(this.a).get(paramInt1).getAsJsonObject();
      if (paramInt2 != -1) {
        break label99;
      }
      localObject2 = h.c(localJsonObject.get("tradedate").getAsString());
    }
    label99:
    String str;
    do
    {
      do
      {
        do
        {
          return (String)localObject2;
          str = RZRQActivity.c(this.a)[paramInt2];
          localObject2 = localObject1;
        } while (localJsonObject == null);
        localObject2 = localObject1;
      } while (localJsonObject.get(str) == null);
      localObject2 = localObject1;
    } while (localJsonObject.get(str).isJsonNull());
    if (localJsonObject.get(str).getAsDouble() == 0.0D) {}
    for (localObject1 = "0"; paramInt2 > 2; localObject1 = a.b(localJsonObject.get(str).getAsDouble())) {
      return (String)localObject1 + "股";
    }
    return (String)localObject1 + "元";
  }
  
  public final void a(View paramView, int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)paramView.findViewById(16908308);
    localTextView.setTextColor(this.a.getResources().getColor(2131558668));
    localTextView.setGravity(19);
    localTextView.setTypeface(null, 0);
    if (paramInt2 >= 0) {
      localTextView.setGravity(21);
    }
    if (paramInt1 == -1) {
      localTextView.setTypeface(null, 1);
    }
    if (paramInt1 % 2 == 1)
    {
      paramView.setBackgroundColor(this.a.getResources().getColor(2131558647));
      return;
    }
    paramView.setBackgroundColor(this.a.getResources().getColor(2131558650));
  }
  
  public final int b()
  {
    return RZRQActivity.c(this.a).length;
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */