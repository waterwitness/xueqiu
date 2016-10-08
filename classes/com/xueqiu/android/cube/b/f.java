package com.xueqiu.android.cube.b;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.a.h;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;
import com.xueqiu.android.cube.model.Holding;

public final class f
  extends h
{
  private int ak;
  private Holding al;
  private g am;
  private NumberPicker an;
  
  public static f a(Holding paramHolding, int paramInt)
  {
    f localf = new f();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_max", paramInt);
    localBundle.putParcelable("arg_holding", paramHolding);
    localf.e(localBundle);
    return localf;
  }
  
  public final void F_()
  {
    super.F_();
    this.am = null;
  }
  
  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.am = ((g)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnFragmentInteractionListener");
    }
  }
  
  public final Dialog b()
  {
    if (this.r != null)
    {
      this.ak = this.r.getInt("arg_max");
      this.al = ((Holding)this.r.getParcelable("arg_holding"));
    }
    View localView = g().getLayoutInflater().inflate(2130903348, null);
    this.an = ((NumberPicker)localView.findViewById(2131625168));
    this.an.setOnValueChangedListener(new NumberPicker.OnValueChangeListener()
    {
      public final void onValueChange(NumberPicker paramAnonymousNumberPicker, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        f.b(f.this).a(f.a(f.this), paramAnonymousInt2);
      }
    });
    this.an.setMaxValue(this.ak);
    this.an.setValue(Long.valueOf(Math.round(this.al.getWeight())).intValue());
    new AlertDialog.Builder(g()).setTitle(String.format("%s(%s)", new Object[] { this.al.getStockName(), this.al.getStockSymbol() })).setView(localView).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        f.c(f.this).clearFocus();
        f.b(f.this).a(f.a(f.this), f.c(f.this).getValue());
      }
    }).create();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */