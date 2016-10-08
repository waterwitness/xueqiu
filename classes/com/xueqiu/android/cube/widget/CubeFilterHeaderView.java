package com.xueqiu.android.cube.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Spinner;
import android.widget.TextView;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class CubeFilterHeaderView
  extends LinearLayout
{
  private Map<String, String> a = new HashMap();
  private Map<String, String> b = new HashMap();
  private b c = null;
  
  public CubeFilterHeaderView(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public CubeFilterHeaderView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void a(String paramString1, String paramString2)
  {
    this.a.put(paramString1, paramString2);
  }
  
  @TargetApi(16)
  private void a(String paramString, List<a> paramList, int paramInt)
  {
    final ArrayAdapter localArrayAdapter = new ArrayAdapter(getContext(), 2130903282, 16908308);
    localArrayAdapter.addAll(paramList);
    localArrayAdapter.setDropDownViewResource(2130903280);
    final Spinner localSpinner = new Spinner(getContext(), null, 16843479);
    localSpinner.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0F));
    if (Build.VERSION.SDK_INT >= 16) {
      localSpinner.setDropDownWidth(ay.c(getContext()));
    }
    localSpinner.setTag(paramString);
    localSpinner.setAdapter(localArrayAdapter);
    localSpinner.setSelection(paramInt);
    if ((paramList.size() > 0) && (paramList.size() > paramInt)) {
      a(paramString, ((a)paramList.get(paramInt)).value);
    }
    localSpinner.setBackgroundColor(getResources().getColor(2131558728));
    localSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (String)localSpinner.getTag();
        paramAnonymousView = ((a)localArrayAdapter.getItem(paramAnonymousInt)).value;
        CubeFilterHeaderView.a(CubeFilterHeaderView.this).put(paramAnonymousAdapterView, paramAnonymousView);
        if (CubeFilterHeaderView.b(CubeFilterHeaderView.this) != null) {
          CubeFilterHeaderView.b(CubeFilterHeaderView.this).a(CubeFilterHeaderView.a(CubeFilterHeaderView.this));
        }
      }
      
      public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
      {
        v.a("GG", paramAnonymousAdapterView.toString());
      }
    });
    if (Build.VERSION.SDK_INT >= 16) {
      localSpinner.setPopupBackgroundDrawable(getResources().getDrawable(2130837906));
    }
    addView(localSpinner);
  }
  
  private void a(List<a> paramList, final String paramString)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    int i = 0;
    while (i < paramList.size())
    {
      a locala = (a)paramList.get(i);
      final TextView localTextView = (TextView)localLayoutInflater.inflate(2130903281, null);
      localTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0F));
      localTextView.setText(locala.label);
      localTextView.setTag(locala.value);
      localTextView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          String str1 = paramString;
          String str2 = (String)paramAnonymousView.getTag();
          CubeFilterHeaderView.a(CubeFilterHeaderView.this).put(str1, str2);
          if (CubeFilterHeaderView.b(CubeFilterHeaderView.this) != null) {
            CubeFilterHeaderView.b(CubeFilterHeaderView.this).a(CubeFilterHeaderView.a(CubeFilterHeaderView.this));
          }
          localTextView.setSelected(true);
          CubeFilterHeaderView.a(CubeFilterHeaderView.this, (TextView)paramAnonymousView);
        }
      });
      addView(localTextView);
      if (i == 0) {
        setSelectedItem(localTextView);
      }
      if (i != paramList.size() - 1) {
        a();
      }
      i += 1;
    }
    if (paramList.size() > 0) {
      a(paramString, ((a)paramList.get(0)).value);
    }
  }
  
  private void b()
  {
    setOrientation(0);
    setBackgroundColor(getResources().getColor(2131558728));
  }
  
  private void setSelectedItem(TextView paramTextView)
  {
    paramTextView.setSelected(true);
    ViewGroup localViewGroup = (ViewGroup)paramTextView.getParent();
    int i = 0;
    while (i < localViewGroup.getChildCount())
    {
      View localView = localViewGroup.getChildAt(i);
      if (((localView instanceof TextView)) && (localView != paramTextView)) {
        localView.setSelected(false);
      }
      i += 1;
    }
  }
  
  public final void a()
  {
    View localView = new View(getContext());
    Object localObject = getResources();
    localObject = new LinearLayout.LayoutParams(((Resources)localObject).getDimensionPixelOffset(2131230770), ((Resources)localObject).getDimensionPixelOffset(2131230769));
    ((LinearLayout.LayoutParams)localObject).gravity = 16;
    localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localView.setBackgroundColor(getResources().getColor(2131558698));
    addView(localView);
  }
  
  public final void a(Map<String, Map<String, String>> paramMap, ArrayList<Integer> paramArrayList)
  {
    Iterator localIterator1 = paramMap.entrySet().iterator();
    int i = 0;
    if (localIterator1.hasNext())
    {
      Object localObject = (Map.Entry)localIterator1.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (LinkedHashMap)((Map.Entry)localObject).getValue();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator2 = ((LinkedHashMap)localObject).entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        a locala = new a((byte)0);
        locala.label = ((String)localEntry.getKey());
        locala.value = ((String)localEntry.getValue());
        localArrayList.add(locala);
      }
      if (((LinkedHashMap)localObject).size() == 1) {
        a(localArrayList, str);
      }
      for (;;)
      {
        i += 1;
        break;
        a(str, localArrayList, ((Integer)paramArrayList.get(i)).intValue());
        if (i != paramMap.size() - 1) {
          a();
        }
      }
    }
  }
  
  public final void a(JSONArray paramJSONArray)
  {
    int i = 0;
    for (;;)
    {
      String str;
      ArrayList localArrayList;
      if (i < paramJSONArray.length())
      {
        Object localObject = paramJSONArray.getJSONObject(i);
        str = ((JSONObject)localObject).getString("param");
        localObject = ((JSONObject)localObject).getJSONArray("filter_values");
        localArrayList = new ArrayList(((JSONArray)localObject).length());
        int j = 0;
        while (j < ((JSONArray)localObject).length())
        {
          JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(j);
          a locala = new a((byte)0);
          locala.label = localJSONObject.getString("name");
          locala.value = localJSONObject.getString("value");
          localArrayList.add(locala);
          j += 1;
        }
        if (paramJSONArray.length() == 1) {
          a(localArrayList, str);
        }
      }
      else
      {
        return;
      }
      a(str, localArrayList, 0);
      if (i != paramJSONArray.length() - 1) {
        a();
      }
      i += 1;
    }
  }
  
  public Map<String, String> getFilterConditions()
  {
    return this.a;
  }
  
  public Map<String, String> getSiftParams()
  {
    return this.b;
  }
  
  public void setOnFilterChangedListener(b paramb)
  {
    this.c = paramb;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\widget\CubeFilterHeaderView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */