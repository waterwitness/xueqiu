.class public Lcom/pingan/main/utils/MCPUtils;
.super Ljava/lang/Object;
.source "MCPUtils.java"


# static fields
.field private static final DYNAMICFLAG:Ljava/lang/String; = "1"

.field public static GET_IBOS_TOKEN_FAILED:I = 0x0

.field public static GET_IBOS_TOKEN_OK_F:I = 0x0

.field public static GET_IBOS_TOKEN_OK_S:I = 0x0

.field public static LOCATION:Ljava/lang/String; = null

.field private static final MCPTOKEN:Ljava/lang/String; = "7efaae0430e856f943f1a4b7e936ef7b"

.field public static final MCP_PRD:I = 0x0

.field public static final MCP_STG:I = 0x1

.field private static MCP_URL:Ljava/lang/String; = null

.field private static SYSTEMID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MCPExtension"

.field static asyncHttpResponseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private static expiryDate:J

.field private static mContext:Landroid/content/Context;

.field private static mRequestQueue:Lcom/loopj/android/http/AsyncHttpClient;

.field static mUploadUtil:Lcom/pingan/a/a/g;

.field private static tempExpiryDate:J

.field private static tempTokenKey:Ljava/lang/String;

.field private static tokenKey:Ljava/lang/String;


# instance fields
.field private TERMINALNO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "Lfex-trade-BH"

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    .line 31
    const-string v0, "1"

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->LOCATION:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->MCP_URL_PRD:Ljava/lang/String;

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->MCP_URL:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/pingan/main/utils/MCPUtils;->GET_IBOS_TOKEN_OK_S:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/pingan/main/utils/MCPUtils;->GET_IBOS_TOKEN_OK_F:I

    .line 42
    const/4 v0, 0x3

    sput v0, Lcom/pingan/main/utils/MCPUtils;->GET_IBOS_TOKEN_FAILED:I

    .line 90
    new-instance v0, Lcom/pingan/main/utils/MCPUtils$1;

    invoke-direct {v0}, Lcom/pingan/main/utils/MCPUtils$1;-><init>()V

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->asyncHttpResponseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/pingan/main/utils/MCPUtils;->TERMINALNO:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static cancleRequestQueue()V
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/pingan/main/utils/MCPUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/utils/MCPUtils;->getInstence(Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/utils/MCPUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 146
    return-void
.end method

.method private static createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 171
    :try_start_0
    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    const/4 v0, 0x0

    array-length v4, v2

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_0

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 180
    :cond_0
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private static getExpiryDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-wide v0, Lcom/pingan/main/utils/MCPUtils;->expiryDate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIBOSTokenAndUpload(Landroid/content/Context;Lcom/pingan/a/a/g;)V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/pingan/main/utils/MCPUtils;->setTempTokenKey()Ljava/lang/String;

    .line 81
    sput-object p1, Lcom/pingan/main/utils/MCPUtils;->mUploadUtil:Lcom/pingan/a/a/g;

    .line 82
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 83
    const-string v1, "systemId"

    sget-object v2, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "expiryDate"

    sget-wide v2, Lcom/pingan/main/utils/MCPUtils;->tempExpiryDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "tokenKey"

    sget-object v2, Lcom/pingan/main/utils/MCPUtils;->tempTokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MCP_URL="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pingan/main/utils/MCPUtils;->MCP_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0}, Lcom/pingan/main/utils/MCPUtils;->getInstence(Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pingan/main/utils/MCPUtils;->MCP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "common/getIobsToken.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pingan/main/utils/MCPUtils;->asyncHttpResponseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 88
    return-void
.end method

.method public static getInstence(Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/pingan/main/utils/MCPUtils;->mRequestQueue:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->mRequestQueue:Lcom/loopj/android/http/AsyncHttpClient;

    .line 60
    :cond_0
    sget-object v0, Lcom/pingan/main/utils/MCPUtils;->mRequestQueue:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method private static getLongExpiryDate()J
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mcpSwitch(I)V
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_1

    .line 68
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->MCP_URL_PRD:Ljava/lang/String;

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->MCP_URL:Ljava/lang/String;

    .line 70
    const-string v0, "642807"

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 72
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->MCP_URL_STG:Ljava/lang/String;

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->MCP_URL:Ljava/lang/String;

    .line 73
    const-string v0, "642807"

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static setParams()V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/pingan/main/utils/MCPUtils;->expiryDate:J

    .line 151
    :try_start_0
    const-string v0, "7efaae0430e856f943f1a4b7e936ef7b"

    sget-object v1, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    sget-wide v2, Lcom/pingan/main/utils/MCPUtils;->expiryDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/main/utils/MCPUtils;->createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->tokenKey:Ljava/lang/String;

    .line 152
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MCPExtension-----getExtension----->setParams-->tokenKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/utils/MCPUtils;->tokenKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setTempTokenKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/pingan/main/utils/MCPUtils;->tempExpiryDate:J

    .line 203
    const-string v0, "7efaae0430e856f943f1a4b7e936ef7b"

    sget-object v1, Lcom/pingan/main/utils/MCPUtils;->SYSTEMID:Ljava/lang/String;

    sget-wide v2, Lcom/pingan/main/utils/MCPUtils;->tempExpiryDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/main/utils/MCPUtils;->createToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/utils/MCPUtils;->tempTokenKey:Ljava/lang/String;

    .line 204
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MCPExtension-----getTokenKey--->tokenKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/utils/MCPUtils;->tokenKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    sget-object v0, Lcom/pingan/main/utils/MCPUtils;->tokenKey:Ljava/lang/String;

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
