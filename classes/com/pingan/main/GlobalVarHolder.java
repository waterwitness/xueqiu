package com.pingan.main;

public class GlobalVarHolder
{
  public static int DEFAULT_SMALL_VIDEO_HEIGHT = 0;
  public static int DEFAULT_SMALL_VIDEO_WIDTH = 0;
  public static int DEFAULT_VIDEO_CODEC_FPS = 0;
  public static int DEFAULT_VIDEO_CODEC_HEIGHT = 0;
  public static int DEFAULT_VIDEO_CODEC_HEIGHT_PAD = 0;
  public static int DEFAULT_VIDEO_CODEC_WIDTH = 0;
  public static int DEFAULT_VIDEO_CODEC_WIDTH_PAD = 640;
  public static int DEFAULT_VIDEO_MAX_BITS = 0;
  public static final String IN_BOUND = "inbound";
  public static String MCP_URL_PRD = "https://mcp-core.pingan.com.cn/mcp-core-portal/";
  public static String MCP_URL_STG;
  public static final String OUT_BOUND = "outbound";
  public static String SBCDomain;
  public static String SBCIP;
  public static String SBCPort;
  public static String UUID;
  public static final String VIDEO = "video";
  public static final String VOICE = "voice";
  public static String account;
  public static String callFrom;
  public static String callTo;
  public static int deviceType;
  public static String password;
  
  static
  {
    DEFAULT_VIDEO_CODEC_HEIGHT_PAD = 480;
    DEFAULT_VIDEO_CODEC_WIDTH = 480;
    DEFAULT_VIDEO_CODEC_HEIGHT = 640;
    DEFAULT_VIDEO_CODEC_FPS = 15;
    DEFAULT_VIDEO_MAX_BITS = 300;
    DEFAULT_SMALL_VIDEO_WIDTH = 240;
    DEFAULT_SMALL_VIDEO_HEIGHT = 320;
    MCP_URL_STG = "http://test1-mcp-core.pingan.com.cn:44484/mcp-core-portal/";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\GlobalVarHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */