package org.webrtc.videoengine;

import android.hardware.Camera.CameraInfo;

public class VideoCaptureDeviceInfoAndroid
{
  private static final String TAG = "VideoCaptureDeviceInfoAndroid";
  
  private static String deviceUniqueName(int paramInt, Camera.CameraInfo paramCameraInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder("Camera ").append(paramInt).append(", Facing ");
    if (isFrontFacing(paramCameraInfo)) {}
    for (String str = "front";; str = "back") {
      return str + ", Orientation " + paramCameraInfo.orientation;
    }
  }
  
  /* Error */
  private static String getDeviceInfo()
  {
    // Byte code:
    //   0: new 58	org/json/JSONArray
    //   3: dup
    //   4: invokespecial 59	org/json/JSONArray:<init>	()V
    //   7: astore_3
    //   8: iconst_0
    //   9: istore 9
    //   11: iload 9
    //   13: invokestatic 65	android/hardware/Camera:getNumberOfCameras	()I
    //   16: if_icmplt +9 -> 25
    //   19: aload_3
    //   20: iconst_2
    //   21: invokevirtual 68	org/json/JSONArray:toString	(I)Ljava/lang/String;
    //   24: areturn
    //   25: new 41	android/hardware/Camera$CameraInfo
    //   28: dup
    //   29: invokespecial 69	android/hardware/Camera$CameraInfo:<init>	()V
    //   32: astore 5
    //   34: iload 9
    //   36: aload 5
    //   38: invokestatic 73	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   41: iload 9
    //   43: aload 5
    //   45: invokestatic 75	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceUniqueName	(ILandroid/hardware/Camera$CameraInfo;)Ljava/lang/String;
    //   48: astore 4
    //   50: new 77	org/json/JSONObject
    //   53: dup
    //   54: invokespecial 78	org/json/JSONObject:<init>	()V
    //   57: astore 6
    //   59: aload_3
    //   60: aload 6
    //   62: invokevirtual 82	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   65: pop
    //   66: aconst_null
    //   67: astore_1
    //   68: aconst_null
    //   69: astore_0
    //   70: iload 9
    //   72: invokestatic 86	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   75: astore_2
    //   76: aload_2
    //   77: astore_0
    //   78: aload_2
    //   79: astore_1
    //   80: aload_2
    //   81: invokevirtual 90	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   84: astore 7
    //   86: aload_2
    //   87: astore_0
    //   88: aload_2
    //   89: astore_1
    //   90: aload 7
    //   92: invokevirtual 96	android/hardware/Camera$Parameters:getSupportedPreviewSizes	()Ljava/util/List;
    //   95: astore 8
    //   97: aload_2
    //   98: astore_0
    //   99: aload_2
    //   100: astore_1
    //   101: aload 7
    //   103: invokevirtual 99	android/hardware/Camera$Parameters:getSupportedPreviewFpsRange	()Ljava/util/List;
    //   106: astore 7
    //   108: aload_2
    //   109: astore_0
    //   110: aload_2
    //   111: astore_1
    //   112: ldc 8
    //   114: new 17	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 101
    //   120: invokespecial 22	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload 4
    //   125: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 107	com/pingan/a/a/e:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload_2
    //   135: ifnull +7 -> 142
    //   138: aload_2
    //   139: invokevirtual 110	android/hardware/Camera:release	()V
    //   142: new 58	org/json/JSONArray
    //   145: dup
    //   146: invokespecial 59	org/json/JSONArray:<init>	()V
    //   149: astore_0
    //   150: aload 8
    //   152: invokeinterface 116 1 0
    //   157: astore_1
    //   158: aload_1
    //   159: invokeinterface 122 1 0
    //   164: ifne +162 -> 326
    //   167: new 58	org/json/JSONArray
    //   170: dup
    //   171: invokespecial 59	org/json/JSONArray:<init>	()V
    //   174: astore_1
    //   175: aload 7
    //   177: invokeinterface 116 1 0
    //   182: astore_2
    //   183: aload_2
    //   184: invokeinterface 122 1 0
    //   189: ifne +226 -> 415
    //   192: aload 6
    //   194: ldc 124
    //   196: aload 4
    //   198: invokevirtual 127	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   201: pop
    //   202: aload 6
    //   204: ldc -127
    //   206: aload 5
    //   208: invokestatic 35	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:isFrontFacing	(Landroid/hardware/Camera$CameraInfo;)Z
    //   211: invokevirtual 132	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   214: ldc -123
    //   216: aload 5
    //   218: getfield 45	android/hardware/Camera$CameraInfo:orientation	I
    //   221: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   224: ldc -118
    //   226: aload_0
    //   227: invokevirtual 127	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   230: ldc -116
    //   232: aload_1
    //   233: invokevirtual 127	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   236: pop
    //   237: iload 9
    //   239: iconst_1
    //   240: iadd
    //   241: istore 9
    //   243: goto -232 -> 11
    //   246: astore_2
    //   247: aload_0
    //   248: astore_1
    //   249: ldc 8
    //   251: new 17	java/lang/StringBuilder
    //   254: dup
    //   255: ldc -114
    //   257: invokespecial 22	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   260: aload 4
    //   262: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: ldc -112
    //   267: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: aload_2
    //   274: invokestatic 147	com/pingan/a/a/e:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   277: aload_0
    //   278: astore_1
    //   279: bipush 20
    //   281: ldc -107
    //   283: invokestatic 155	com/letpower/engine/LDEngineDemo:outputAVCallStatus	(ILjava/lang/Object;)V
    //   286: aload_0
    //   287: ifnull -50 -> 237
    //   290: aload_0
    //   291: invokevirtual 110	android/hardware/Camera:release	()V
    //   294: goto -57 -> 237
    //   297: astore_0
    //   298: ldc 8
    //   300: ldc -99
    //   302: invokestatic 163	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   305: pop
    //   306: new 56	java/lang/RuntimeException
    //   309: dup
    //   310: aload_0
    //   311: invokespecial 166	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   314: athrow
    //   315: astore_0
    //   316: aload_1
    //   317: ifnull +7 -> 324
    //   320: aload_1
    //   321: invokevirtual 110	android/hardware/Camera:release	()V
    //   324: aload_0
    //   325: athrow
    //   326: aload_1
    //   327: invokeinterface 170 1 0
    //   332: checkcast 172	android/hardware/Camera$Size
    //   335: astore_2
    //   336: new 77	org/json/JSONObject
    //   339: dup
    //   340: invokespecial 78	org/json/JSONObject:<init>	()V
    //   343: astore 8
    //   345: aload 8
    //   347: ldc -82
    //   349: aload_2
    //   350: getfield 176	android/hardware/Camera$Size:width	I
    //   353: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   356: pop
    //   357: aload 8
    //   359: ldc -78
    //   361: aload_2
    //   362: getfield 180	android/hardware/Camera$Size:height	I
    //   365: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   368: pop
    //   369: ldc 8
    //   371: new 17	java/lang/StringBuilder
    //   374: dup
    //   375: ldc -74
    //   377: invokespecial 22	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   380: aload_2
    //   381: getfield 176	android/hardware/Camera$Size:width	I
    //   384: invokevirtual 26	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   387: ldc -72
    //   389: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: aload_2
    //   393: getfield 180	android/hardware/Camera$Size:height	I
    //   396: invokevirtual 26	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   399: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokestatic 187	com/pingan/a/a/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   405: aload_0
    //   406: aload 8
    //   408: invokevirtual 82	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   411: pop
    //   412: goto -254 -> 158
    //   415: aload_2
    //   416: invokeinterface 170 1 0
    //   421: checkcast 189	[I
    //   424: astore 7
    //   426: new 77	org/json/JSONObject
    //   429: dup
    //   430: invokespecial 78	org/json/JSONObject:<init>	()V
    //   433: astore 8
    //   435: aload 8
    //   437: ldc -65
    //   439: aload 7
    //   441: iconst_0
    //   442: iaload
    //   443: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   446: pop
    //   447: aload 8
    //   449: ldc -63
    //   451: aload 7
    //   453: iconst_1
    //   454: iaload
    //   455: invokevirtual 136	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   458: pop
    //   459: aload_1
    //   460: aload 8
    //   462: invokevirtual 82	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   465: pop
    //   466: goto -283 -> 183
    // Local variable table:
    //   start	length	slot	name	signature
    //   69	222	0	localObject1	Object
    //   297	14	0	localJSONException	org.json.JSONException
    //   315	91	0	localObject2	Object
    //   67	393	1	localObject3	Object
    //   75	109	2	localObject4	Object
    //   246	28	2	localRuntimeException	RuntimeException
    //   335	81	2	localSize	android.hardware.Camera.Size
    //   7	53	3	localJSONArray	org.json.JSONArray
    //   48	213	4	str	String
    //   32	185	5	localCameraInfo	Camera.CameraInfo
    //   57	146	6	localJSONObject	org.json.JSONObject
    //   84	368	7	localObject5	Object
    //   95	366	8	localObject6	Object
    //   9	233	9	i	int
    // Exception table:
    //   from	to	target	type
    //   70	76	246	java/lang/RuntimeException
    //   80	86	246	java/lang/RuntimeException
    //   90	97	246	java/lang/RuntimeException
    //   101	108	246	java/lang/RuntimeException
    //   112	134	246	java/lang/RuntimeException
    //   0	8	297	org/json/JSONException
    //   11	25	297	org/json/JSONException
    //   25	66	297	org/json/JSONException
    //   138	142	297	org/json/JSONException
    //   142	158	297	org/json/JSONException
    //   158	183	297	org/json/JSONException
    //   183	237	297	org/json/JSONException
    //   290	294	297	org/json/JSONException
    //   320	324	297	org/json/JSONException
    //   324	326	297	org/json/JSONException
    //   326	412	297	org/json/JSONException
    //   415	466	297	org/json/JSONException
    //   70	76	315	finally
    //   80	86	315	finally
    //   90	97	315	finally
    //   101	108	315	finally
    //   112	134	315	finally
    //   249	277	315	finally
    //   279	286	315	finally
  }
  
  private static boolean isFrontFacing(Camera.CameraInfo paramCameraInfo)
  {
    return paramCameraInfo.facing == 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\VideoCaptureDeviceInfoAndroid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */