package com.xueqiu.android.stock.c;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonElement;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.stock.StockDetailActivity;
import com.xueqiu.android.stock.StockFollowersActivity;
import com.xueqiu.android.stock.model.StockQuote;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled"})
public final class t
  extends com.xueqiu.android.common.c
  implements com.xueqiu.android.stockchart.c.b
{
  public StockQuote a = null;
  TextView ak;
  TextView al;
  public com.xueqiu.android.stockchart.b.a am = new com.xueqiu.android.stockchart.b.a()
  {
    public final void a()
    {
      SNBEvent localSNBEvent = new SNBEvent(1602, 4);
      localSNBEvent.addProperty("symbol", t.c(t.this).getSymbol());
      localSNBEvent.addProperty("type", String.valueOf(t.d(t.this)));
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    
    public final void a(int paramAnonymousInt)
    {
      SNBEvent localSNBEvent = new SNBEvent(1600, 7);
      localSNBEvent.addProperty("symbol", t.c(t.this).getSymbol());
      localSNBEvent.addProperty("type", String.valueOf(t.d(t.this)));
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    
    public final void a(String paramAnonymousString)
    {
      SNBEvent localSNBEvent = new SNBEvent(1600, 8);
      if (paramAnonymousString.equals("big")) {
        localSNBEvent = new SNBEvent(1602, 5);
      }
      localSNBEvent.addProperty("symbol", t.c(t.this).getSymbol());
      localSNBEvent.addProperty("type", String.valueOf(t.d(t.this)));
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    
    public final void a(String paramAnonymousString1, String paramAnonymousString2, int paramAnonymousInt)
    {
      SNBEvent localSNBEvent = new SNBEvent(1600, 6);
      if (paramAnonymousString1.equals("big")) {
        localSNBEvent = new SNBEvent(1602, 6);
      }
      localSNBEvent.addProperty("symbol", t.c(t.this).getSymbol());
      localSNBEvent.addProperty("name", paramAnonymousString2);
      localSNBEvent.addProperty("type", String.valueOf(t.d(t.this)));
      localSNBEvent.addProperty("tab_id", String.valueOf(paramAnonymousInt));
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    
    public final void b(String paramAnonymousString)
    {
      SNBEvent localSNBEvent = new SNBEvent(1600, 5);
      if (paramAnonymousString.equals("big")) {
        localSNBEvent = new SNBEvent(1602, 7);
      }
      localSNBEvent.addProperty("symbol", t.c(t.this).getSymbol());
      localSNBEvent.addProperty("type", String.valueOf(t.d(t.this)));
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
  };
  public com.xueqiu.android.stockchart.a.b an = new com.xueqiu.android.stockchart.a.b()
  {
    public final void a(String paramAnonymousString) {}
  };
  private WebView ao = null;
  private double ap;
  List<Map<String, Object>> b = null;
  ar c = null;
  public com.xueqiu.android.stockchart.d.c d;
  public com.xueqiu.android.stockchart.d.b e;
  public com.xueqiu.android.stockchart.e.h f;
  int g;
  TextView h;
  
  final void C()
  {
    if (this.a.getUpdateTime() == null) {}
    TextView localTextView;
    do
    {
      return;
      localTextView = (TextView)c(2131624025);
    } while (localTextView == null);
    Object localObject = this.a.getUpdateTime();
    SimpleDateFormat localSimpleDateFormat;
    if (((Calendar)localObject).get(1) == Calendar.getInstance().get(1))
    {
      str = "MM-dd HH:mm:ss";
      localSimpleDateFormat = new SimpleDateFormat(str, Locale.CHINA);
      if (!as.c(this.a.getType())) {
        break label143;
      }
    }
    label143:
    for (String str = "(" + a(2131166216) + ")";; str = "(" + a(2131166215) + ")")
    {
      localObject = localSimpleDateFormat.format(((Calendar)localObject).getTime());
      localTextView.setText((String)localObject + str);
      return;
      str = "yyyy-MM-dd HH:mm:ss";
      break;
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903460, paramViewGroup, false);
    ((FrameLayout)paramLayoutInflater.findViewById(2131625478)).setLayoutParams(new LinearLayout.LayoutParams(-1, ay.d(f()) / 2));
    this.h = ((TextView)paramLayoutInflater.findViewById(2131625465));
    this.ak = ((TextView)paramLayoutInflater.findViewById(2131625467));
    this.al = ((TextView)paramLayoutInflater.findViewById(2131625468));
    return paramLayoutInflater;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.a = ((StockQuote)this.r.getParcelable("extra_portfolio"));
    }
    this.c = ar.a();
  }
  
  public final void a(final View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.d = ((com.xueqiu.android.stockchart.d.c)i().a("small_chart_fragment_tag"));
    if (this.d == null)
    {
      this.d = new com.xueqiu.android.stockchart.d.c();
      this.d.e = this;
      this.d.a(this.a.getSymbol());
      this.d.c = ((StockDetailActivity)g());
      this.d.d = ((StockDetailActivity)g());
      this.d.al = this.am;
      this.d.am = this.an;
      paramView = i().a();
      paramView.a(2131625478, this.d, "small_chart_fragment_tag");
      if (((com.xueqiu.android.common.b)g()).n) {
        paramView.d();
      }
    }
    paramView = (TextView)c(2131625469);
    x().a(this.a.getSymbol(), new p()
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(t.this.g(), StockFollowersActivity.class);
        paramAnonymousView.putExtra("extra_symbol", t.c(t.this).getSymbol());
        paramAnonymousView.putExtra("extra_name", t.c(t.this).getName());
        t.this.a(paramAnonymousView);
        paramAnonymousView = new SNBEvent(1600, 9);
        paramAnonymousView.addProperty("symbol", t.c(t.this).getSymbol());
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    });
  }
  
  public final void a(String paramString1, String paramString2, Map<String, String> paramMap, final com.xueqiu.android.stockchart.c.a<JsonElement> parama)
  {
    parama = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        if (parama != null) {
          parama.a(paramAnonymousy);
        }
      }
    };
    x().a(paramString1, paramString2, paramMap, parama);
  }
  
  public final void b(String paramString1, String paramString2, Map<String, String> paramMap, final com.xueqiu.android.stockchart.c.a<JsonElement> parama)
  {
    parama = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        if (parama != null) {
          parama.a(paramAnonymousy);
        }
      }
    };
    x().b(paramString1, paramString2, paramMap, parama);
  }
  
  public final void e()
  {
    if ((this.ao != null) && (this.ao.getParent() != null))
    {
      ((ViewGroup)this.ao.getParent()).removeView(this.ao);
      this.ao.removeAllViews();
      this.ao.destroy();
      this.ao = null;
    }
    super.e();
  }
  
  final void u()
  {
    double d1 = this.a.getCurrent();
    this.h.setText(as.a(this.a.getTickSize(), d1));
    double d2 = this.a.getChange();
    int i = this.c.a(d2);
    this.h.setTextColor(i);
    this.ak.setTextColor(i);
    this.al.setTextColor(i);
    final Object localObject = "";
    if (d2 > 0.0D) {
      localObject = "+";
    }
    this.ak.setText(String.format("%s%s", new Object[] { localObject, as.a(this.a.getTickSize(), d2) }));
    this.al.setText(String.format("%s%.2f%%", new Object[] { localObject, Double.valueOf(this.a.getPercentage()) }));
    if ((this.ap != 0.0D) && (this.ap != d1))
    {
      localObject = c(2131625464);
      ((View)localObject).setLayoutParams(new RelativeLayout.LayoutParams(this.h.getWidth(), -1));
      ((View)localObject).setBackgroundColor(this.c.a(d1 - this.ap));
      ((View)localObject).clearAnimation();
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setDuration(400L);
      localAlphaAnimation.setStartOffset(0L);
      localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          paramAnonymousAnimation = new AlphaAnimation(1.0F, 0.0F);
          paramAnonymousAnimation.setDuration(600L);
          paramAnonymousAnimation.setStartOffset(0L);
          localObject.startAnimation(paramAnonymousAnimation);
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      ((View)localObject).startAnimation(localAlphaAnimation);
    }
    this.ap = d1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */