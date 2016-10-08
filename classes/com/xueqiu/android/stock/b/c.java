package com.xueqiu.android.stock.b;

import com.xueqiu.android.stock.m;
import com.xueqiu.android.stock.model.IndustryInStock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockRank;
import com.xueqiu.android.tactic.d.g;
import java.util.ArrayList;
import java.util.List;

public abstract interface c
{
  public abstract void D_();
  
  public abstract void E_();
  
  public abstract void a();
  
  public abstract void a(ArrayList<StockQuote> paramArrayList);
  
  public abstract void a(ArrayList<StockRank> paramArrayList, m paramm, String paramString);
  
  public abstract void a(List<g> paramList);
  
  public abstract void b(ArrayList<IndustryInStock> paramArrayList);
  
  public abstract void b(List<com.xueqiu.android.tactic.d.c> paramList);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */