package com.xueqiu.android.base.b;

import android.text.TextUtils;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.SNBJsonObjectPaser;
import com.xueqiu.android.stock.model.EventCalListPair;
import com.xueqiu.android.stock.model.InvCalEventsPair;
import com.xueqiu.android.stock.model.InvestmentCalendar;
import com.xueqiu.android.stock.model.InvestmentCalendarEvent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class e
  extends a
{
  public e(ae paramae)
  {
    this.f = paramae;
  }
  
  private x<ArrayList<InvCalEventsPair>> a(String paramString1, String paramString2, String paramString3, long paramLong, int paramInt, p<ArrayList<InvCalEventsPair>> paramp)
  {
    String str = a.a("/calendar/cal/events", false);
    if (!TextUtils.isEmpty(paramString3))
    {
      paramString3 = new BasicNameValuePair("symbol", paramString3);
      localBasicNameValuePair1 = new BasicNameValuePair("start_date", paramString1);
      paramString2 = new BasicNameValuePair("end_date", paramString2);
      localBasicNameValuePair2 = new BasicNameValuePair("page", null);
      if (paramInt == -1) {}
      for (paramString1 = null;; paramString1 = String.valueOf(paramInt))
      {
        paramString1 = new BasicNameValuePair[] { paramString3, localBasicNameValuePair1, paramString2, localBasicNameValuePair2, new BasicNameValuePair("count", paramString1) };
        paramString1 = x.a(str, paramString1, paramp, new Parser()
        {
          private ArrayList<InvCalEventsPair> a(JSONObject paramAnonymousJSONObject)
          {
            Object localObject1 = null;
            Iterator localIterator = null;
            if (paramAnonymousJSONObject != null) {}
            try
            {
              localObject1 = new ArrayList();
              try
              {
                localIterator = paramAnonymousJSONObject.keys();
                while (localIterator.hasNext())
                {
                  String str = (String)localIterator.next();
                  Object localObject2 = paramAnonymousJSONObject.getJSONArray(str);
                  int j = ((JSONArray)localObject2).length();
                  ArrayList localArrayList = new ArrayList();
                  int i = 0;
                  while (i < j)
                  {
                    localArrayList.add(e.a(((JSONArray)localObject2).getJSONObject(i)));
                    i += 1;
                  }
                  localObject2 = new InvCalEventsPair();
                  str = h.a(str, TimeZone.getDefault(), "yyyy-MM-dd", "yyyy-MM-dd");
                  Object localObject3 = Calendar.getInstance();
                  ((Calendar)localObject3).setTime(new SimpleDateFormat("yyyy-MM-dd").parse(str));
                  localObject3 = e.a(((Calendar)localObject3).get(7));
                  ((InvCalEventsPair)localObject2).mDate = (str + "  " + (String)localObject3);
                  ((InvCalEventsPair)localObject2).mEventList = localArrayList;
                  ((ArrayList)localObject1).add(localObject2);
                }
                ((Exception)localObject1).printStackTrace();
              }
              catch (Exception localException2)
              {
                paramAnonymousJSONObject = (JSONObject)localObject1;
                localObject1 = localException2;
              }
            }
            catch (Exception localException1)
            {
              for (;;)
              {
                paramAnonymousJSONObject = localException2;
              }
            }
            localObject1 = paramAnonymousJSONObject;
            return (ArrayList<InvCalEventsPair>)localObject1;
            Collections.sort((List)localObject1, new f(e.this));
            return (ArrayList<InvCalEventsPair>)localObject1;
          }
          
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        });
        this.f.a(paramString1);
        return paramString1;
      }
    }
    paramString3 = new BasicNameValuePair("id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("start_date", paramString1);
    paramString2 = new BasicNameValuePair("end_date", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", null);
    if (paramInt == -1) {}
    for (paramString1 = null;; paramString1 = String.valueOf(paramInt))
    {
      paramString1 = new BasicNameValuePair[] { paramString3, localBasicNameValuePair1, paramString2, localBasicNameValuePair2, new BasicNameValuePair("count", paramString1) };
      break;
    }
  }
  
  private static InvestmentCalendar a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    InvestmentCalendar localInvestmentCalendar = new InvestmentCalendar();
    if (paramBoolean) {
      localInvestmentCalendar.mIsMine = true;
    }
    if (a(paramJSONObject, "id")) {
      localInvestmentCalendar.mId = paramJSONObject.getLong("id");
    }
    if (a(paramJSONObject, "author_id")) {
      localInvestmentCalendar.mAuthor_id = paramJSONObject.getLong("author_id");
    }
    if (a(paramJSONObject, "url")) {
      localInvestmentCalendar.mUrl = paramJSONObject.getString("url");
    }
    if (a(paramJSONObject, "color")) {
      localInvestmentCalendar.mColor = paramJSONObject.getString("color");
    }
    if (a(paramJSONObject, "timezone")) {
      localInvestmentCalendar.mTimezone = paramJSONObject.getString("timezone");
    }
    if (a(paramJSONObject, "title")) {
      localInvestmentCalendar.mTitle = paramJSONObject.getString("title");
    }
    if (a(paramJSONObject, "description")) {
      localInvestmentCalendar.mDescription = paramJSONObject.getString("description");
    }
    if (a(paramJSONObject, "location")) {
      localInvestmentCalendar.mLocation = paramJSONObject.getString("location");
    }
    if (a(paramJSONObject, "followers_count")) {
      localInvestmentCalendar.mFollowers_count = paramJSONObject.getInt("followers_count");
    }
    if (a(paramJSONObject, "created_at")) {
      localInvestmentCalendar.mCreated_at = paramJSONObject.getLong("created_at");
    }
    if (a(paramJSONObject, "symbol")) {
      localInvestmentCalendar.mSymbol = paramJSONObject.getString("symbol");
    }
    if (a(paramJSONObject, "type")) {
      localInvestmentCalendar.mType = paramJSONObject.getInt("type");
    }
    if (a(paramJSONObject, "privacy_read")) {
      localInvestmentCalendar.mPrivacy_read = paramJSONObject.getString("privacy_read");
    }
    if (a(paramJSONObject, "privacy_write")) {
      localInvestmentCalendar.mPrivacy_write = paramJSONObject.getString("privacy_write");
    }
    if (a(paramJSONObject, "stat")) {
      localInvestmentCalendar.mStat = paramJSONObject.getString("stat");
    }
    return localInvestmentCalendar;
  }
  
  private static List<InvestmentCalendar> a(JSONArray paramJSONArray, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramJSONArray.length();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(a(paramJSONArray.getJSONObject(i), paramBoolean));
      i += 1;
    }
    return localArrayList;
  }
  
  private static boolean a(JSONObject paramJSONObject, String paramString)
  {
    if ((paramJSONObject.opt(paramString) != null) && (!paramJSONObject.opt(paramString).toString().equals("null"))) {}
    for (int i = 1; (paramJSONObject.has(paramString)) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  private static BasicNameValuePair[] a(InvestmentCalendarEvent paramInvestmentCalendarEvent)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("id", String.valueOf(paramInvestmentCalendarEvent.mId)));
    localArrayList.add(new BasicNameValuePair("title", String.valueOf(paramInvestmentCalendarEvent.mTitle)));
    String str2 = paramInvestmentCalendarEvent.mSDateTime;
    String str1 = str2;
    if (paramInvestmentCalendarEvent.mAll_day)
    {
      str1 = str2;
      if (paramInvestmentCalendarEvent.mSDateTime.length() > 10) {
        str1 = paramInvestmentCalendarEvent.mSDateTime.substring(0, 10);
      }
    }
    localArrayList.add(new BasicNameValuePair("start_date", str1));
    localArrayList.add(new BasicNameValuePair("calendar_id", String.valueOf(paramInvestmentCalendarEvent.mCalendar_id)));
    if (paramInvestmentCalendarEvent.mAll_day)
    {
      str1 = "1";
      localArrayList.add(new BasicNameValuePair("all_day", String.valueOf(str1)));
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mTimezone)) {
        localArrayList.add(new BasicNameValuePair("timezone", paramInvestmentCalendarEvent.mTimezone));
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mEDateTime))
      {
        str2 = paramInvestmentCalendarEvent.mEDateTime;
        str1 = str2;
        if (paramInvestmentCalendarEvent.mAll_day)
        {
          str1 = str2;
          if (paramInvestmentCalendarEvent.mEDateTime.length() > 10) {
            str1 = paramInvestmentCalendarEvent.mEDateTime.substring(0, 10);
          }
        }
        localArrayList.add(new BasicNameValuePair("end_date", str1));
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mDescription)) {
        localArrayList.add(new BasicNameValuePair("description", paramInvestmentCalendarEvent.mDescription));
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mLocation)) {
        localArrayList.add(new BasicNameValuePair("location", paramInvestmentCalendarEvent.mLocation));
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mAlert)) {
        localArrayList.add(new BasicNameValuePair("alert", paramInvestmentCalendarEvent.mAlert));
      }
      if (paramInvestmentCalendarEvent.mIsStockEvent) {
        break label551;
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mAlert)) {
        localArrayList.add(new BasicNameValuePair("alert", paramInvestmentCalendarEvent.mAlert));
      }
      if (!TextUtils.isEmpty(paramInvestmentCalendarEvent.mStock)) {
        localArrayList.add(new BasicNameValuePair("stock", paramInvestmentCalendarEvent.mStock));
      }
      localArrayList.add(new BasicNameValuePair("share", paramInvestmentCalendarEvent.mShare));
      if ("1".equals(paramInvestmentCalendarEvent.mShare)) {
        localArrayList.add(new BasicNameValuePair("stock_event_type", String.valueOf(paramInvestmentCalendarEvent.mStock_event_type)));
      }
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("privacy", "0"));
      int j = localArrayList.size();
      paramInvestmentCalendarEvent = new BasicNameValuePair[j];
      while (i < j)
      {
        paramInvestmentCalendarEvent[i] = ((BasicNameValuePair)localArrayList.get(i));
        i += 1;
      }
      str1 = "0";
      break;
      label551:
      localArrayList.add(new BasicNameValuePair("stock_event_type", String.valueOf(paramInvestmentCalendarEvent.mStock_event_type)));
    }
    return paramInvestmentCalendarEvent;
  }
  
  private static ArrayList<InvestmentCalendar> d(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      try
      {
        ArrayList localArrayList = new ArrayList();
        JSONArray localJSONArray;
        localException1.printStackTrace();
      }
      catch (Exception localException1)
      {
        try
        {
          if (paramJSONObject.has("mine"))
          {
            localJSONArray = paramJSONObject.getJSONArray("mine");
            if ((localJSONArray != null) && (localJSONArray.length() > 0)) {
              localArrayList.addAll(a(localJSONArray, true));
            }
          }
          if (paramJSONObject.has("other"))
          {
            paramJSONObject = paramJSONObject.getJSONArray("other");
            if ((paramJSONObject != null) && (paramJSONObject.length() > 0)) {
              localArrayList.addAll(a(paramJSONObject, false));
            }
          }
          return localArrayList;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            paramJSONObject = localException1;
            Object localObject = localException2;
          }
        }
        localException1 = localException1;
        paramJSONObject = null;
      }
      return paramJSONObject;
    }
    return null;
  }
  
  public final x<RequestResult> a(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/calendar/event/delete", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> a(long paramLong, String paramString, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("alert", paramString);
    String str = a.a("/calendar/event/set_alert", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<InvestmentCalendar>> a(p<ArrayList<InvestmentCalendar>> paramp)
  {
    paramp = x.a(a.a("/calendar/cal/list", false), null, paramp, new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    });
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> a(InvestmentCalendarEvent paramInvestmentCalendarEvent, p<JSONObject> paramp)
  {
    paramInvestmentCalendarEvent = x.b(a.a("/calendar/event/create", false), a(paramInvestmentCalendarEvent), paramp, new SNBJsonObjectPaser());
    this.f.a(paramInvestmentCalendarEvent);
    return paramInvestmentCalendarEvent;
  }
  
  public final x<InvestmentCalendar> a(String paramString, long paramLong, p<InvestmentCalendar> paramp)
  {
    String str = a.a("/calendar/cal/show", false);
    if (!TextUtils.isEmpty(paramString))
    {
      BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[1];
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("symbol", paramString);
      paramString = arrayOfBasicNameValuePair;
    }
    for (;;)
    {
      paramString = x.b(str, paramString, paramp, new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      });
      this.f.a(paramString);
      return paramString;
      paramString = new BasicNameValuePair[1];
      paramString[0] = new BasicNameValuePair("id", String.valueOf(paramLong));
    }
  }
  
  public final x<ArrayList<InvCalEventsPair>> a(String paramString, p<ArrayList<InvCalEventsPair>> paramp)
  {
    return a(null, null, paramString, 0L, 2, paramp);
  }
  
  public final x<ArrayList<InvCalEventsPair>> a(String paramString1, String paramString2, String paramString3, long paramLong, p<ArrayList<InvCalEventsPair>> paramp)
  {
    if ((!TextUtils.isEmpty(paramString3)) || (paramLong > 0L)) {
      return a(paramString1, paramString2, paramString3, paramLong, -1, paramp);
    }
    paramString3 = a.a("/calendar/cal/home", false);
    paramString1 = new BasicNameValuePair("start_date", paramString1);
    paramString2 = new BasicNameValuePair("end_date", paramString2);
    Parser local1 = new Parser()
    {
      private ArrayList<InvCalEventsPair> a(JSONObject paramAnonymousJSONObject)
      {
        Object localObject1 = null;
        Iterator localIterator = null;
        if (paramAnonymousJSONObject != null) {}
        try
        {
          localObject1 = new ArrayList();
          try
          {
            localIterator = paramAnonymousJSONObject.keys();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              Object localObject2 = paramAnonymousJSONObject.getJSONArray(str);
              int j = ((JSONArray)localObject2).length();
              ArrayList localArrayList = new ArrayList();
              int i = 0;
              while (i < j)
              {
                localArrayList.add(e.a(((JSONArray)localObject2).getJSONObject(i)));
                i += 1;
              }
              localObject2 = new InvCalEventsPair();
              str = h.a(str, TimeZone.getDefault(), "yyyy-MM-dd", "yyyy-MM-dd");
              Object localObject3 = Calendar.getInstance();
              ((Calendar)localObject3).setTime(new SimpleDateFormat("yyyy-MM-dd").parse(str));
              localObject3 = e.a(((Calendar)localObject3).get(7));
              ((InvCalEventsPair)localObject2).mDate = (str + "  " + (String)localObject3);
              ((InvCalEventsPair)localObject2).mEventList = localArrayList;
              ((ArrayList)localObject1).add(localObject2);
            }
            ((Exception)localObject1).printStackTrace();
          }
          catch (Exception localException2)
          {
            paramAnonymousJSONObject = (JSONObject)localObject1;
            localObject1 = localException2;
          }
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            paramAnonymousJSONObject = localException2;
          }
        }
        localObject1 = paramAnonymousJSONObject;
        return (ArrayList<InvCalEventsPair>)localObject1;
        Collections.sort((List)localObject1, new f(e.this));
        return (ArrayList<InvCalEventsPair>)localObject1;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString1 = x.a(paramString3, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, local1);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<EventCalListPair> b(long paramLong, p<EventCalListPair> paramp)
  {
    Object localObject = a.b("/calendar/cal/list", false) + "?request_method=get";
    String str = a.b("/calendar/event/show", false) + "?request_method=get&id=" + paramLong;
    localObject = new BasicNameValuePair("api", (String)localObject + "#47bce5c74f#" + str);
    str = a.a("/apimerge/result", false);
    Parser local4 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        Object localObject1 = paramAnonymousJSONObject.getJSONObject("1").getJSONObject("result");
        Object localObject2 = paramAnonymousJSONObject.getJSONObject("2").getJSONObject("result");
        paramAnonymousJSONObject = e.b((JSONObject)localObject1);
        localObject1 = e.a((JSONObject)localObject2);
        localObject2 = new EventCalListPair();
        ((EventCalListPair)localObject2).mEvent = ((InvestmentCalendarEvent)localObject1);
        ((EventCalListPair)localObject2).mCalList = paramAnonymousJSONObject;
        return null;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramp = x.b(str, new BasicNameValuePair[] { localObject }, paramp, local4);
    paramp.j = new z();
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> b(InvestmentCalendarEvent paramInvestmentCalendarEvent, p<JSONObject> paramp)
  {
    paramInvestmentCalendarEvent = x.b(a.a("/calendar/event/modify", false), a(paramInvestmentCalendarEvent), paramp, new SNBJsonObjectPaser());
    this.f.a(paramInvestmentCalendarEvent);
    return paramInvestmentCalendarEvent;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */