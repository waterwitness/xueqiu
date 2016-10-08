package com.loopj.android.http;

import android.util.Log;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class JsonHttpResponseHandler
  extends TextHttpResponseHandler
{
  private static final String LOG_TAG = "JsonHttpResponseHandler";
  
  public JsonHttpResponseHandler()
  {
    super("UTF-8");
  }
  
  public JsonHttpResponseHandler(String paramString)
  {
    super(paramString);
  }
  
  public void onFailure(int paramInt, Header[] paramArrayOfHeader, String paramString, Throwable paramThrowable)
  {
    Log.w("JsonHttpResponseHandler", "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received", paramThrowable);
  }
  
  public void onFailure(int paramInt, Header[] paramArrayOfHeader, Throwable paramThrowable, JSONArray paramJSONArray)
  {
    Log.w("JsonHttpResponseHandler", "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received", paramThrowable);
  }
  
  public void onFailure(int paramInt, Header[] paramArrayOfHeader, Throwable paramThrowable, JSONObject paramJSONObject)
  {
    Log.w("JsonHttpResponseHandler", "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received", paramThrowable);
  }
  
  public final void onFailure(final int paramInt, final Header[] paramArrayOfHeader, final byte[] paramArrayOfByte, final Throwable paramThrowable)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfHeader = new Runnable()
      {
        public void run()
        {
          try
          {
            final Object localObject = JsonHttpResponseHandler.this.parseResponse(paramArrayOfByte);
            JsonHttpResponseHandler.this.postRunnable(new Runnable()
            {
              public void run()
              {
                if ((localObject instanceof JSONObject))
                {
                  JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.2.this.val$statusCode, JsonHttpResponseHandler.2.this.val$headers, JsonHttpResponseHandler.2.this.val$throwable, (JSONObject)localObject);
                  return;
                }
                if ((localObject instanceof JSONArray))
                {
                  JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.2.this.val$statusCode, JsonHttpResponseHandler.2.this.val$headers, JsonHttpResponseHandler.2.this.val$throwable, (JSONArray)localObject);
                  return;
                }
                if ((localObject instanceof String))
                {
                  JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.2.this.val$statusCode, JsonHttpResponseHandler.2.this.val$headers, (String)localObject, JsonHttpResponseHandler.2.this.val$throwable);
                  return;
                }
                JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.2.this.val$statusCode, JsonHttpResponseHandler.2.this.val$headers, new JSONException("Unexpected response type " + localObject.getClass().getName()), null);
              }
            });
            return;
          }
          catch (JSONException localJSONException)
          {
            JsonHttpResponseHandler.this.postRunnable(new Runnable()
            {
              public void run()
              {
                JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.2.this.val$statusCode, JsonHttpResponseHandler.2.this.val$headers, localJSONException, null);
              }
            });
          }
        }
      };
      if (!getUseSynchronousMode())
      {
        new Thread(paramArrayOfHeader).start();
        return;
      }
      paramArrayOfHeader.run();
      return;
    }
    Log.v("JsonHttpResponseHandler", "response body is null, calling onFailure(Throwable, JSONObject)");
    onFailure(paramInt, paramArrayOfHeader, paramThrowable, null);
  }
  
  public void onSuccess(int paramInt, Header[] paramArrayOfHeader, String paramString)
  {
    Log.w("JsonHttpResponseHandler", "onSuccess(int, Header[], String) was not overriden, but callback was received");
  }
  
  public void onSuccess(int paramInt, Header[] paramArrayOfHeader, JSONArray paramJSONArray)
  {
    Log.w("JsonHttpResponseHandler", "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received");
  }
  
  public void onSuccess(int paramInt, Header[] paramArrayOfHeader, JSONObject paramJSONObject)
  {
    Log.w("JsonHttpResponseHandler", "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received");
  }
  
  public final void onSuccess(final int paramInt, final Header[] paramArrayOfHeader, final byte[] paramArrayOfByte)
  {
    if (paramInt != 204)
    {
      paramArrayOfHeader = new Runnable()
      {
        public void run()
        {
          try
          {
            final Object localObject = JsonHttpResponseHandler.this.parseResponse(paramArrayOfByte);
            JsonHttpResponseHandler.this.postRunnable(new Runnable()
            {
              public void run()
              {
                if ((localObject instanceof JSONObject))
                {
                  JsonHttpResponseHandler.this.onSuccess(JsonHttpResponseHandler.1.this.val$statusCode, JsonHttpResponseHandler.1.this.val$headers, (JSONObject)localObject);
                  return;
                }
                if ((localObject instanceof JSONArray))
                {
                  JsonHttpResponseHandler.this.onSuccess(JsonHttpResponseHandler.1.this.val$statusCode, JsonHttpResponseHandler.1.this.val$headers, (JSONArray)localObject);
                  return;
                }
                if ((localObject instanceof String))
                {
                  JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.1.this.val$statusCode, JsonHttpResponseHandler.1.this.val$headers, (String)localObject, new JSONException("Response cannot be parsed as JSON data"));
                  return;
                }
                JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.1.this.val$statusCode, JsonHttpResponseHandler.1.this.val$headers, new JSONException("Unexpected response type " + localObject.getClass().getName()), null);
              }
            });
            return;
          }
          catch (JSONException localJSONException)
          {
            JsonHttpResponseHandler.this.postRunnable(new Runnable()
            {
              public void run()
              {
                JsonHttpResponseHandler.this.onFailure(JsonHttpResponseHandler.1.this.val$statusCode, JsonHttpResponseHandler.1.this.val$headers, localJSONException, null);
              }
            });
          }
        }
      };
      if (!getUseSynchronousMode())
      {
        new Thread(paramArrayOfHeader).start();
        return;
      }
      paramArrayOfHeader.run();
      return;
    }
    onSuccess(paramInt, paramArrayOfHeader, new JSONObject());
  }
  
  protected Object parseResponse(byte[] paramArrayOfByte)
  {
    Object localObject3 = null;
    Object localObject1;
    if (paramArrayOfByte == null) {
      localObject1 = null;
    }
    Object localObject2;
    do
    {
      return localObject1;
      paramArrayOfByte = getResponseString(paramArrayOfByte, getCharset());
      localObject1 = paramArrayOfByte;
      localObject2 = localObject3;
      if (paramArrayOfByte != null)
      {
        localObject1 = paramArrayOfByte.trim();
        paramArrayOfByte = (byte[])localObject1;
        if (((String)localObject1).startsWith("﻿")) {
          paramArrayOfByte = ((String)localObject1).substring(1);
        }
        if (!paramArrayOfByte.startsWith("{"))
        {
          localObject1 = paramArrayOfByte;
          localObject2 = localObject3;
          if (!paramArrayOfByte.startsWith("[")) {}
        }
        else
        {
          localObject2 = new JSONTokener(paramArrayOfByte).nextValue();
          localObject1 = paramArrayOfByte;
        }
      }
    } while (localObject2 == null);
    return localObject2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\JsonHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */