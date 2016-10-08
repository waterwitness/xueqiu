package com.xueqiu.android.trade;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.widget.ae;
import com.xueqiu.android.trade.model.SnowxTraderConfig;
import com.xueqiu.android.trade.model.SnowxTraderConfigItem;
import com.xueqiu.android.trade.model.TradeTokenExpiresTime;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class e
{
  Activity a;
  Map<Integer, Integer> b;
  public f c;
  Dialog d;
  Dialog e = null;
  private String[] f;
  
  public e(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = d();
  }
  
  private Map<Integer, Integer> d()
  {
    int i = 0;
    Object localObject1 = this.a.getResources();
    HashMap localHashMap = new HashMap();
    Object localObject2 = SnowxTraderConfig.getAccessTokeExpiresConfig();
    if ((localObject2 == null) || (((List)localObject2).size() == 0))
    {
      this.f = ((Resources)localObject1).getStringArray(2131492873);
      if (i < this.f.length)
      {
        localObject2 = this.f[i];
        if (((String)localObject2).equals(((Resources)localObject1).getString(TradeTokenExpiresTime.ALL_DAY.lableResId()))) {
          localHashMap.put(Integer.valueOf(i), Integer.valueOf(TradeTokenExpiresTime.ALL_DAY.value()));
        }
        for (;;)
        {
          i += 1;
          break;
          if (((String)localObject2).equals(((Resources)localObject1).getString(TradeTokenExpiresTime.THREE.lableResId()))) {
            localHashMap.put(Integer.valueOf(i), Integer.valueOf(TradeTokenExpiresTime.THREE.value()));
          } else if (((String)localObject2).equals(((Resources)localObject1).getString(TradeTokenExpiresTime.FIFTEEN.lableResId()))) {
            localHashMap.put(Integer.valueOf(i), Integer.valueOf(TradeTokenExpiresTime.FIFTEEN.value()));
          }
        }
      }
    }
    else
    {
      this.f = new String[((List)localObject2).size()];
      i = 0;
      while (i < ((List)localObject2).size())
      {
        localObject1 = (SnowxTraderConfigItem)((List)localObject2).get(i);
        this.f[i] = ((SnowxTraderConfigItem)localObject1).getConfigMessage();
        localHashMap.put(Integer.valueOf(i), Integer.valueOf(Integer.parseInt(((SnowxTraderConfigItem)localObject1).getConfigValue())));
        i += 1;
      }
    }
    return localHashMap;
  }
  
  private int e()
  {
    int i = UserPrefs.getInt(this.a, "trade_write_token_expires", TradeTokenExpiresTime.ALL_DAY.value());
    Object localObject = SnowxTraderConfig.getAccessTokeExpiresConfig();
    if ((localObject == null) || (((List)localObject).size() == 0)) {
      i = TradeTokenExpiresTime.fromValue(i).value();
    }
    for (;;)
    {
      localObject = this.b.keySet().iterator();
      Integer localInteger;
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        localInteger = (Integer)((Iterator)localObject).next();
      } while (((Integer)this.b.get(localInteger)).intValue() != i);
      return localInteger.intValue();
    }
    return 0;
  }
  
  public final void a()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a, 2131361925);
    localBuilder.setTitle(2131166392);
    localBuilder.setSingleChoiceItems(this.f, e(), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = e.this;
        paramAnonymousInt = ((Integer)e.this.b.get(Integer.valueOf(paramAnonymousInt))).intValue();
        Object localObject = paramAnonymousDialogInterface.a.getString(2131165947);
        if (paramAnonymousDialogInterface.d != null)
        {
          if (paramAnonymousDialogInterface.e != null) {
            paramAnonymousDialogInterface.e.dismiss();
          }
          paramAnonymousDialogInterface.e = new ae(paramAnonymousDialogInterface.a, (String)localObject);
          paramAnonymousDialogInterface.e.show();
        }
        localObject = q.a().b();
        paramAnonymousDialogInterface = new e.2(paramAnonymousDialogInterface, paramAnonymousInt);
        ((ai)localObject).m.a(paramAnonymousInt, paramAnonymousDialogInterface);
      }
    });
    this.d = localBuilder.show();
  }
  
  public final boolean b()
  {
    return (this.d != null) && (this.d.isShowing());
  }
  
  protected final void c()
  {
    if ((this.e != null) && (this.e.isShowing())) {}
    try
    {
      this.e.dismiss();
      this.e = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */