package com.tencent.qqconnect.dataprovider;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.tencent.qqconnect.dataprovider.datatype.TextAndMediaPath;
import com.tencent.qqconnect.dataprovider.datatype.TextOnly;
import java.io.File;
import java.lang.ref.WeakReference;

public final class CallbackManager
{
  private static final String HTTP_PREFIX = "http://";
  private String mAppid;
  private WeakReference mContext;
  private Uri mData;
  private String mFromActivityClassName;
  private String mFromPackageName;
  private boolean mIsCallFromTencentApp = false;
  private int mRequestDataTypeFlag;
  private String mSrcAction;
  
  public CallbackManager(Activity paramActivity)
  {
    this.mContext = new WeakReference(paramActivity.getApplicationContext());
    paramActivity = paramActivity.getIntent();
    if (paramActivity != null)
    {
      this.mData = paramActivity.getData();
      this.mFromPackageName = paramActivity.getStringExtra("srcPackageName");
      this.mFromActivityClassName = paramActivity.getStringExtra("srcClassName");
      this.mSrcAction = paramActivity.getStringExtra("srcAction");
      this.mRequestDataTypeFlag = paramActivity.getIntExtra("requestDataTypeFlag", 0);
      this.mAppid = paramActivity.getStringExtra("params_appid");
      if ((this.mData != null) && (this.mFromActivityClassName != null)) {
        this.mIsCallFromTencentApp = true;
      }
    }
  }
  
  private int BackToTencentApp(Bundle paramBundle)
  {
    if (!this.mIsCallFromTencentApp) {
      return -2;
    }
    Intent localIntent = new Intent();
    localIntent.setClassName(this.mFromPackageName, this.mFromActivityClassName);
    localIntent.setAction(this.mSrcAction);
    paramBundle.putString("params_appid", this.mAppid);
    localIntent.putExtras(paramBundle);
    localIntent.setFlags(268435456);
    ((Context)this.mContext.get()).startActivity(localIntent);
    return 0;
  }
  
  private int checkFilePath(String paramString)
  {
    int j = 0;
    int i;
    if (paramString == null) {
      i = -7;
    }
    long l;
    do
    {
      String str;
      do
      {
        return i;
        str = paramString.toLowerCase();
        i = j;
      } while (str.startsWith("http://"));
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        if (!str.startsWith(Environment.getExternalStorageDirectory().toString().toLowerCase())) {
          return -5;
        }
      }
      else {
        return -10;
      }
      paramString = new File(paramString);
      if ((!paramString.exists()) || (paramString.isDirectory())) {
        return -8;
      }
      l = paramString.length();
      if (l == 0L) {
        return -9;
      }
      i = j;
    } while (l <= 1073741824L);
    return -6;
  }
  
  public final int getRequestDateTypeFlag()
  {
    return this.mRequestDataTypeFlag;
  }
  
  public final boolean isCallFromTencentApp()
  {
    return this.mIsCallFromTencentApp;
  }
  
  public final boolean isSupportType(int paramInt)
  {
    return (getRequestDateTypeFlag() & paramInt) != 0;
  }
  
  public final int sendTextAndImagePath(String paramString1, String paramString2)
  {
    int i;
    if (!isSupportType(1)) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      j = checkFilePath(paramString2);
      i = j;
    } while (j != 0);
    paramString1 = new TextAndMediaPath(paramString1, paramString2);
    paramString2 = new Bundle();
    paramString2.putInt("contentDataType", 1);
    paramString2.putParcelable("contentData", paramString1);
    return BackToTencentApp(paramString2);
  }
  
  public final int sendTextAndVideoPath(String paramString1, String paramString2)
  {
    int i;
    if (!isSupportType(2)) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      j = checkFilePath(paramString2);
      i = j;
    } while (j != 0);
    paramString1 = new TextAndMediaPath(paramString1, paramString2);
    paramString2 = new Bundle();
    paramString2.putInt("contentDataType", 2);
    paramString2.putParcelable("contentData", paramString1);
    return BackToTencentApp(paramString2);
  }
  
  public final int sendTextOnly(String paramString)
  {
    if (!isSupportType(4)) {
      return -1;
    }
    paramString = new TextOnly(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putInt("contentDataType", 4);
    localBundle.putParcelable("contentData", paramString);
    return BackToTencentApp(localBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\qqconnect\dataprovider\CallbackManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */