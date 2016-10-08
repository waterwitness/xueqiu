package com.alipay.sdk.b;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

public final class e
{
  public a a;
  public WeakReference<c> b = null;
  public boolean c = true;
  boolean d = true;
  private JSONObject e;
  private JSONObject f;
  private long g;
  
  public e(a parama, JSONObject paramJSONObject)
  {
    this(parama, paramJSONObject, (byte)0);
  }
  
  private e(a parama, JSONObject paramJSONObject, byte paramByte)
  {
    this.a = parama;
    this.e = paramJSONObject;
    this.f = null;
    this.b = new WeakReference(null);
  }
  
  /* Error */
  public final JSONObject a(String paramString)
  {
    // Byte code:
    //   0: new 48	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 49	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: new 48	org/json/JSONObject
    //   11: dup
    //   12: invokespecial 49	org/json/JSONObject:<init>	()V
    //   15: astore_3
    //   16: aload_3
    //   17: ldc 51
    //   19: getstatic 57	android/os/Build:MODEL	Ljava/lang/String;
    //   22: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   25: pop
    //   26: new 48	org/json/JSONObject
    //   29: dup
    //   30: invokespecial 49	org/json/JSONObject:<init>	()V
    //   33: astore 4
    //   35: aload_3
    //   36: aload_0
    //   37: getfield 38	com/alipay/sdk/b/e:f	Lorg/json/JSONObject;
    //   40: invokestatic 66	com/alipay/sdk/i/c:a	(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    //   43: astore_3
    //   44: aload_3
    //   45: ldc 68
    //   47: aload_0
    //   48: getfield 34	com/alipay/sdk/b/e:a	Lcom/alipay/sdk/b/a;
    //   51: getfield 72	com/alipay/sdk/b/a:b	Ljava/lang/String;
    //   54: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   57: pop
    //   58: aload_3
    //   59: ldc 74
    //   61: aload_0
    //   62: getfield 34	com/alipay/sdk/b/e:a	Lcom/alipay/sdk/b/a;
    //   65: getfield 76	com/alipay/sdk/b/a:e	Ljava/lang/String;
    //   68: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   71: pop
    //   72: aload_3
    //   73: ldc 78
    //   75: aload_0
    //   76: getfield 34	com/alipay/sdk/b/e:a	Lcom/alipay/sdk/b/a;
    //   79: getfield 80	com/alipay/sdk/b/a:d	Ljava/lang/String;
    //   82: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   85: pop
    //   86: aload_0
    //   87: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   90: ifnonnull +14 -> 104
    //   93: aload_0
    //   94: new 48	org/json/JSONObject
    //   97: dup
    //   98: invokespecial 49	org/json/JSONObject:<init>	()V
    //   101: putfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   104: aload_0
    //   105: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   108: ldc 82
    //   110: aload 4
    //   112: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   115: pop
    //   116: aload_0
    //   117: getfield 34	com/alipay/sdk/b/e:a	Lcom/alipay/sdk/b/a;
    //   120: getfield 84	com/alipay/sdk/b/a:c	Ljava/lang/String;
    //   123: astore 5
    //   125: aload 5
    //   127: invokestatic 90	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   130: istore 7
    //   132: iload 7
    //   134: ifne +43 -> 177
    //   137: aload 5
    //   139: ldc 92
    //   141: invokevirtual 98	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   144: astore 5
    //   146: aload 4
    //   148: ldc 100
    //   150: aload 5
    //   152: iconst_1
    //   153: aaload
    //   154: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   157: pop
    //   158: aload 5
    //   160: arraylength
    //   161: iconst_1
    //   162: if_icmple +15 -> 177
    //   165: aload 4
    //   167: ldc 102
    //   169: aload 5
    //   171: iconst_2
    //   172: aaload
    //   173: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   176: pop
    //   177: aload_0
    //   178: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   181: ldc 104
    //   183: aload_0
    //   184: getfield 32	com/alipay/sdk/b/e:d	Z
    //   187: invokevirtual 107	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   190: pop
    //   191: aload_0
    //   192: getfield 30	com/alipay/sdk/b/e:c	Z
    //   195: ifeq +143 -> 338
    //   198: new 48	org/json/JSONObject
    //   201: dup
    //   202: invokespecial 49	org/json/JSONObject:<init>	()V
    //   205: astore 4
    //   207: new 109	java/lang/StringBuilder
    //   210: dup
    //   211: ldc 111
    //   213: invokespecial 114	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   216: aload_0
    //   217: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   220: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
    //   223: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: pop
    //   227: aload_0
    //   228: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   231: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
    //   234: astore 6
    //   236: aload_1
    //   237: getstatic 125	com/alipay/sdk/a/a:b	Ljava/lang/String;
    //   240: invokestatic 130	com/alipay/sdk/c/d:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   243: astore 5
    //   245: aload_1
    //   246: aload 6
    //   248: invokestatic 133	com/alipay/sdk/c/e:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   251: astore_1
    //   252: aload 4
    //   254: ldc -121
    //   256: invokestatic 141	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   259: ldc -113
    //   261: iconst_4
    //   262: anewarray 4	java/lang/Object
    //   265: dup
    //   266: iconst_0
    //   267: aload 5
    //   269: invokevirtual 147	java/lang/String:length	()I
    //   272: invokestatic 153	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   275: aastore
    //   276: dup
    //   277: iconst_1
    //   278: aload 5
    //   280: aastore
    //   281: dup
    //   282: iconst_2
    //   283: aload_1
    //   284: invokevirtual 147	java/lang/String:length	()I
    //   287: invokestatic 153	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   290: aastore
    //   291: dup
    //   292: iconst_3
    //   293: aload_1
    //   294: aastore
    //   295: invokestatic 157	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   298: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   301: pop
    //   302: aload_3
    //   303: ldc -97
    //   305: aload 4
    //   307: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   310: pop
    //   311: aload_2
    //   312: ldc -95
    //   314: aload_3
    //   315: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   318: pop
    //   319: new 109	java/lang/StringBuilder
    //   322: dup
    //   323: ldc -93
    //   325: invokespecial 114	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   328: aload_2
    //   329: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
    //   332: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: pop
    //   336: aload_2
    //   337: areturn
    //   338: aload_3
    //   339: ldc -97
    //   341: aload_0
    //   342: getfield 36	com/alipay/sdk/b/e:e	Lorg/json/JSONObject;
    //   345: invokevirtual 61	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   348: pop
    //   349: goto -38 -> 311
    //   352: astore_1
    //   353: goto -34 -> 319
    //   356: astore 4
    //   358: goto -181 -> 177
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	this	e
    //   0	361	1	paramString	String
    //   7	330	2	localJSONObject1	JSONObject
    //   15	324	3	localJSONObject2	JSONObject
    //   33	273	4	localJSONObject3	JSONObject
    //   356	1	4	localException	Exception
    //   123	156	5	localObject	Object
    //   234	13	6	str	String
    //   130	3	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	104	352	java/lang/Exception
    //   104	132	352	java/lang/Exception
    //   177	311	352	java/lang/Exception
    //   311	319	352	java/lang/Exception
    //   338	349	352	java/lang/Exception
    //   137	177	356	java/lang/Exception
  }
  
  public final String toString()
  {
    return this.a.toString() + ", requestData = " + com.alipay.sdk.i.c.a(this.e, this.f) + ", timeStamp = " + this.g;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */