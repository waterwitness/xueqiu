package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.b.d;
import com.alipay.sdk.i.h;

public final class c
{
  static final Object a = com.alipay.sdk.i.e.class;
  private Activity b;
  private String c;
  private boolean d;
  
  public c(Activity paramActivity)
  {
    this.b = paramActivity;
  }
  
  /* Error */
  private String a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: aload_0
    //   4: getfield 25	com/alipay/sdk/app/c:b	Landroid/app/Activity;
    //   7: ifnull +415 -> 422
    //   10: aload_0
    //   11: getfield 25	com/alipay/sdk/app/c:b	Landroid/app/Activity;
    //   14: invokevirtual 36	android/app/Activity:isFinishing	()Z
    //   17: ifne +405 -> 422
    //   20: new 38	com/alipay/sdk/j/a
    //   23: dup
    //   24: aload_0
    //   25: getfield 25	com/alipay/sdk/app/c:b	Landroid/app/Activity;
    //   28: invokespecial 40	com/alipay/sdk/j/a:<init>	(Landroid/app/Activity;)V
    //   31: astore_1
    //   32: aload_1
    //   33: invokevirtual 42	com/alipay/sdk/j/a:b	()V
    //   36: new 44	com/alipay/sdk/b/c
    //   39: dup
    //   40: invokespecial 45	com/alipay/sdk/b/c:<init>	()V
    //   43: aload_0
    //   44: getfield 47	com/alipay/sdk/app/c:c	Ljava/lang/String;
    //   47: new 49	org/json/JSONObject
    //   50: dup
    //   51: invokespecial 50	org/json/JSONObject:<init>	()V
    //   54: invokestatic 55	com/alipay/sdk/b/b:a	(Lcom/alipay/sdk/b/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/b/e;
    //   57: astore_2
    //   58: new 57	com/alipay/sdk/e/d
    //   61: dup
    //   62: new 44	com/alipay/sdk/b/c
    //   65: dup
    //   66: invokespecial 45	com/alipay/sdk/b/c:<init>	()V
    //   69: invokespecial 60	com/alipay/sdk/e/d:<init>	(Lcom/alipay/sdk/b/c;)V
    //   72: astore_3
    //   73: aload_3
    //   74: aload_0
    //   75: getfield 25	com/alipay/sdk/app/c:b	Landroid/app/Activity;
    //   78: aload_2
    //   79: invokevirtual 63	com/alipay/sdk/e/d:a	(Landroid/content/Context;Lcom/alipay/sdk/b/e;)Lcom/alipay/sdk/f/c;
    //   82: getfield 68	com/alipay/sdk/f/c:c	Lorg/json/JSONObject;
    //   85: ldc 70
    //   87: invokevirtual 74	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   90: ldc 76
    //   92: invokestatic 81	com/alipay/sdk/f/b:a	(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/f/b;
    //   95: invokestatic 86	com/alipay/sdk/f/a:a	(Lcom/alipay/sdk/f/b;)[Lcom/alipay/sdk/f/a;
    //   98: astore_2
    //   99: aload_2
    //   100: arraylength
    //   101: istore 8
    //   103: iconst_0
    //   104: istore 6
    //   106: iload 6
    //   108: iload 8
    //   110: if_icmpge +229 -> 339
    //   113: aload_2
    //   114: iload 6
    //   116: aaload
    //   117: astore_3
    //   118: aload_3
    //   119: getstatic 90	com/alipay/sdk/f/a:f	Lcom/alipay/sdk/f/a;
    //   122: if_acmpne +305 -> 427
    //   125: aload_3
    //   126: getfield 93	com/alipay/sdk/f/a:h	Ljava/lang/String;
    //   129: invokestatic 98	com/alipay/sdk/i/a:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   132: astore_3
    //   133: aload_3
    //   134: arraylength
    //   135: iconst_3
    //   136: if_icmpne +291 -> 427
    //   139: ldc 100
    //   141: aload_3
    //   142: iconst_0
    //   143: aaload
    //   144: invokestatic 106	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   147: ifeq +280 -> 427
    //   150: invokestatic 111	com/alipay/sdk/g/a:a	()Lcom/alipay/sdk/g/a;
    //   153: getfield 114	com/alipay/sdk/g/a:a	Landroid/content/Context;
    //   156: astore 4
    //   158: invokestatic 119	com/alipay/sdk/h/b:a	()Lcom/alipay/sdk/h/b;
    //   161: astore 5
    //   163: aload_3
    //   164: iconst_1
    //   165: aaload
    //   166: invokestatic 123	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifne +258 -> 427
    //   172: aload_3
    //   173: iconst_2
    //   174: aaload
    //   175: invokestatic 123	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   178: ifeq +6 -> 184
    //   181: goto +246 -> 427
    //   184: aload 5
    //   186: aload_3
    //   187: iconst_1
    //   188: aaload
    //   189: putfield 125	com/alipay/sdk/h/b:a	Ljava/lang/String;
    //   192: aload 5
    //   194: aload_3
    //   195: iconst_2
    //   196: aaload
    //   197: putfield 127	com/alipay/sdk/h/b:b	Ljava/lang/String;
    //   200: new 129	com/alipay/sdk/h/a
    //   203: dup
    //   204: aload 4
    //   206: invokespecial 132	com/alipay/sdk/h/a:<init>	(Landroid/content/Context;)V
    //   209: astore_3
    //   210: aload_3
    //   211: aload 4
    //   213: invokestatic 137	com/alipay/sdk/i/b:a	(Landroid/content/Context;)Lcom/alipay/sdk/i/b;
    //   216: invokevirtual 139	com/alipay/sdk/i/b:a	()Ljava/lang/String;
    //   219: aload 4
    //   221: invokestatic 137	com/alipay/sdk/i/b:a	(Landroid/content/Context;)Lcom/alipay/sdk/i/b;
    //   224: invokevirtual 141	com/alipay/sdk/i/b:b	()Ljava/lang/String;
    //   227: aload 5
    //   229: getfield 125	com/alipay/sdk/h/b:a	Ljava/lang/String;
    //   232: aload 5
    //   234: getfield 127	com/alipay/sdk/h/b:b	Ljava/lang/String;
    //   237: invokevirtual 144	com/alipay/sdk/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   240: aload_3
    //   241: invokevirtual 147	com/alipay/sdk/h/a:close	()V
    //   244: goto +183 -> 427
    //   247: astore_2
    //   248: getstatic 152	com/alipay/sdk/app/f:d	Lcom/alipay/sdk/app/f;
    //   251: getfield 156	com/alipay/sdk/app/f:g	I
    //   254: invokestatic 159	com/alipay/sdk/app/f:a	(I)Lcom/alipay/sdk/app/f;
    //   257: astore_2
    //   258: aload_1
    //   259: ifnull +158 -> 417
    //   262: aload_1
    //   263: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   266: aload_2
    //   267: astore_1
    //   268: aload_1
    //   269: astore_2
    //   270: aload_1
    //   271: ifnonnull +13 -> 284
    //   274: getstatic 163	com/alipay/sdk/app/f:b	Lcom/alipay/sdk/app/f;
    //   277: getfield 156	com/alipay/sdk/app/f:g	I
    //   280: invokestatic 159	com/alipay/sdk/app/f:a	(I)Lcom/alipay/sdk/app/f;
    //   283: astore_2
    //   284: aload_2
    //   285: getfield 156	com/alipay/sdk/app/f:g	I
    //   288: aload_2
    //   289: getfield 164	com/alipay/sdk/app/f:h	Ljava/lang/String;
    //   292: ldc -90
    //   294: invokestatic 171	com/alipay/sdk/app/e:a	(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   297: areturn
    //   298: astore 4
    //   300: aload_3
    //   301: invokevirtual 147	com/alipay/sdk/h/a:close	()V
    //   304: goto +123 -> 427
    //   307: astore_2
    //   308: aload_1
    //   309: ifnull +103 -> 412
    //   312: aload_1
    //   313: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   316: aconst_null
    //   317: astore_1
    //   318: goto -50 -> 268
    //   321: astore_2
    //   322: aload_3
    //   323: invokevirtual 147	com/alipay/sdk/h/a:close	()V
    //   326: aload_2
    //   327: athrow
    //   328: astore_2
    //   329: aload_1
    //   330: ifnull +7 -> 337
    //   333: aload_1
    //   334: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   337: aload_2
    //   338: athrow
    //   339: aload_1
    //   340: ifnull +7 -> 347
    //   343: aload_1
    //   344: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   347: aload_2
    //   348: arraylength
    //   349: istore 8
    //   351: iload 7
    //   353: istore 6
    //   355: iload 6
    //   357: iload 8
    //   359: if_icmpge +40 -> 399
    //   362: aload_2
    //   363: iload 6
    //   365: aaload
    //   366: astore_3
    //   367: aload_3
    //   368: getstatic 173	com/alipay/sdk/f/a:a	Lcom/alipay/sdk/f/a;
    //   371: if_acmpne +19 -> 390
    //   374: aload_0
    //   375: aload_3
    //   376: invokespecial 176	com/alipay/sdk/app/c:a	(Lcom/alipay/sdk/f/a;)Ljava/lang/String;
    //   379: astore_2
    //   380: aload_1
    //   381: ifnull +7 -> 388
    //   384: aload_1
    //   385: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   388: aload_2
    //   389: areturn
    //   390: iload 6
    //   392: iconst_1
    //   393: iadd
    //   394: istore 6
    //   396: goto -41 -> 355
    //   399: aload_1
    //   400: ifnull +12 -> 412
    //   403: aload_1
    //   404: invokevirtual 161	com/alipay/sdk/j/a:c	()V
    //   407: aconst_null
    //   408: astore_1
    //   409: goto -141 -> 268
    //   412: aconst_null
    //   413: astore_1
    //   414: goto -146 -> 268
    //   417: aload_2
    //   418: astore_1
    //   419: goto -151 -> 268
    //   422: aconst_null
    //   423: astore_1
    //   424: goto -388 -> 36
    //   427: iload 6
    //   429: iconst_1
    //   430: iadd
    //   431: istore 6
    //   433: goto -327 -> 106
    //   436: astore_1
    //   437: aconst_null
    //   438: astore_1
    //   439: goto -403 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	442	0	this	c
    //   31	393	1	localObject1	Object
    //   436	1	1	localException1	Exception
    //   438	1	1	localObject2	Object
    //   57	57	2	localObject3	Object
    //   247	1	2	locala	com.alipay.sdk.d.a
    //   257	32	2	localObject4	Object
    //   307	1	2	localException2	Exception
    //   321	6	2	localObject5	Object
    //   328	35	2	localObject6	Object
    //   379	39	2	str	String
    //   72	304	3	localObject7	Object
    //   156	64	4	localContext	Context
    //   298	1	4	localException3	Exception
    //   161	72	5	localb	com.alipay.sdk.h.b
    //   104	328	6	i	int
    //   1	351	7	j	int
    //   101	259	8	k	int
    // Exception table:
    //   from	to	target	type
    //   73	103	247	com/alipay/sdk/d/a
    //   118	181	247	com/alipay/sdk/d/a
    //   184	210	247	com/alipay/sdk/d/a
    //   240	244	247	com/alipay/sdk/d/a
    //   300	304	247	com/alipay/sdk/d/a
    //   322	328	247	com/alipay/sdk/d/a
    //   343	347	247	com/alipay/sdk/d/a
    //   347	351	247	com/alipay/sdk/d/a
    //   367	380	247	com/alipay/sdk/d/a
    //   210	240	298	java/lang/Exception
    //   73	103	307	java/lang/Exception
    //   118	181	307	java/lang/Exception
    //   184	210	307	java/lang/Exception
    //   240	244	307	java/lang/Exception
    //   300	304	307	java/lang/Exception
    //   322	328	307	java/lang/Exception
    //   343	347	307	java/lang/Exception
    //   347	351	307	java/lang/Exception
    //   367	380	307	java/lang/Exception
    //   210	240	321	finally
    //   73	103	328	finally
    //   118	181	328	finally
    //   184	210	328	finally
    //   240	244	328	finally
    //   248	258	328	finally
    //   300	304	328	finally
    //   322	328	328	finally
    //   343	347	328	finally
    //   347	351	328	finally
    //   367	380	328	finally
    //   3	36	436	java/lang/Exception
  }
  
  private String a(com.alipay.sdk.f.a arg1)
  {
    ??? = com.alipay.sdk.i.a.a(???.h);
    Object localObject1 = new Intent(this.b, H5PayActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("url", ???[0]);
    if (???.length == 2) {
      localBundle.putString("cookie", ???[1]);
    }
    ((Intent)localObject1).putExtras(localBundle);
    this.b.startActivity((Intent)localObject1);
    try
    {
      synchronized (a)
      {
        a.wait();
        localObject1 = e.a;
        ??? = (com.alipay.sdk.f.a)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          ??? = e.a();
        }
        return (String)???;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public final String a(String paramString)
  {
    for (;;)
    {
      try
      {
        this.c = paramString;
        Object localObject = com.alipay.sdk.g.a.a();
        Activity localActivity = this.b;
        d locald = d.a();
        ((com.alipay.sdk.g.a)localObject).a = localActivity.getApplicationContext();
        ((com.alipay.sdk.g.a)localObject).b = locald;
        if (paramString.contains("paymethod=\"expressGateway\""))
        {
          paramString = a();
          return paramString;
        }
        if (h.b(this.b))
        {
          if ((this.b.getRequestedOrientation() == 0) || (this.b.getRequestedOrientation() == 6) || (this.b.getRequestedOrientation() == 8))
          {
            this.b.setRequestedOrientation(1);
            this.d = true;
          }
          paramString = new com.alipay.sdk.i.e(this.b);
          if (this.c.contains("bizcontext="))
          {
            localObject = paramString.a(this.c);
            if (TextUtils.equals((CharSequence)localObject, "failed"))
            {
              if (this.d)
              {
                this.b.setRequestedOrientation(0);
                this.d = false;
              }
              paramString = a();
            }
          }
          else
          {
            if (this.c.contains("\""))
            {
              localObject = paramString.a(this.c + "&bizcontext=\"{\"appkey\":\"2014052600006128\"}\"");
              continue;
            }
            localObject = paramString.a(this.c + "&bizcontext={\"appkey\":\"2014052600006128\"}");
            continue;
          }
          if (TextUtils.isEmpty((CharSequence)localObject))
          {
            paramString = e.a();
          }
          else
          {
            paramString = (String)localObject;
            if (this.d)
            {
              this.b.setRequestedOrientation(0);
              this.d = false;
              paramString = (String)localObject;
            }
          }
        }
        else
        {
          paramString = a();
        }
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\app\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */