package com.xueqiu.android.stock.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.stock.a.ac;
import com.xueqiu.android.stock.a.ai;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.view.TableFixHeaders;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
  extends ac
{
  private final int c;
  private final int d;
  
  public g(e parame, Context paramContext)
  {
    super(paramContext);
    parame = paramContext.getResources();
    this.c = parame.getDimensionPixelSize(2131230924);
    this.d = parame.getDimensionPixelSize(2131230923);
  }
  
  public final int a()
  {
    return e.h(this.a).size();
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
    if (paramInt1 == -1)
    {
      if (paramInt2 == -1) {
        return "排名";
      }
      return e.l(this.a)[paramInt2];
    }
    if (paramInt2 == -1) {
      return String.valueOf(paramInt1 + 1);
    }
    String str = e.m(this.a)[paramInt2];
    JsonObject localJsonObject = (JsonObject)e.h(this.a).get(paramInt1);
    if (paramInt2 > 0)
    {
      if (!localJsonObject.get(str).isJsonNull()) {
        return com.xueqiu.android.stockchart.f.a.b(localJsonObject.get(str).getAsDouble());
      }
    }
    else if (!localJsonObject.get(str).isJsonNull()) {
      return localJsonObject.get(str).getAsString();
    }
    return "--";
  }
  
  public final void a(final View paramView, int paramInt1, final int paramInt2)
  {
    if ((paramInt1 == -1) && (paramInt2 >= 0)) {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = e.m(g.this.a)[paramInt2];
          if (paramAnonymousView.equals(e.j(g.this.a))) {
            if (e.k(g.this.a).equals("order_asc")) {
              e.c(g.this.a, "order_desc");
            }
          }
          Object localObject;
          for (;;)
          {
            e.f(g.this.a);
            e.g(g.this.a);
            paramAnonymousView = e.q(g.this.a);
            i = paramAnonymousView.c;
            localIterator = paramAnonymousView.d.iterator();
            while (localIterator.hasNext())
            {
              localObject = (View)localIterator.next();
              paramAnonymousView.a.a(-1, i, (View)localObject);
              i += 1;
            }
            e.c(g.this.a, "order_asc");
            continue;
            e.d(g.this.a, paramAnonymousView);
            e.c(g.this.a, "order_desc");
          }
          int i = paramAnonymousView.b;
          Iterator localIterator = paramAnonymousView.e.iterator();
          while (localIterator.hasNext())
          {
            localObject = (View)localIterator.next();
            paramAnonymousView.a.a(i, -1, (View)localObject);
            i += 1;
          }
          i = paramAnonymousView.b;
          localIterator = paramAnonymousView.f.iterator();
          while (localIterator.hasNext())
          {
            localObject = (List)localIterator.next();
            int j = paramAnonymousView.c;
            localObject = ((List)localObject).iterator();
            while (((Iterator)localObject).hasNext())
            {
              View localView = (View)((Iterator)localObject).next();
              paramAnonymousView.a.a(i, j, localView);
              j += 1;
            }
            i += 1;
          }
          paramAnonymousView.invalidate();
        }
      });
    }
    if ((paramInt1 >= 0) && (paramInt2 == -1)) {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (paramView.getTag() != null)
          {
            paramAnonymousView = new StockQuote(paramView.getTag().toString());
            paramAnonymousView = q.a(g.this.a.g(), paramAnonymousView);
            g.this.a.a(paramAnonymousView);
          }
        }
      });
    }
    TextView localTextView = (TextView)paramView.findViewById(16908308);
    localTextView.setTextColor(this.a.h().getColor(2131558668));
    localTextView.setGravity(19);
    localTextView.setTypeface(null, 0);
    if (paramInt2 >= 0) {
      localTextView.setGravity(21);
    }
    if (paramInt1 == -1)
    {
      localTextView.setTypeface(null, 1);
      if (paramInt2 == -1)
      {
        localTextView.setGravity(17);
        ((TextView)paramView.findViewById(16908309)).setTypeface(null, 1);
      }
    }
    while (paramInt1 % 2 == 1)
    {
      paramView.setBackgroundColor(this.a.h().getColor(2131558647));
      return;
      localTextView.setCompoundDrawablesWithIntrinsicBounds(com.xueqiu.android.base.util.a.a(this.a.h(), 2130837623), null, null, null);
      localTextView.setTextColor(this.a.h().getColor(2131558512));
      if (e.m(this.a)[paramInt2].equals(e.j(this.a)))
      {
        if (e.k(this.a).equals("order_desc")) {}
        for (Drawable localDrawable = com.xueqiu.android.base.util.a.a(this.a.h(), 2130837617);; localDrawable = com.xueqiu.android.base.util.a.a(this.a.h(), 2130837628))
        {
          localTextView.setCompoundDrawablesWithIntrinsicBounds(localDrawable, null, null, null);
          break;
        }
        if (((JsonObject)e.h(this.a).get(paramInt1)).get("symbol").getAsString().equals(e.o(this.a)))
        {
          localTextView.setTypeface(null, 1);
          if (paramInt2 == -1) {
            localTextView.setTextColor(this.a.h().getColor(2131558586));
          }
        }
      }
    }
    paramView.setBackgroundColor(this.a.h().getColor(2131558650));
  }
  
  public final int b()
  {
    return e.l(this.a).length;
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
    if (paramInt1 == -1)
    {
      if (paramInt2 == -1) {
        return 2130903332;
      }
      return 2130903333;
    }
    if (paramInt2 == -1) {
      return 2130903331;
    }
    return 2130903334;
  }
  
  public final void b(View paramView, int paramInt1, int paramInt2)
  {
    if (paramInt1 == -1) {
      if (paramInt2 == -1) {}
    }
    while (paramInt2 != -1)
    {
      ((TextView)paramView.findViewById(16908308)).setText(a(paramInt1, paramInt2));
      return;
    }
    Object localObject = (JsonObject)e.h(this.a).get(paramInt1);
    String str1 = ((JsonObject)localObject).get("symbol").getAsString();
    String str2 = ((JsonObject)localObject).get("name").getAsString();
    if (e.n(this.a) == null)
    {
      localObject = String.valueOf(paramInt1 + 1);
      if (!str1.equals(e.o(this.a))) {
        break label185;
      }
      localObject = String.valueOf(e.p(this.a));
    }
    label185:
    for (;;)
    {
      ((TextView)paramView.findViewById(16908310)).setText((CharSequence)localObject);
      ((TextView)paramView.findViewById(16908308)).setText(str2);
      ((TextView)paramView.findViewById(16908309)).setText(str1);
      paramView.setTag(str1);
      return;
      localObject = String.valueOf(e.n(this.a)[paramInt1]);
      break;
    }
  }
  
  public final int c()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */