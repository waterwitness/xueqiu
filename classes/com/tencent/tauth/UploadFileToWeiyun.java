package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UploadFileToWeiyun
{
  private String bmd5;
  private int body_len;
  private int cmd = 1000;
  private byte[] data;
  private int data_len;
  private String file_id;
  private byte[] file_key;
  private int file_key_len = 20;
  private int file_size;
  private String filepath;
  private String host;
  private String mAppid;
  private Handler mHandler = new g(this, Looper.getMainLooper());
  private IUploadFileToWeiyunStatus mListener;
  private String mOpenid;
  private Tencent mTencent;
  private String mToken;
  private int magic_num = -1412589450;
  private int offset;
  private int port;
  private byte[] postbody;
  private String requestUrl;
  private int reserved = 0;
  String str_file_key;
  private String sum;
  private byte[] ukey;
  private int ukey_len = 304;
  
  public UploadFileToWeiyun(Tencent paramTencent, String paramString1, String paramString2, IUploadFileToWeiyunStatus paramIUploadFileToWeiyunStatus)
  {
    this.mTencent = paramTencent;
    this.filepath = paramString1;
    this.mListener = paramIUploadFileToWeiyunStatus;
    this.requestUrl = paramString2;
  }
  
  private void doUpload()
  {
    this.mListener.onUploadStart();
    new i(this).start();
  }
  
  private void getUploadPermission()
  {
    new h(this).start();
  }
  
  private byte[] packPostBody(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte, 0, paramInt1);
      this.bmd5 = DataConvert.toHexString(((MessageDigest)localObject).digest());
      ((MessageDigest)localObject).reset();
      Log.i("weiyun_test", "uploadFileToWeiyun prepareFileInfo  md5:" + this.bmd5);
      int i = paramInt1 + 340;
      localObject = new byte[i + 4 + 4 + 4 + 4];
      int j = DataConvert.putInt2Bytes(-1412589450, (byte[])localObject, 0) + 0;
      j += DataConvert.putInt2Bytes(1000, (byte[])localObject, j);
      j += DataConvert.putInt2Bytes(0, (byte[])localObject, j);
      i = DataConvert.putInt2Bytes(i, (byte[])localObject, j) + j;
      i += DataConvert.putShort2Bytes(304, (byte[])localObject, i);
      i += DataConvert.putBytes2Bytes(this.ukey, (byte[])localObject, i);
      i += DataConvert.putShort2Bytes(20, (byte[])localObject, i);
      i += DataConvert.putString2Bytes(this.str_file_key, (byte[])localObject, i);
      i += DataConvert.putInt2Bytes(this.file_size, (byte[])localObject, i);
      paramInt2 = i + DataConvert.putInt2Bytes(paramInt2, (byte[])localObject, i);
      DataConvert.putBytes2Bytes(paramArrayOfByte, paramInt1, (byte[])localObject, paramInt2 + DataConvert.putInt2Bytes(paramInt1, (byte[])localObject, paramInt2));
      return (byte[])localObject;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      Log.e("weiyun_test", "uploadFileToWeiyun prepareFileInfo  error:" + paramArrayOfByte.getLocalizedMessage());
      paramArrayOfByte.printStackTrace();
      this.mListener.onError("prepareFileInfo error: get bmd5 failed");
    }
    return null;
  }
  
  private void prepareFileInfo()
  {
    this.mListener.onPrepareStart();
    this.file_size = ((int)new File(this.filepath).length());
    try
    {
      Object localObject1 = MessageDigest.getInstance("SHA-1");
      FileInputStream localFileInputStream = new FileInputStream(this.filepath);
      localObject1 = new DigestInputStream(localFileInputStream, (MessageDigest)localObject1);
      Object localObject2 = new byte[524288];
      while (((DigestInputStream)localObject1).read((byte[])localObject2) > 0) {}
      localObject2 = ((DigestInputStream)localObject1).getMessageDigest();
      this.file_key = ((MessageDigest)localObject2).digest();
      this.str_file_key = DataConvert.toHexString(this.file_key);
      ((MessageDigest)localObject2).reset();
      localFileInputStream.close();
      ((DigestInputStream)localObject1).close();
      return;
    }
    catch (Exception localException1)
    {
      try
      {
        localObject1 = MessageDigest.getInstance("MD5");
        localFileInputStream = new FileInputStream(this.filepath);
        localObject1 = new DigestInputStream(localFileInputStream, (MessageDigest)localObject1);
        localObject2 = new byte[524288];
        while (((DigestInputStream)localObject1).read((byte[])localObject2) > 0) {}
        localObject2 = ((DigestInputStream)localObject1).getMessageDigest();
        this.bmd5 = DataConvert.toHexString(((MessageDigest)localObject2).digest());
        ((MessageDigest)localObject2).reset();
        localFileInputStream.close();
        ((DigestInputStream)localObject1).close();
        return;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        this.mListener.onError("sha digest error!");
      }
      localException1 = localException1;
      localException1.printStackTrace();
      this.mListener.onError("sha digest error!");
      return;
    }
  }
  
  public void start()
  {
    prepareFileInfo();
    getUploadPermission();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\UploadFileToWeiyun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */