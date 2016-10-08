package com.xueqiu.android.community;

import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ListView;
import com.xueqiu.android.common.a.a;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.CountryCode;
import com.xueqiu.android.common.model.IAlphabetSortable;
import com.xueqiu.android.common.model.parser.CountryCodeParser;
import com.xueqiu.android.common.model.parser.GroupParser;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONArray;

public class CountryCodeSelectActivity
  extends b
{
  private ArrayList<CountryCode> j()
  {
    try
    {
      InputStream localInputStream = getAssets().open("country_code");
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['Ȁ'];
      for (;;)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localObject = new String(localByteArrayOutputStream.toByteArray(), "UTF-8");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    Object localObject = new GroupParser(new CountryCodeParser()).parse(new JSONArray((String)localObject));
    return (ArrayList<CountryCode>)localObject;
  }
  
  public void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903139);
    ListView localListView = (ListView)findViewById(2131624410);
    ((EditText)findViewById(2131624753)).setHint(2131166025);
    Object localObject3 = j();
    Collections.sort((List)localObject3);
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = getString(2131165543).split(",");
    Object localObject1 = new IAlphabetSortable[arrayOfString.length];
    Object localObject2 = new TreeMap();
    int i = 0;
    CountryCode localCountryCode;
    String str;
    if (i < ((ArrayList)localObject3).size())
    {
      localCountryCode = (CountryCode)((ArrayList)localObject3).get(i);
      str = localCountryCode.pyName.substring(0, 1).toUpperCase(Locale.US);
      if (!localArrayList.contains(str)) {
        localArrayList.add(str);
      }
      if (!((Map)localObject2).containsKey(str))
      {
        paramBundle = new ArrayList();
        ((Map)localObject2).put(str, paramBundle);
        label180:
        j = 0;
        label183:
        if (j >= localObject1.length) {
          break label411;
        }
        if (!localCountryCode.cnName.equals(arrayOfString[j])) {
          break label254;
        }
        localObject1[j] = localCountryCode;
      }
    }
    label254:
    label411:
    for (int j = 1;; j = 0)
    {
      if (j == 0) {
        paramBundle.add(localCountryCode);
      }
      i += 1;
      break;
      paramBundle = (List)((Map)localObject2).get(str);
      break label180;
      j += 1;
      break label183;
      paramBundle = new ArrayList();
      paramBundle.add(Pair.create("常用", Arrays.asList((Object[])localObject1)));
      localObject1 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = (List)((Map.Entry)localObject2).getValue();
        paramBundle.add(Pair.create((String)((Map.Entry)localObject2).getKey(), localObject3));
      }
      paramBundle = new a(this, paramBundle, (byte)0);
      localListView.setAdapter(paramBundle);
      ((EditText)findViewById(2131624753)).addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          paramBundle.getFilter().filter(paramAnonymousCharSequence);
        }
      });
      localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (CountryCode)paramBundle.getItem(paramAnonymousInt);
          if (paramAnonymousAdapterView == null) {
            return;
          }
          paramAnonymousView = new Intent();
          paramAnonymousView.putExtra("extra_country_name", paramAnonymousAdapterView.cnName);
          paramAnonymousView.putExtra("extra_country_code", paramAnonymousAdapterView.code);
          CountryCodeSelectActivity.this.setResult(-1, paramAnonymousView);
          CountryCodeSelectActivity.this.finish();
        }
      });
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\CountryCodeSelectActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */