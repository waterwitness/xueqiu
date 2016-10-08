package com.xueqiu.android.stock;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.b;
import com.xueqiu.android.stock.a.j;
import com.xueqiu.android.stock.model.F10Table;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class LHBActivity
  extends b
{
  private String j;
  private ListView k;
  private j p;
  private TextView q;
  private View r;
  private ArrayList<String> s = new ArrayList();
  private String t;
  private int u = 0;
  private Context v;
  
  private static ArrayList<ArrayList<F10Table>> a(HashMap<String, ArrayList<JsonObject>> paramHashMap1, HashMap<String, ArrayList<JsonObject>> paramHashMap2)
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator = paramHashMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ArrayList localArrayList2 = new ArrayList();
      if (paramHashMap2.containsKey(str))
      {
        F10Table localF10Table1 = new F10Table();
        F10Table localF10Table2 = new F10Table();
        localF10Table1.setTitle(str);
        localF10Table1.setHeader(new String[] { "买入机构", "买入金额(万元)" });
        localF10Table2.setHeader(new String[] { "卖出机构", "卖出金额(万元)" });
        localF10Table1.setAlign(new String[] { "left", "right" });
        localF10Table2.setAlign(new String[] { "left", "right" });
        localF10Table1.setWidth(new int[] { 6, 4 });
        localF10Table2.setWidth(new int[] { 6, 4 });
        localF10Table1.setRowdata(a((ArrayList)paramHashMap1.get(str), true));
        localF10Table2.setRowdata(a((ArrayList)paramHashMap2.get(str), false));
        localArrayList2.add(localF10Table1);
        localArrayList2.add(localF10Table2);
        localArrayList1.add(localArrayList2);
      }
    }
    return localArrayList1;
  }
  
  private static void a(HashMap<String, ArrayList<JsonObject>> paramHashMap, JsonArray paramJsonArray)
  {
    int m = paramJsonArray.size();
    int i = 0;
    if (i < m)
    {
      JsonObject localJsonObject = paramJsonArray.get(i).getAsJsonObject();
      String str = localJsonObject.get("typedesc").getAsString();
      ArrayList localArrayList;
      if (paramHashMap.containsKey(str)) {
        localArrayList = (ArrayList)paramHashMap.get(str);
      }
      for (;;)
      {
        localArrayList.add(localJsonObject);
        i += 1;
        break;
        localArrayList = new ArrayList();
        paramHashMap.put(str, localArrayList);
      }
    }
  }
  
  private static String[][] a(ArrayList<JsonObject> paramArrayList, boolean paramBoolean)
  {
    int m = paramArrayList.size();
    String[][] arrayOfString = (String[][])Array.newInstance(String.class, new int[] { m, 2 });
    int i = 0;
    if (i < m)
    {
      JsonObject localJsonObject = (JsonObject)paramArrayList.get(i);
      String str2 = localJsonObject.get("bizsunitname").getAsString();
      if (paramBoolean) {}
      for (String str1 = "buyamt";; str1 = "saleamt")
      {
        arrayOfString[i] = { str2, String.format("%.2f", new Object[] { Float.valueOf(localJsonObject.get(str1).getAsFloat() / 10000.0F) }) };
        i += 1;
        break;
      }
    }
    return arrayOfString;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = getIntent().getStringExtra("extra_symbol");
    this.v = this;
    setContentView(2130903111);
    this.q = ((TextView)findViewById(2131624336));
    this.r = findViewById(2131624335);
    this.k = ((ListView)findViewById(2131624337));
    this.p = new j(this);
    this.k.setAdapter(this.p);
    paramBundle = q.a().b();
    String str = this.j;
    p local2 = new p()
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.i.g(str, local2);
    this.r.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        int j = LHBActivity.a(LHBActivity.this).size();
        if (j > 0)
        {
          paramAnonymousView = new String[j];
          int i = 0;
          while (i < j)
          {
            paramAnonymousView[i] = h.c((String)LHBActivity.a(LHBActivity.this).get(i));
            i += 1;
          }
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(LHBActivity.b(LHBActivity.this), 2131361925);
          localBuilder.setSingleChoiceItems(paramAnonymousView, LHBActivity.c(LHBActivity.this), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              LHBActivity.a(LHBActivity.this, paramAnonymous2Int);
              LHBActivity.a(LHBActivity.this, (String)LHBActivity.a(LHBActivity.this).get(paramAnonymous2Int));
              LHBActivity.e(LHBActivity.this).setText(h.c(LHBActivity.d(LHBActivity.this)));
              LHBActivity.f(LHBActivity.this);
              paramAnonymous2DialogInterface.dismiss();
            }
          });
          localBuilder.setCancelable(true);
          localBuilder.show();
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\LHBActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */