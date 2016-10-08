.class public Lcom/pingan/paphone/extension/MCPExtension2;
.super Ljava/lang/Object;
.source "MCPExtension2.java"


# static fields
.field private static final DYNAMICFLAG:Ljava/lang/String; = "1"

.field public static final FETCH_CALLID_FAILD:I = 0x12e

.field public static final FETCH_CALLID_SUCCESS:I = 0x12d

.field public static final GET_EXTENSION_FAIL:I = 0xcc

.field public static final GET_EXTENSION_OK_F:I = 0xc9

.field public static final GET_EXTENSION_OK_S:I = 0xc8

.field public static final GET_EXTENSION_RELEASE:I = 0xcd

.field public static final GET_QUEUEDEDEDAIL_FAIL:I = 0xd6

.field public static final GET_QUEUEDEDEDAIL_OK:I = 0xd2

.field public static LOCATION:Ljava/lang/String; = null

.field private static final MCPTOKEN:Ljava/lang/String; = "8efaae0430e456e943f1a2b7e436ef7b"

.field private static final SYSTEMID:Ljava/lang/String; = "521261"

.field private static final TAG:Ljava/lang/String; = "MCPExtension"

.field private static callDoCount:I

.field public static callIdCount:I

.field private static count:I

.field private static expiryDate:J

.field private static extensionNumber:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static queueDetailTimer:Ljava/util/Timer;

.field private static refreshCount:I

.field private static releaseCount:I

.field private static taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

.field private static taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

.field private static tempExpiryDate:J

.field private static tempTokenKey:Ljava/lang/String;

.field private static timeRefresh:Ljava/util/Timer;

.field private static tokenKey:Ljava/lang/String;


# instance fields
.field private TERMINALNO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "1"

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->LOCATION:Ljava/lang/String;

    .line 51
    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    .line 60
    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    .line 61
    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I

    .line 62
    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->refreshCount:I

    .line 66
    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->callDoCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "0"

    iput-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2;->TERMINALNO:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/gson/Gson;)Lcom/google/gson/Gson;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .prologue
    .line 29
    sput p0, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .prologue
    .line 29
    sput p0, Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I

    return v0
.end method

.method static synthetic access$404()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->refreshCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pingan/paphone/extension/MCPExtension2;->refreshCount:I

    return v0
.end method

.method static synthetic access$504()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->callDoCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pingan/paphone/extension/MCPExtension2;->callDoCount:I

    return v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static callDo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 440
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calldo-->getParams--extensionNumber="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;)V

    .line 442
    const-string v1, "callerNumber"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "calleeNumber"

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "recordFlag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "systemId"

    const-string v2, "521261"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "callId"

    invoke-virtual {v0, v1, p0}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/call.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$4;

    invoke-direct {v3, p0}, Lcom/pingan/paphone/extension/MCPExtension2$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 467
    return-void
.end method

.method public static cancleRequestQueue()V
    .locals 3

    .prologue
    .line 363
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 364
    return-void
.end method

.method private static createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 415
    :try_start_0
    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 421
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    const/4 v0, 0x0

    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 424
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fetchCallUuId(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 686
    invoke-static {p1}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    .line 687
    const-string v0, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " fetchCallUuId start -- user_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pingan/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v2, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v2}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 690
    :try_start_0
    const-string v0, "funcNo"

    const-string v3, "700010"

    invoke-virtual {v2, v0, v3}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "user_id"

    sget-object v3, Lcom/pingan/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "flow_sn"

    invoke-virtual {v2, v0, p0}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "MCPExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetchCallUuId---params="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pingan/paphone/extension/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    sget-object v0, Lcom/pingan/a;->i:Ljava/lang/String;

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$7;

    invoke-direct {v3, p1, p2, p0}, Lcom/pingan/paphone/extension/MCPExtension2$7;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 733
    return-void

    .line 695
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getExpiryDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    sget-wide v0, Lcom/pingan/paphone/extension/MCPExtension2;->expiryDate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    sput-object p0, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->setParams()V

    .line 89
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtension-->getParams---MCP_URL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;)V

    .line 91
    const-string v1, "dynamicFlag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "systemId"

    const-string v2, "521261"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "location"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->LOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "expiryDate"

    sget-wide v2, Lcom/pingan/paphone/extension/MCPExtension2;->expiryDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/pingan/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "terminalID"

    sget-object v2, Lcom/pingan/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/clientInit.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$1;

    invoke-direct {v3, p1, p0}, Lcom/pingan/paphone/extension/MCPExtension2$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLongExpiryDate()J
    .locals 4

    .prologue
    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getQueueDedail(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 478
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 479
    const-string v1, "queueNo"

    const-string v2, "326302"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "systemId"

    const-string v2, "521261"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "expiryDate"

    sget-wide v2, Lcom/pingan/paphone/extension/MCPExtension2;->expiryDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {p0}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/getQueueDedail.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$5;

    invoke-direct {v3, p1}, Lcom/pingan/paphone/extension/MCPExtension2$5;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 532
    return-void
.end method

.method public static getQueueInfo(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->setTempTokenKey()Ljava/lang/String;

    .line 544
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 545
    const-string v1, "callerNum"

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "queueNo"

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "systemId"

    const-string v2, "521261"

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "expiryDate"

    sget-wide v2, Lcom/pingan/paphone/extension/MCPExtension2;->tempExpiryDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tempTokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getQueueInfo--params="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pingan/paphone/extension/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {p0}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/queryQueueInfo.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$6;

    invoke-direct {v3, p0, p1}, Lcom/pingan/paphone/extension/MCPExtension2$6;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 629
    return-void
.end method

.method public static refreshByPost()V
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 310
    const-string v1, "extensionNumber"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/registExtension.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$3;

    invoke-direct {v3}, Lcom/pingan/paphone/extension/MCPExtension2$3;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 354
    return-void
.end method

.method public static releaseByPost(Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 237
    const-string v0, "MCPExtension"

    const-string v1, "releaseByPost start "

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/pingan/paphone/extension/http/RequestParams;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/http/RequestParams;-><init>()V

    .line 239
    const-string v1, "extensionNumber"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/paphone/extension/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pingan/paphone/utils/NetHttpUtils;->getInstence(Landroid/content/Context;)Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pingan/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "common/releaseExtension.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pingan/paphone/extension/MCPExtension2$2;

    invoke-direct {v3, p0}, Lcom/pingan/paphone/extension/MCPExtension2$2;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 294
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->extensionNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "MCPExtension"

    const-string v1, "releaseByPost--->extensionNumber==null||tokenKey==null"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p0, :cond_1

    .line 298
    const-string v0, "MCPExtension"

    const-string v1, "\u91ca\u653e\u5206\u673a\u53f7--handler send GET_EXTENSION_RELEASE  "

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/16 v0, 0xcd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :cond_1
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public static setExtensionCount(I)V
    .locals 0

    .prologue
    .line 75
    sput p0, Lcom/pingan/paphone/extension/MCPExtension2;->count:I

    .line 76
    return-void
.end method

.method private static setParams()V
    .locals 4

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/pingan/paphone/extension/MCPExtension2;->expiryDate:J

    .line 392
    :try_start_0
    const-string v0, "8efaae0430e456e943f1a2b7e436ef7b"

    const-string v1, "521261"

    sget-wide v2, Lcom/pingan/paphone/extension/MCPExtension2;->expiryDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/extension/MCPExtension2;->createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    .line 393
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MCPExtension-----getExtension----->setParams-->tokenKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setTempTokenKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 669
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/pingan/paphone/extension/MCPExtension2;->tempExpiryDate:J

    .line 670
    const-string v0, "8efaae0430e456e943f1a2b7e436ef7b"

    const-string v1, "521261"

    sget-wide v2, Lcom/pingan/paphone/extension/MCPExtension2;->tempExpiryDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/extension/MCPExtension2;->createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->tempTokenKey:Ljava/lang/String;

    .line 671
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MCPExtension-----getTokenKey--->tokenKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->tokenKey:Ljava/lang/String;

    return-object v0

    .line 675
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startQueueRefresh(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 632
    const-string v0, "MCPExtension"

    const-string v1, "startQueueRefresh"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sput-object p0, Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;

    .line 635
    sput-object p1, Lcom/pingan/paphone/extension/MCPExtension2;->mHandler:Landroid/os/Handler;

    .line 636
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopQueueRefresh()V

    .line 637
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    .line 640
    :cond_0
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    if-nez v0, :cond_1

    .line 641
    new-instance v0, Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;-><init>()V

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    .line 643
    :cond_1
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 644
    return-void
.end method

.method public static startTimerRefresh()V
    .locals 6

    .prologue
    .line 367
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopTimerRefresh()V

    .line 368
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    .line 371
    :cond_0
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    invoke-direct {v0}, Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;-><init>()V

    sput-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    .line 374
    :cond_1
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    sget-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 375
    return-void
.end method

.method public static stopQueueRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 647
    const-string v0, "MCPExtension"

    const-string v1, "stopQueueRefresh"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 649
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 650
    sput-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->queueDetailTimer:Ljava/util/Timer;

    .line 653
    :cond_0
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    if-eqz v0, :cond_1

    .line 654
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    invoke-virtual {v0}, Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;->cancel()Z

    .line 655
    sput-object v2, Lcom/pingan/paphone/extension/MCPExtension2;->taskQueueDetail:Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;

    .line 657
    :cond_1
    return-void
.end method

.method public static stopTimerRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 380
    sput-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->timeRefresh:Ljava/util/Timer;

    .line 383
    :cond_0
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    if-eqz v0, :cond_1

    .line 384
    sget-object v0, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    invoke-virtual {v0}, Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;->cancel()Z

    .line 385
    sput-object v1, Lcom/pingan/paphone/extension/MCPExtension2;->taskRefresh:Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;

    .line 387
    :cond_1
    return-void
.end method
