package com.squareup.okhttp.internal;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.Transport;
import java.util.logging.Logger;

public abstract class Internal
{
  public static Internal instance;
  public static final Logger logger = Logger.getLogger(OkHttpClient.class.getName());
  
  public abstract void addLenient(Headers.Builder paramBuilder, String paramString);
  
  public abstract Connection callEngineGetConnection(Call paramCall);
  
  public abstract void callEngineReleaseConnection(Call paramCall);
  
  public abstract void callEnqueue(Call paramCall, Callback paramCallback, boolean paramBoolean);
  
  public abstract boolean clearOwner(Connection paramConnection);
  
  public abstract void closeIfOwnedBy(Connection paramConnection, Object paramObject);
  
  public abstract void connectAndSetOwner(OkHttpClient paramOkHttpClient, Connection paramConnection, HttpEngine paramHttpEngine, Request paramRequest);
  
  public abstract void connectionSetOwner(Connection paramConnection, Object paramObject);
  
  public abstract InternalCache internalCache(OkHttpClient paramOkHttpClient);
  
  public abstract boolean isReadable(Connection paramConnection);
  
  public abstract Network network(OkHttpClient paramOkHttpClient);
  
  public abstract Transport newTransport(Connection paramConnection, HttpEngine paramHttpEngine);
  
  public abstract void recycle(ConnectionPool paramConnectionPool, Connection paramConnection);
  
  public abstract int recycleCount(Connection paramConnection);
  
  public abstract RouteDatabase routeDatabase(OkHttpClient paramOkHttpClient);
  
  public abstract void setCache(OkHttpClient paramOkHttpClient, InternalCache paramInternalCache);
  
  public abstract void setNetwork(OkHttpClient paramOkHttpClient, Network paramNetwork);
  
  public abstract void setOwner(Connection paramConnection, HttpEngine paramHttpEngine);
  
  public abstract void setProtocol(Connection paramConnection, Protocol paramProtocol);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\Internal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */