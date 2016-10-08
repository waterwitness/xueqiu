package com.xueqiu.android.stock;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.e;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.a.k;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.widget.DateTimePicker;
import com.xueqiu.android.stock.model.EventCalListPair;
import com.xueqiu.android.stock.model.InvestmentCalendar;
import com.xueqiu.android.stock.model.InvestmentCalendarEvent;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONObject;

public class InvestmentCalEventAddActivity
  extends b
{
  private k A = null;
  private ProgressDialog B;
  private boolean C;
  private View.OnClickListener D = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      case 2131625500: 
      case 2131625502: 
      case 2131625503: 
      case 2131625505: 
      case 2131625506: 
      case 2131625508: 
      case 2131625509: 
      case 2131625511: 
      case 2131625512: 
      case 2131625513: 
      case 2131625514: 
      case 2131625516: 
      case 2131625517: 
      case 2131625519: 
      case 2131625520: 
      case 2131625522: 
      case 2131625523: 
      default: 
        return;
      case 2131625524: 
        InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this, 1);
        return;
      case 2131625498: 
        InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, 2131624794);
        return;
      case 2131625499: 
        InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, 2131624796);
        return;
      case 2131625501: 
        InvestmentCalEventAddActivity.this.findViewById(2131625503).performClick();
        return;
      case 2131625504: 
        paramAnonymousView = InvestmentCalEventAddActivity.this;
        paramAnonymousView.k = 0;
        paramAnonymousView.k();
        return;
      case 2131625510: 
        paramAnonymousView = InvestmentCalEventAddActivity.this;
        paramAnonymousView.k = 2;
        paramAnonymousView.k();
        return;
      case 2131625507: 
        paramAnonymousView = InvestmentCalEventAddActivity.this;
        paramAnonymousView.k = 1;
        paramAnonymousView.k();
        return;
      case 2131625515: 
        paramAnonymousView = InvestmentCalEventAddActivity.this;
        paramAnonymousView.startActivityForResult(new Intent(paramAnonymousView.j, SearchStockActivity.class), 0);
        return;
      case 2131625521: 
        InvestmentCalEventAddActivity.this.j();
        return;
      case 2131625526: 
        paramAnonymousView = InvestmentCalEventAddActivity.this;
        new AlertDialog.Builder(paramAnonymousView.j).setMessage(paramAnonymousView.getString(2131165226)).setPositiveButton(2131165361, new InvestmentCalEventAddActivity.2(paramAnonymousView)).setNegativeButton(2131165296, null).create().show();
        return;
      case 2131625525: 
        InvestmentCalEventAddActivity.c(InvestmentCalEventAddActivity.this);
        return;
      }
      InvestmentCalEventAddActivity.this.findViewById(2131625520).performClick();
    }
  };
  private x<InvestmentCalendar> E;
  Context j;
  int k;
  DialogInterface.OnClickListener p = new DialogInterface.OnClickListener()
  {
    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      switch (InvestmentCalEventAddActivity.e(InvestmentCalEventAddActivity.this))
      {
      default: 
      case 0: 
      case 1: 
        do
        {
          return;
          ((TextView)InvestmentCalEventAddActivity.this.findViewById(2131625506)).setText(InvestmentCalEventAddActivity.this.getResources().getStringArray(2131492891)[paramAnonymousInt]);
          if (paramAnonymousInt == 0)
          {
            InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mTimezone = "Asia/Shanghai";
            return;
          }
          InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mTimezone = "US/Eastern";
          return;
        } while (InvestmentCalEventAddActivity.f(InvestmentCalEventAddActivity.this) == null);
        paramAnonymousDialogInterface = (InvestmentCalendar)InvestmentCalEventAddActivity.f(InvestmentCalEventAddActivity.this).get(paramAnonymousInt);
        InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mCalendar_id = paramAnonymousDialogInterface.mId;
        ((TextView)InvestmentCalEventAddActivity.this.findViewById(2131625509)).setText(paramAnonymousDialogInterface.mTitle);
        if ((paramAnonymousDialogInterface.mType == 2) || (!TextUtils.isEmpty(InvestmentCalEventAddActivity.g(InvestmentCalEventAddActivity.this))))
        {
          paramAnonymousDialogInterface = new int[2];
          DialogInterface tmp180_179 = paramAnonymousDialogInterface;
          tmp180_179[0] = 2131625515;
          DialogInterface tmp185_180 = tmp180_179;
          tmp185_180[1] = 2131625521;
          tmp185_180;
          InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this, paramAnonymousDialogInterface);
          InvestmentCalEventAddActivity.c(InvestmentCalEventAddActivity.this, new int[] { 2131625518 });
          InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, paramAnonymousDialogInterface);
          return;
        }
        if ((TextUtils.isEmpty(InvestmentCalEventAddActivity.g(InvestmentCalEventAddActivity.this))) || (TextUtils.isEmpty(InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mStock)))
        {
          InvestmentCalEventAddActivity.c(InvestmentCalEventAddActivity.this, new int[] { 2131625518, 2131625521 });
          InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, new int[] { 2131625515 });
          return;
        }
        InvestmentCalEventAddActivity.c(InvestmentCalEventAddActivity.this, new int[] { 2131625521 });
        InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this, new int[] { 2131625518 });
        InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, new int[] { 2131625515, 2131625518 });
        return;
      case 2: 
        paramAnonymousDialogInterface = "0";
        if (paramAnonymousInt == 1) {
          paramAnonymousDialogInterface = "5min";
        }
        for (;;)
        {
          InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mAlert = paramAnonymousDialogInterface;
          paramAnonymousDialogInterface = InvestmentCalEventAddActivity.this.getResources().getStringArray(2131492864);
          ((TextView)InvestmentCalEventAddActivity.this.findViewById(2131625512)).setText(paramAnonymousDialogInterface[paramAnonymousInt]);
          return;
          if (paramAnonymousInt == 2) {
            paramAnonymousDialogInterface = "15min";
          } else if (paramAnonymousInt == 3) {
            paramAnonymousDialogInterface = "30min";
          } else if (paramAnonymousInt == 4) {
            paramAnonymousDialogInterface = "1";
          } else if (paramAnonymousInt == 5) {
            paramAnonymousDialogInterface = "12";
          } else if (paramAnonymousInt == 6) {
            paramAnonymousDialogInterface = "24";
          }
        }
      }
      InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mStock_event_type = (paramAnonymousInt + 1);
      paramAnonymousDialogInterface = InvestmentCalEventAddActivity.this.getResources().getStringArray(2131492875);
      ((TextView)InvestmentCalEventAddActivity.this.findViewById(2131625523)).setText(paramAnonymousDialogInterface[paramAnonymousInt]);
    }
  };
  private String q;
  private String r;
  private boolean s;
  private ArrayList<InvestmentCalendar> t = null;
  private ArrayList<InvestmentCalendar> u = null;
  private InvestmentCalendarEvent v = null;
  private InvestmentCalendarEvent w = null;
  private boolean x = false;
  private AlertDialog.Builder y = null;
  private Dialog z = null;
  
  private static void a(View paramView, Drawable paramDrawable)
  {
    Rect localRect = new Rect();
    paramDrawable.getPadding(localRect);
    int i = paramView.getPaddingTop();
    int m = localRect.top;
    int n = paramView.getPaddingLeft();
    int i1 = localRect.left;
    int i2 = paramView.getPaddingRight();
    int i3 = localRect.right;
    int i4 = paramView.getPaddingBottom();
    int i5 = localRect.bottom;
    paramView.setBackgroundDrawable(paramDrawable);
    paramView.setPadding(n + i1, i + m, i2 + i3, i5 + i4);
  }
  
  private void a(InvestmentCalendarEvent paramInvestmentCalendarEvent)
  {
    EditText localEditText2 = (EditText)findViewById(2131625497);
    TextView localTextView4 = (TextView)findViewById(2131624794);
    TextView localTextView5 = (TextView)findViewById(2131624796);
    Object localObject3 = (TextView)findViewById(2131625506);
    TextView localTextView2 = (TextView)findViewById(2131625509);
    TextView localTextView3 = (TextView)findViewById(2131625512);
    Object localObject2 = (EditText)findViewById(2131625513);
    EditText localEditText1 = (EditText)findViewById(2131625514);
    TextView localTextView1 = (TextView)findViewById(2131625517);
    View localView1 = findViewById(2131625518);
    View localView2 = findViewById(2131625521);
    Object localObject1;
    if (paramInvestmentCalendarEvent.mTitle == null)
    {
      localObject1 = "";
      localEditText2.setText(Html.fromHtml((String)localObject1));
      long l = paramInvestmentCalendarEvent.mStart_date;
      if (l > 0L) {
        localTextView4.setText(h.a(h.a(new Date(l), "yyyy-MM-dd HH:mm"), TimeZone.getTimeZone(paramInvestmentCalendarEvent.mTimezone), "yyyy-MM-dd HH:mm", "yyyy-MM-dd HH:mm"));
      }
      l = paramInvestmentCalendarEvent.mEnd_Date;
      if (l > 0L) {
        localTextView5.setText(h.a(h.a(new Date(l), "yyyy-MM-dd HH:mm"), TimeZone.getTimeZone(paramInvestmentCalendarEvent.mTimezone), "yyyy-MM-dd HH:mm", "yyyy-MM-dd HH:mm"));
      }
      ((CheckBox)findViewById(2131625503)).setChecked(paramInvestmentCalendarEvent.mAll_day);
      localObject1 = getResources().getStringArray(2131492891);
      if (paramInvestmentCalendarEvent.mTimezone == null) {
        break label626;
      }
      if (!paramInvestmentCalendarEvent.mTimezone.contains("Asia/Shanghai")) {
        break label619;
      }
      localObject1 = localObject1[0];
      label274:
      ((TextView)localObject3).setText((CharSequence)localObject1);
      if (!this.s) {
        break label632;
      }
      localObject1 = paramInvestmentCalendarEvent.mCalendar_title;
    }
    for (;;)
    {
      label292:
      localTextView2.setText((CharSequence)localObject1);
      localTextView3.setText(b(paramInvestmentCalendarEvent.mStat));
      label320:
      label339:
      label449:
      boolean bool1;
      label472:
      int i;
      if (paramInvestmentCalendarEvent.mDescription == null)
      {
        localObject1 = "";
        localEditText1.setText(Html.fromHtml((String)localObject1));
        if (paramInvestmentCalendarEvent.mLocation != null) {
          break label731;
        }
        localObject1 = "";
        ((EditText)localObject2).setText(Html.fromHtml((String)localObject1));
        if (!paramInvestmentCalendarEvent.mIsStockEvent) {
          break label739;
        }
        localTextView1.setText(paramInvestmentCalendarEvent.mStock);
        localView1.setVisibility(8);
        c(new int[] { 2131625510, 2131625518 });
        localView2.setVisibility(0);
        a(new int[] { 2131625515, 2131625521 });
        if (paramInvestmentCalendarEvent.mStock_event_type != 0) {
          ((TextView)findViewById(2131625523)).setText(getResources().getStringArray(2131492875)[(paramInvestmentCalendarEvent.mStock_event_type - 1)]);
        }
        if ("1".equals(paramInvestmentCalendarEvent.mPrivacy_write)) {
          break label965;
        }
        if (!paramInvestmentCalendarEvent.mIsStockEvent) {
          break label928;
        }
        bool1 = false;
        if (this.u == null) {
          break label1000;
        }
        localObject1 = this.u.iterator();
        for (;;)
        {
          if (((Iterator)localObject1).hasNext())
          {
            localObject2 = (InvestmentCalendar)((Iterator)localObject1).next();
            if (((InvestmentCalendar)localObject2).mId == paramInvestmentCalendarEvent.mCalendar_id) {
              if (!((InvestmentCalendar)localObject2).mIsMine) {
                i = 1;
              }
            }
          }
        }
      }
      for (;;)
      {
        label528:
        int m;
        label541:
        boolean bool2;
        if (!TextUtils.isEmpty(this.q))
        {
          m = 1;
          if ((m != 0) || ((i == 0) && (!paramInvestmentCalendarEvent.mIsStockEvent))) {
            break label983;
          }
          bool2 = true;
          label561:
          if (!this.s) {
            break label989;
          }
          a(true, false);
        }
        for (;;)
        {
          if ((paramInvestmentCalendarEvent.mIsStockEvent) || (!TextUtils.isEmpty(this.q))) {
            d(new int[] { 2131625507, 2131625515 });
          }
          return;
          localObject1 = paramInvestmentCalendarEvent.mTitle;
          break;
          label619:
          localObject1 = localObject1[1];
          break label274;
          label626:
          localObject1 = "";
          break label274;
          label632:
          if (paramInvestmentCalendarEvent.mIsStockEvent)
          {
            localObject1 = paramInvestmentCalendarEvent.mStock + "大事件";
            break label292;
          }
          if (this.u == null) {
            break label1006;
          }
          localObject1 = this.u.iterator();
          do
          {
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            localObject3 = (InvestmentCalendar)((Iterator)localObject1).next();
          } while (((InvestmentCalendar)localObject3).mId != paramInvestmentCalendarEvent.mCalendar_id);
          localObject1 = ((InvestmentCalendar)localObject3).mTitle;
          break label292;
          localObject1 = paramInvestmentCalendarEvent.mDescription;
          break label320;
          label731:
          localObject1 = paramInvestmentCalendarEvent.mLocation;
          break label339;
          label739:
          if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mStock))
          {
            localTextView1.setText(paramInvestmentCalendarEvent.mStock);
            localView1.setVisibility(0);
            if (paramInvestmentCalendarEvent.mShare_id > 0L)
            {
              ((CheckBox)findViewById(2131625520)).setChecked(true);
              localView2.setVisibility(0);
              a(new int[] { 2131625515, 2131625518, 2131625521 });
              if (paramInvestmentCalendarEvent.mStock_event_type == 0) {
                break label449;
              }
              ((TextView)findViewById(2131625523)).setText(getResources().getStringArray(2131492875)[(paramInvestmentCalendarEvent.mStock_event_type - 1)]);
              break label449;
            }
            c(new int[] { 2131625521 });
            a(new int[] { 2131625515, 2131625518 });
            break label449;
          }
          c(new int[] { 2131625524, 2131625518, 2131625521 });
          a(new int[] { 2131625515 });
          break label449;
          label928:
          if (TextUtils.isEmpty(paramInvestmentCalendarEvent.mTitle))
          {
            bool1 = false;
            break label472;
          }
          u.a();
          if (UserLogonDataPrefs.getLogonUserId() == paramInvestmentCalendarEvent.mAuthor_id)
          {
            bool1 = false;
            break label472;
          }
          label965:
          bool1 = true;
          break label472;
          i = 0;
          break label528;
          m = 0;
          break label541;
          label983:
          bool2 = false;
          break label561;
          label989:
          a(bool1, bool2);
        }
        label1000:
        i = 0;
      }
      label1006:
      localObject1 = "";
    }
  }
  
  private void a(InvestmentCalendarEvent paramInvestmentCalendarEvent, int paramInt)
  {
    if (paramInt == 0) {
      b(paramInvestmentCalendarEvent);
    }
    for (;;)
    {
      if ((paramInt == 0) || (2 == paramInt)) {
        ((CheckBox)findViewById(2131625503)).setChecked(true);
      }
      return;
      if (1 == paramInt)
      {
        c(paramInvestmentCalendarEvent);
      }
      else if (2 == paramInt)
      {
        b(paramInvestmentCalendarEvent);
        c(paramInvestmentCalendarEvent);
        if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mStock))
        {
          ((TextView)findViewById(2131625517)).setText(paramInvestmentCalendarEvent.mStock);
          ((TextView)findViewById(2131625509)).setText(this.q + "大事件");
        }
        d(new int[] { 2131625507, 2131625515 });
        c(new int[] { 2131625510 });
      }
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (!paramBoolean2))
    {
      d(new int[] { 2131625497, 2131625498, 2131625499, 2131625504, 2131625507, 2131625510, 2131625513, 2131625514, 2131625515, 2131625501, 2131625503, 2131625518, 2131625520, 2131625521 });
      c(new int[] { 2131625501, 2131625524, 2131625525, 2131625526, 2131625518 });
    }
    while (!paramBoolean2) {
      return;
    }
    d(new int[] { 2131625497, 2131625498, 2131625499, 2131625504, 2131625507, 2131625513, 2131625514, 2131625515, 2131625501, 2131625503, 2131625518, 2131625520, 2131625521 });
    c(new int[] { 2131625501, 2131625524, 2131625526, 2131625518 });
    b(new int[] { 2131625510 });
    this.C = true;
  }
  
  private void a(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0)) {
      return;
    }
    int n = paramArrayOfInt.length;
    TypedArray localTypedArray;
    if (n == 1)
    {
      localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772209 });
      a(findViewById(paramArrayOfInt[0]), getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
      return;
    }
    int m = 0;
    label64:
    int i;
    if (m < n)
    {
      if (m != 0) {
        break label128;
      }
      i = 2130772211;
    }
    for (;;)
    {
      localTypedArray = getTheme().obtainStyledAttributes(new int[] { i });
      a(findViewById(paramArrayOfInt[m]), getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
      m += 1;
      break label64;
      break;
      label128:
      if (m == n - 1) {
        i = 2130772205;
      } else {
        i = 2130772207;
      }
    }
  }
  
  private static String b(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("alert"))
      {
        paramString = paramString.getString("alert");
        if ("0".equals(paramString)) {
          return "无";
        }
        if ("5min".equals(paramString)) {
          return "5分钟前";
        }
        if ("15min".equals(paramString)) {
          return "15分钟前";
        }
        if ("30min".equals(paramString)) {
          return "30分钟前";
        }
        if ("1".equals(paramString)) {
          return "1小时前";
        }
        if ("12".equals(paramString)) {
          return "12小时前";
        }
        if ("24".equals(paramString)) {
          return "24小时前";
        }
      }
    }
    catch (Exception paramString) {}
    return "";
  }
  
  private void b(InvestmentCalendarEvent paramInvestmentCalendarEvent)
  {
    Object localObject2 = (TextView)findViewById(2131624794);
    TextView localTextView1 = (TextView)findViewById(2131625509);
    TextView localTextView2 = (TextView)findViewById(2131625512);
    long l = paramInvestmentCalendarEvent.mStart_date;
    if (l > 0L)
    {
      if (paramInvestmentCalendarEvent.mAll_day)
      {
        localObject1 = "yyyy-MM-dd";
        ((TextView)localObject2).setText(h.a(new Date(l), (String)localObject1));
      }
    }
    else
    {
      localObject1 = this.t.iterator();
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = (InvestmentCalendar)((Iterator)localObject1).next();
      } while (((InvestmentCalendar)localObject2).mId != paramInvestmentCalendarEvent.mCalendar_id);
    }
    for (Object localObject1 = ((InvestmentCalendar)localObject2).mTitle;; localObject1 = "")
    {
      localTextView1.setText((CharSequence)localObject1);
      localTextView2.setText(b(paramInvestmentCalendarEvent.mStat));
      return;
      localObject1 = "yyyy-MM-dd HH:mm";
      break;
    }
  }
  
  private void b(int[] paramArrayOfInt)
  {
    int m = paramArrayOfInt.length;
    int i = 0;
    while (i < m)
    {
      findViewById(paramArrayOfInt[i]).setVisibility(0);
      i += 1;
    }
  }
  
  private void c(int paramInt)
  {
    if (paramInt == 0) {}
    try
    {
      l();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    if (1 == paramInt)
    {
      m();
      return;
    }
    if (2 == paramInt)
    {
      l();
      m();
      this.w.mStock = this.q;
    }
  }
  
  private void c(InvestmentCalendarEvent paramInvestmentCalendarEvent)
  {
    TextView localTextView = (TextView)findViewById(2131624796);
    long l = paramInvestmentCalendarEvent.mEnd_Date;
    if (l > 0L) {
      if (!paramInvestmentCalendarEvent.mAll_day) {
        break label72;
      }
    }
    label72:
    for (paramInvestmentCalendarEvent = "yyyy-MM-dd";; paramInvestmentCalendarEvent = "yyyy-MM-dd HH:mm")
    {
      localTextView.setText(h.a(new Date(l), paramInvestmentCalendarEvent));
      ((TextView)findViewById(2131625506)).setText(getResources().getStringArray(2131492891)[0]);
      return;
    }
  }
  
  private void c(int[] paramArrayOfInt)
  {
    int m = paramArrayOfInt.length;
    int i = 0;
    while (i < m)
    {
      findViewById(paramArrayOfInt[i]).setVisibility(8);
      i += 1;
    }
  }
  
  private void d(int paramInt)
  {
    aa.a(getResources().getString(paramInt));
  }
  
  private void d(int[] paramArrayOfInt)
  {
    int m = paramArrayOfInt.length;
    int i = 0;
    while (i < m)
    {
      findViewById(paramArrayOfInt[i]).setEnabled(false);
      i += 1;
    }
  }
  
  private void e(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      c(new int[] { 2131625499, 2131625504, 2131625513, 2131625514, 2131625515, 2131625518, 2131625526 });
      a(new int[] { 2131625498, 2131625501 });
      c(0);
      a(this.w, 0);
      return;
    case 1: 
      b(new int[] { 2131625499, 2131625504, 2131625507, 2131625513, 2131625514, 2131625515 });
      c(new int[] { 2131625524, 2131625526 });
      a(new int[] { 2131625498, 2131625499, 2131625501, 2131625504 });
      a(new int[] { 2131625515 });
      c(1);
      a(this.w, 1);
      return;
    case 2: 
      c(new int[] { 2131625524, 2131625526, 2131625518 });
      b(new int[] { 2131625521 });
      a(new int[] { 2131625498, 2131625499, 2131625501, 2131625504 });
      a(new int[] { 2131625515, 2131625521 });
      c(2);
      this.B.show();
      if ((this.E != null) && (!this.E.h))
      {
        this.E.h = true;
        this.E = null;
      }
      p local5 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      ai localai = com.xueqiu.android.base.q.a().b();
      String str = this.q;
      this.E = localai.j.a(str, -1L, local5);
      return;
    case 3: 
      a(new int[] { 2131625498, 2131625499, 2131625501, 2131625504 });
      c(new int[] { 2131625524 });
      a(this.w);
      return;
    }
    a(new int[] { 2131625498, 2131625499, 2131625501, 2131625504 });
    c(new int[] { 2131625524 });
  }
  
  private void l()
  {
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).add(11, 1);
    ((Calendar)localObject).set(12, 0);
    ((Calendar)localObject).set(13, 0);
    String str = h.a(((Calendar)localObject).getTime(), "yyyy-MM-dd HH:mm");
    this.w.mSDateTime = str;
    this.w.mStart_date = ((Calendar)localObject).getTimeInMillis();
    if ((this.t != null) && (this.t.size() > 0)) {
      this.w.mCalendar_id = ((InvestmentCalendar)this.t.get(0)).mId;
    }
    this.w.mAlert = "0";
    localObject = new JSONObject();
    ((JSONObject)localObject).put("alert", "0");
    this.w.mStat = ((JSONObject)localObject).toString();
    this.w.mPrivacy_write = "0";
    this.w.mShare = "0";
    this.w.mAll_day = true;
    if (!TextUtils.isEmpty(this.q)) {
      this.w.mIsStockEvent = true;
    }
  }
  
  private void m()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(11, 2);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    String str = h.a(localCalendar.getTime(), "yyyy-MM-dd HH:mm");
    this.w.mEDateTime = str;
    this.w.mEnd_Date = localCalendar.getTimeInMillis();
    this.w.mTimezone = "Asia/Shanghai";
  }
  
  protected final void j()
  {
    this.k = 3;
    k();
  }
  
  final void k()
  {
    if (this.y == null)
    {
      this.y = new AlertDialog.Builder(this.j);
      this.y.setNegativeButton(2131165296, null);
      this.A = new k(this.j);
      this.y.setAdapter(this.A, this.p);
      this.z = this.y.create();
    }
    switch (this.k)
    {
    }
    for (;;)
    {
      this.z.show();
      this.A.notifyDataSetChanged();
      return;
      this.A.a(getResources().getStringArray(2131492891));
      continue;
      ArrayList localArrayList = new ArrayList();
      Object localObject = this.t.iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(((InvestmentCalendar)((Iterator)localObject).next()).mTitle);
      }
      localObject = this.A;
      if (localArrayList.size() > 0)
      {
        ((k)localObject).a.clear();
        ((k)localObject).a.addAll(localArrayList);
        continue;
        this.A.a(getResources().getStringArray(2131492864));
        continue;
        this.A.a(getResources().getStringArray(2131492875));
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramIntent == null);
    paramIntent = (Stock)paramIntent.getParcelableExtra("extra_stock_entry");
    ((TextView)findViewById(2131625517)).setText(paramIntent.getName());
    this.w.mStock = paramIntent.getCode();
    b(new int[] { 2131625518 });
    a(new int[] { 2131625515, 2131625518 });
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    if (isTaskRoot())
    {
      Intent localIntent = new Intent(this, MainActivity.class);
      localIntent.setFlags(67108864);
      startActivity(localIntent);
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903466);
    this.j = this;
    this.C = false;
    paramBundle = getIntent();
    this.q = paramBundle.getStringExtra("sotkc_symbol_extra");
    this.u = paramBundle.getParcelableArrayListExtra("user_investment_cal_list");
    Object localObject2 = this.u;
    Object localObject1 = new ArrayList();
    if (localObject2 != null)
    {
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        InvestmentCalendar localInvestmentCalendar = (InvestmentCalendar)((Iterator)localObject2).next();
        if ((localInvestmentCalendar.mIsMine) && ((!TextUtils.isEmpty(this.q)) || (localInvestmentCalendar.mType != 2))) {
          ((ArrayList)localObject1).add(localInvestmentCalendar);
        }
      }
    }
    this.t = ((ArrayList)localObject1);
    this.v = ((InvestmentCalendarEvent)paramBundle.getParcelableExtra("investment_calendar_model"));
    this.r = paramBundle.getStringExtra("extra_push_event_id");
    this.s = paramBundle.getBooleanExtra("extra_calendar_from_url", false);
    this.B = new ProgressDialog(this.j);
    this.B.setMessage(getString(2131165252));
    if (!TextUtils.isEmpty(this.r))
    {
      this.B.show();
      ((NotificationManager)getSystemService("notification")).cancel(7);
      paramBundle = com.xueqiu.android.base.q.a().b();
      long l = Long.parseLong(this.r);
      localObject1 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this).cancel();
          aa.a(paramAnonymousy);
        }
      };
      paramBundle.j.b(l, (p)localObject1);
      this.x = true;
      if (this.w == null) {
        this.w = new InvestmentCalendarEvent();
      }
      findViewById(2131625524).setOnClickListener(this.D);
      findViewById(2131625498).setOnClickListener(this.D);
      findViewById(2131625499).setOnClickListener(this.D);
      findViewById(2131625501).setOnClickListener(this.D);
      findViewById(2131625504).setOnClickListener(this.D);
      findViewById(2131625507).setOnClickListener(this.D);
      findViewById(2131625510).setOnClickListener(this.D);
      findViewById(2131625515).setOnClickListener(this.D);
      findViewById(2131625518).setOnClickListener(this.D);
      findViewById(2131625521).setOnClickListener(this.D);
      findViewById(2131625526).setOnClickListener(this.D);
      findViewById(2131625525).setOnClickListener(this.D);
      ((CheckBox)findViewById(2131625503)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          TextView localTextView2 = (TextView)InvestmentCalEventAddActivity.this.findViewById(2131624794);
          TextView localTextView1 = (TextView)InvestmentCalEventAddActivity.this.findViewById(2131624796);
          if (paramAnonymousBoolean)
          {
            InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mAll_day = true;
            String str = InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mSDateTime;
            paramAnonymousCompoundButton = str;
            if (str != null)
            {
              paramAnonymousCompoundButton = str;
              if (str.length() > 10) {
                paramAnonymousCompoundButton = str.substring(0, 10);
              }
            }
            localTextView2.setText(paramAnonymousCompoundButton);
            if (!TextUtils.isEmpty(InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mEDateTime))
            {
              str = InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mEDateTime;
              paramAnonymousCompoundButton = str;
              if (str.length() > 10) {
                paramAnonymousCompoundButton = str.substring(0, 10);
              }
              localTextView1.setText(paramAnonymousCompoundButton);
            }
          }
          do
          {
            return;
            InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mAll_day = false;
            localTextView2.setText(InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mSDateTime);
          } while (TextUtils.isEmpty(InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mEDateTime));
          localTextView1.setText(InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mEDateTime);
        }
      });
      ((CheckBox)findViewById(2131625520)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          paramAnonymousCompoundButton = new int[1];
          paramAnonymousCompoundButton[0] = 2131625521;
          if (paramAnonymousBoolean)
          {
            InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mShare = "1";
            InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this, paramAnonymousCompoundButton);
            InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, new int[] { 2131625515, 2131625518, 2131625521 });
            return;
          }
          InvestmentCalEventAddActivity.a(InvestmentCalEventAddActivity.this).mShare = "0";
          InvestmentCalEventAddActivity.b(InvestmentCalEventAddActivity.this, new int[] { 2131625515, 2131625518 });
          InvestmentCalEventAddActivity.c(InvestmentCalEventAddActivity.this, paramAnonymousCompoundButton);
        }
      });
      if (TextUtils.isEmpty(this.r))
      {
        if ((this.w == null) || (TextUtils.isEmpty(this.w.mTitle))) {
          break label711;
        }
        e(3);
      }
    }
    for (;;)
    {
      if (!this.x) {
        break label737;
      }
      setTitle(getString(2131165651));
      return;
      if (this.v == null) {
        break;
      }
      this.w = this.v;
      if (this.w.mStart_date > 0L) {
        this.w.mSDateTime = h.a(new Date(this.w.mStart_date), "yyyy-MM-dd HH:mm");
      }
      if (this.w.mEnd_Date > 0L) {
        this.w.mEDateTime = h.a(new Date(this.w.mEnd_Date), "yyyy-MM-dd HH:mm");
      }
      try
      {
        if (!TextUtils.isEmpty(this.v.mStat))
        {
          paramBundle = new JSONObject(this.v.mStat);
          if (paramBundle.has("alert")) {
            this.w.mAlert = paramBundle.getString("alert");
          }
        }
        this.x = true;
      }
      catch (Exception paramBundle)
      {
        for (;;)
        {
          paramBundle.printStackTrace();
        }
      }
      label711:
      if (!TextUtils.isEmpty(this.q)) {
        e(2);
      } else {
        e(0);
      }
    }
    label737:
    setTitle(getString(2131165221));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\InvestmentCalEventAddActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */