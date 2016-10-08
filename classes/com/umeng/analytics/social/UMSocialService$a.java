package com.umeng.analytics.social;

import android.os.AsyncTask;
import android.text.TextUtils;
import org.json.JSONObject;

class UMSocialService$a
  extends AsyncTask<Void, Void, d>
{
  String a = paramArrayOfString[0];
  String b = paramArrayOfString[1];
  UMSocialService.b c;
  UMPlatformData[] d;
  
  public UMSocialService$a(String[] paramArrayOfString, UMSocialService.b paramb, UMPlatformData[] paramArrayOfUMPlatformData)
  {
    this.c = paramb;
    this.d = paramArrayOfUMPlatformData;
  }
  
  protected d a(Void... paramVarArgs)
  {
    if (TextUtils.isEmpty(this.b)) {
      paramVarArgs = c.a(this.a);
    }
    label122:
    for (;;)
    {
      try
      {
        Object localObject = new JSONObject(paramVarArgs);
        int i = ((JSONObject)localObject).optInt("st");
        if (i != 0) {
          break label122;
        }
        i = 65132;
        paramVarArgs = new d(i);
        String str = ((JSONObject)localObject).optString("msg");
        if (!TextUtils.isEmpty(str)) {
          paramVarArgs.a(str);
        }
        localObject = ((JSONObject)localObject).optString("data");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          paramVarArgs.b((String)localObject);
        }
        return paramVarArgs;
      }
      catch (Exception paramVarArgs)
      {
        return new d(-99, paramVarArgs);
      }
      paramVarArgs = c.a(this.a, this.b);
    }
  }
  
  protected void a(d paramd)
  {
    if (this.c != null) {
      this.c.a(paramd, this.d);
    }
  }
  
  protected void onPreExecute()
  {
    if (this.c != null) {
      this.c.a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\social\UMSocialService$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */