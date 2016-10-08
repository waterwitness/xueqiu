package com.loopj.android.http;

import org.apache.http.Header;
import org.xml.sax.helpers.DefaultHandler;

public abstract class SaxAsyncHttpResponseHandler<T extends DefaultHandler>
  extends AsyncHttpResponseHandler
{
  private static final String LOG_TAG = "SaxAsyncHttpResponseHandler";
  private T handler = null;
  
  public SaxAsyncHttpResponseHandler(T paramT)
  {
    if (paramT == null) {
      throw new Error("null instance of <T extends DefaultHandler> passed to constructor");
    }
    this.handler = paramT;
  }
  
  /* Error */
  protected byte[] getResponseData(org.apache.http.HttpEntity paramHttpEntity)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +73 -> 74
    //   4: aload_1
    //   5: invokeinterface 43 1 0
    //   10: astore 4
    //   12: aload 4
    //   14: ifnull +60 -> 74
    //   17: invokestatic 49	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   20: invokevirtual 53	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   23: invokevirtual 59	javax/xml/parsers/SAXParser:getXMLReader	()Lorg/xml/sax/XMLReader;
    //   26: astore_3
    //   27: aload_3
    //   28: aload_0
    //   29: getfield 19	com/loopj/android/http/SaxAsyncHttpResponseHandler:handler	Lorg/xml/sax/helpers/DefaultHandler;
    //   32: invokeinterface 65 2 0
    //   37: new 67	java/io/InputStreamReader
    //   40: dup
    //   41: aload 4
    //   43: ldc 69
    //   45: invokespecial 72	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   48: astore_2
    //   49: aload_2
    //   50: astore_1
    //   51: aload_3
    //   52: new 74	org/xml/sax/InputSource
    //   55: dup
    //   56: aload_2
    //   57: invokespecial 77	org/xml/sax/InputSource:<init>	(Ljava/io/Reader;)V
    //   60: invokeinterface 81 2 0
    //   65: aload 4
    //   67: invokestatic 87	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   70: aload_2
    //   71: invokevirtual 90	java/io/InputStreamReader:close	()V
    //   74: aconst_null
    //   75: areturn
    //   76: astore_3
    //   77: aconst_null
    //   78: astore_2
    //   79: aload_2
    //   80: astore_1
    //   81: ldc 9
    //   83: ldc 92
    //   85: aload_3
    //   86: invokestatic 98	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   89: pop
    //   90: aload 4
    //   92: invokestatic 87	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   95: aload_2
    //   96: ifnull -22 -> 74
    //   99: aload_2
    //   100: invokevirtual 90	java/io/InputStreamReader:close	()V
    //   103: aconst_null
    //   104: areturn
    //   105: astore_1
    //   106: aconst_null
    //   107: areturn
    //   108: astore_3
    //   109: aconst_null
    //   110: astore_2
    //   111: aload_2
    //   112: astore_1
    //   113: ldc 9
    //   115: ldc 92
    //   117: aload_3
    //   118: invokestatic 98	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   121: pop
    //   122: aload 4
    //   124: invokestatic 87	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   127: aload_2
    //   128: ifnull -54 -> 74
    //   131: aload_2
    //   132: invokevirtual 90	java/io/InputStreamReader:close	()V
    //   135: aconst_null
    //   136: areturn
    //   137: astore_1
    //   138: aconst_null
    //   139: areturn
    //   140: astore_2
    //   141: aconst_null
    //   142: astore_1
    //   143: aload 4
    //   145: invokestatic 87	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   148: aload_1
    //   149: ifnull +7 -> 156
    //   152: aload_1
    //   153: invokevirtual 90	java/io/InputStreamReader:close	()V
    //   156: aload_2
    //   157: athrow
    //   158: astore_1
    //   159: aconst_null
    //   160: areturn
    //   161: astore_1
    //   162: goto -6 -> 156
    //   165: astore_2
    //   166: goto -23 -> 143
    //   169: astore_3
    //   170: goto -59 -> 111
    //   173: astore_3
    //   174: goto -95 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	SaxAsyncHttpResponseHandler
    //   0	177	1	paramHttpEntity	org.apache.http.HttpEntity
    //   48	84	2	localInputStreamReader	java.io.InputStreamReader
    //   140	17	2	localObject1	Object
    //   165	1	2	localObject2	Object
    //   26	26	3	localXMLReader	org.xml.sax.XMLReader
    //   76	10	3	localSAXException1	org.xml.sax.SAXException
    //   108	10	3	localParserConfigurationException1	javax.xml.parsers.ParserConfigurationException
    //   169	1	3	localParserConfigurationException2	javax.xml.parsers.ParserConfigurationException
    //   173	1	3	localSAXException2	org.xml.sax.SAXException
    //   10	134	4	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   17	49	76	org/xml/sax/SAXException
    //   99	103	105	java/io/IOException
    //   17	49	108	javax/xml/parsers/ParserConfigurationException
    //   131	135	137	java/io/IOException
    //   17	49	140	finally
    //   70	74	158	java/io/IOException
    //   152	156	161	java/io/IOException
    //   51	65	165	finally
    //   81	90	165	finally
    //   113	122	165	finally
    //   51	65	169	javax/xml/parsers/ParserConfigurationException
    //   51	65	173	org/xml/sax/SAXException
  }
  
  public abstract void onFailure(int paramInt, Header[] paramArrayOfHeader, T paramT);
  
  public void onFailure(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte, Throwable paramThrowable)
  {
    onSuccess(paramInt, paramArrayOfHeader, this.handler);
  }
  
  public abstract void onSuccess(int paramInt, Header[] paramArrayOfHeader, T paramT);
  
  public void onSuccess(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte)
  {
    onSuccess(paramInt, paramArrayOfHeader, this.handler);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\SaxAsyncHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */