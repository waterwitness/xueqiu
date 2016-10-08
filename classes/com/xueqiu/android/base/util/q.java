package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.xueqiu.android.stock.PrivateFundActivity;
import com.xueqiu.android.stock.StockDetailActivity;
import com.xueqiu.android.stock.model.StockQuote;

public final class q
{
  public static Intent a(@NonNull Context paramContext, @NonNull StockQuote paramStockQuote)
  {
    if (paramStockQuote.getSymbol() == null)
    {
      paramContext = new Intent(paramContext, StockDetailActivity.class);
      paramContext.putExtra("extra_stock", paramStockQuote);
      return paramContext;
    }
    if ((paramStockQuote.getType() == 21) || (paramStockQuote.getSymbol().matches("[Pp][0-9]+")))
    {
      paramContext = new Intent(paramContext, PrivateFundActivity.class);
      paramContext.putExtra("extra_stock", paramStockQuote);
      return paramContext;
    }
    paramContext = new Intent(paramContext, StockDetailActivity.class);
    paramContext.putExtra("extra_stock", paramStockQuote);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, Class paramClass, String paramString, Object paramObject)
  {
    paramContext = new Intent(paramContext, paramClass);
    if ((paramObject instanceof Long))
    {
      paramContext.putExtra(paramString, (Long)paramObject);
      return paramContext;
    }
    if ((paramObject instanceof String))
    {
      paramContext.putExtra(paramString, (String)paramObject);
      return paramContext;
    }
    if ((paramObject instanceof Integer))
    {
      paramContext.putExtra(paramString, (Integer)paramObject);
      return paramContext;
    }
    if ((paramObject instanceof Boolean))
    {
      paramContext.putExtra(paramString, (Boolean)paramObject);
      return paramContext;
    }
    paramContext.putExtra(paramString, (Parcelable)paramObject);
    return paramContext;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */