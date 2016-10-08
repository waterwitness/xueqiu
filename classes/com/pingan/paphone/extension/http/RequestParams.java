package com.pingan.paphone.extension.http;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams
{
  private static String ENCODING = "UTF-8";
  protected ConcurrentHashMap<String, RequestParams.FileWrapper> fileParams;
  protected ConcurrentHashMap<String, String> urlParams;
  protected ConcurrentHashMap<String, ArrayList<String>> urlParamsWithArray;
  
  public RequestParams()
  {
    init();
  }
  
  public RequestParams(String paramString1, String paramString2)
  {
    init();
    put(paramString1, paramString2);
  }
  
  public RequestParams(Map<String, String> paramMap)
  {
    init();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }
  
  public RequestParams(Object... paramVarArgs)
  {
    init();
    int j = paramVarArgs.length;
    if (j % 2 != 0) {
      throw new IllegalArgumentException("Supplied arguments must be even");
    }
    int i = 0;
    while (i < j)
    {
      put(String.valueOf(paramVarArgs[i]), String.valueOf(paramVarArgs[(i + 1)]));
      i += 2;
    }
  }
  
  private void init()
  {
    this.urlParams = new ConcurrentHashMap();
    this.fileParams = new ConcurrentHashMap();
    this.urlParamsWithArray = new ConcurrentHashMap();
  }
  
  public HttpEntity getEntity()
  {
    Object localObject1;
    if (!this.fileParams.isEmpty())
    {
      SimpleMultipartEntity localSimpleMultipartEntity = new SimpleMultipartEntity();
      localObject1 = this.urlParams.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localSimpleMultipartEntity.addPart((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      localObject1 = this.urlParamsWithArray.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = ((ArrayList)((Map.Entry)localObject2).getValue()).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          String str = (String)((Iterator)localObject3).next();
          localSimpleMultipartEntity.addPart((String)((Map.Entry)localObject2).getKey(), str);
        }
      }
      int j = this.fileParams.entrySet().size();
      Object localObject2 = this.fileParams.entrySet().iterator();
      int i = 0;
      localObject1 = localSimpleMultipartEntity;
      if (!((Iterator)localObject2).hasNext()) {
        break label339;
      }
      localObject1 = (Map.Entry)((Iterator)localObject2).next();
      Object localObject3 = (RequestParams.FileWrapper)((Map.Entry)localObject1).getValue();
      boolean bool;
      if (((RequestParams.FileWrapper)localObject3).inputStream != null)
      {
        if (i != j - 1) {
          break label290;
        }
        bool = true;
        label243:
        if (((RequestParams.FileWrapper)localObject3).contentType == null) {
          break label296;
        }
        localSimpleMultipartEntity.addPart((String)((Map.Entry)localObject1).getKey(), ((RequestParams.FileWrapper)localObject3).getFileName(), ((RequestParams.FileWrapper)localObject3).inputStream, ((RequestParams.FileWrapper)localObject3).contentType, bool);
      }
      for (;;)
      {
        i += 1;
        break;
        label290:
        bool = false;
        break label243;
        label296:
        localSimpleMultipartEntity.addPart((String)((Map.Entry)localObject1).getKey(), ((RequestParams.FileWrapper)localObject3).getFileName(), ((RequestParams.FileWrapper)localObject3).inputStream, bool);
      }
    }
    try
    {
      localObject1 = new UrlEncodedFormEntity(getParamsList(), ENCODING);
      label339:
      return (HttpEntity)localObject1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  protected String getParamString()
  {
    return URLEncodedUtils.format(getParamsList(), ENCODING);
  }
  
  protected List<BasicNameValuePair> getParamsList()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator1 = this.urlParams.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    localIterator1 = this.urlParamsWithArray.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), str));
      }
    }
    return localLinkedList;
  }
  
  public void put(String paramString, File paramFile)
  {
    put(paramString, new FileInputStream(paramFile), paramFile.getName());
  }
  
  public void put(String paramString, InputStream paramInputStream)
  {
    put(paramString, paramInputStream, null);
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2)
  {
    put(paramString1, paramInputStream, paramString2, null);
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (paramInputStream != null)) {
      this.fileParams.put(paramString1, new RequestParams.FileWrapper(paramInputStream, paramString2, paramString3));
    }
  }
  
  public void put(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      this.urlParams.put(paramString1, paramString2);
    }
  }
  
  public void put(String paramString, ArrayList<String> paramArrayList)
  {
    if ((paramString != null) && (paramArrayList != null)) {
      this.urlParamsWithArray.put(paramString, paramArrayList);
    }
  }
  
  public void remove(String paramString)
  {
    this.urlParams.remove(paramString);
    this.fileParams.remove(paramString);
    this.urlParamsWithArray.remove(paramString);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.urlParams.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    localIterator = this.fileParams.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    localIterator = this.urlParamsWithArray.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      ArrayList localArrayList = (ArrayList)localEntry.getValue();
      int i = 0;
      while (i < localArrayList.size())
      {
        if (i != 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localArrayList.get(i));
        i += 1;
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\RequestParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */