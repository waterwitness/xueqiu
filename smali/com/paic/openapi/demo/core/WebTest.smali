.class public Lcom/paic/openapi/demo/core/WebTest;
.super Ljava/lang/Object;
.source "WebTest.java"


# static fields
.field public static final FORMAT_DATE_TIME_24:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static appId:Ljava/lang/String; = null

.field private static appSecret:Ljava/lang/String; = null

.field private static forwardUrl:Ljava/lang/String; = null

.field private static final method:Ljava/lang/String; = "methodParam"

.field private static openId:Ljava/lang/String;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/paic/openapi/demo/core/WebTest;->sdf:Ljava/text/SimpleDateFormat;

    .line 19
    const-string v0, "openId"

    sput-object v0, Lcom/paic/openapi/demo/core/WebTest;->openId:Ljava/lang/String;

    .line 23
    const-string v0, "appId"

    sput-object v0, Lcom/paic/openapi/demo/core/WebTest;->appId:Ljava/lang/String;

    .line 27
    const-string v0, "2e1410cd9fac4567b9f2189a530f59f6"

    sput-object v0, Lcom/paic/openapi/demo/core/WebTest;->appSecret:Ljava/lang/String;

    .line 31
    const-string v0, "http://domain/openapi/forward/xxx"

    sput-object v0, Lcom/paic/openapi/demo/core/WebTest;->forwardUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/paic/openapi/demo/core/WebTest;->postDemo()V

    .line 40
    return-void
.end method

.method public static postDemo()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
