package com.xueqiu.android.stock.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.preference.PreferenceManager;
import android.support.v4.view.bd;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.g;

public final class ah
  extends bd
{
  private final String b;
  private Context c;
  private int d;
  private LayoutInflater e;
  private JsonArray f;
  private Drawable g;
  private Drawable h;
  
  public ah(Context paramContext, JsonArray paramJsonArray)
  {
    this.c = paramContext;
    this.f = paramJsonArray;
    this.d = this.f.size();
    this.e = LayoutInflater.from(this.c);
    this.b = PreferenceManager.getDefaultSharedPreferences(this.c).getString(this.c.getString(2131165678), this.c.getString(2131166576));
  }
  
  public final Object a(ViewGroup paramViewGroup, final int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == null)
    {
      View localView = this.e.inflate(2130903205, paramViewGroup, false);
      Object localObject2;
      final String str1;
      label98:
      final Object localObject1;
      label133:
      String str3;
      label168:
      String str2;
      label203:
      String str4;
      label238:
      double d1;
      label272:
      label306:
      TextView localTextView1;
      TextView localTextView2;
      label441:
      float f1;
      if (paramInt == 0) {
        if (this.d == 1)
        {
          localView.setPadding(0, localView.getPaddingTop(), 0, localView.getPaddingBottom());
          localObject2 = this.f.get(paramInt).getAsJsonObject();
          if ((!((JsonObject)localObject2).has("symbol")) || (((JsonObject)localObject2).get("symbol").isJsonNull())) {
            break label689;
          }
          str1 = ((JsonObject)localObject2).get("symbol").getAsString();
          if ((!((JsonObject)localObject2).has("name")) || (((JsonObject)localObject2).get("name").isJsonNull())) {
            break label696;
          }
          localObject1 = ((JsonObject)localObject2).get("name").getAsString();
          if ((!((JsonObject)localObject2).has("current")) || (((JsonObject)localObject2).get("current").isJsonNull())) {
            break label703;
          }
          str3 = ((JsonObject)localObject2).get("current").getAsString();
          if ((!((JsonObject)localObject2).has("percentage")) || (((JsonObject)localObject2).get("percentage").isJsonNull())) {
            break label710;
          }
          str2 = ((JsonObject)localObject2).get("percentage").getAsString();
          if ((!((JsonObject)localObject2).has("change")) || (((JsonObject)localObject2).get("change").isJsonNull())) {
            break label717;
          }
          str4 = ((JsonObject)localObject2).get("change").getAsString();
          if ((!((JsonObject)localObject2).has("history_percentage")) || (((JsonObject)localObject2).get("history_percentage").isJsonNull())) {
            break label724;
          }
          d1 = ((JsonObject)localObject2).get("history_percentage").getAsDouble();
          if ((!((JsonObject)localObject2).has("type")) || (((JsonObject)localObject2).get("type").isJsonNull())) {
            break label729;
          }
          paramInt = ((JsonObject)localObject2).get("type").getAsInt();
          localView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              Intent localIntent = q.a(paramAnonymousView.getContext(), new StockQuote(localObject1, str1));
              paramAnonymousView.getContext().startActivity(localIntent);
              paramAnonymousView = new SNBEvent(1700, 6);
              paramAnonymousView.addProperty("symbol", str1);
              i.a().a(paramAnonymousView);
            }
          });
          localObject2 = localView.findViewById(2131624422);
          TextView localTextView4 = (TextView)localView.findViewById(2131624423);
          localTextView1 = (TextView)localView.findViewById(2131624424);
          TextView localTextView5 = (TextView)localView.findViewById(2131624425);
          TextView localTextView6 = (TextView)localView.findViewById(2131624426);
          localTextView2 = (TextView)localView.findViewById(2131624623);
          TextView localTextView3 = (TextView)localView.findViewById(2131624622);
          if (!this.b.equals(this.c.getString(2131166576))) {
            break label734;
          }
          this.g = r.h(2130838420);
          this.h = r.h(2130838421);
          localTextView4.setText(str3);
          localTextView5.setText((CharSequence)localObject1);
          localTextView6.setText(str1);
          str3 = String.valueOf(d1);
          localObject1 = str3;
          if (d1 > 0.0D) {
            localObject1 = "+" + str3;
          }
          localTextView3.setText(this.c.getString(2131166138, new Object[] { localObject1 }));
          f1 = Float.valueOf(str4).floatValue();
          if (f1 <= 0.0F) {
            break label755;
          }
          localTextView1.setText("+" + str4 + "(+" + str2 + "%)");
          a.a((View)localObject2, this.g);
          label583:
          if (!as.g(paramInt)) {
            break label857;
          }
          localTextView2.setVisibility(0);
          localTextView2.setText(r.d(2131166197));
          localTextView2.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if ("--".equalsIgnoreCase(str1)) {
                return;
              }
              g.a(paramAnonymousView.getContext(), str1, false, paramInt);
              paramAnonymousView = new SNBEvent(1700, 7);
              paramAnonymousView.addProperty("symbol", str1);
              i.a().a(paramAnonymousView);
            }
          });
        }
      }
      for (;;)
      {
        paramViewGroup.addView(localView);
        return localView;
        localView.setPadding(0, localView.getPaddingTop(), localView.getPaddingRight(), localView.getPaddingBottom());
        break;
        if (paramInt != this.d - 1) {
          break;
        }
        localView.setPadding(localView.getPaddingLeft(), localView.getPaddingTop(), 0, localView.getPaddingBottom());
        break;
        label689:
        str1 = "";
        break label98;
        label696:
        localObject1 = "";
        break label133;
        label703:
        str3 = "";
        break label168;
        label710:
        str2 = "";
        break label203;
        label717:
        str4 = "";
        break label238;
        label724:
        d1 = 0.0D;
        break label272;
        label729:
        paramInt = 0;
        break label306;
        label734:
        this.g = r.h(2130838421);
        this.h = r.h(2130838420);
        break label441;
        label755:
        if (f1 == 0.0F)
        {
          localTextView1.setText(str4 + "(" + str2 + "%)");
          a.a((View)localObject2, r.h(2130838419));
          break label583;
        }
        localTextView1.setText(str4 + "(" + str2 + "%)");
        a.a((View)localObject2, this.h);
        break label583;
        label857:
        localTextView2.setVisibility(8);
      }
    }
    return paramViewGroup.getChildAt(paramInt);
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public final int b()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */