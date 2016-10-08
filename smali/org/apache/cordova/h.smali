.class public final Lorg/apache/cordova/h;
.super Ljava/lang/Object;
.source "CordovaResourceApi.java"


# static fields
.field static a:Ljava/lang/Thread;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/res/AssetManager;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Lorg/apache/cordova/x;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/h;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/x;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/h;->f:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/h;->d:Landroid/content/ContentResolver;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/h;->c:Landroid/content/res/AssetManager;

    .line 95
    iput-object p2, p0, Lorg/apache/cordova/h;->e:Lorg/apache/cordova/x;

    .line 96
    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 2

    .prologue
    .line 107
    invoke-static {p0}, Lorg/apache/cordova/h;->e(Landroid/net/Uri;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x2

    .line 130
    :goto_0
    return v0

    .line 112
    :cond_0
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v0, 0x3

    goto :goto_0

    .line 115
    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    const/4 v0, 0x4

    goto :goto_0

    .line 124
    :cond_4
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    const/4 v0, 0x5

    goto :goto_0

    .line 127
    :cond_5
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    const/4 v0, 0x6

    goto :goto_0

    .line 130
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    .line 201
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 202
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 206
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "3ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const-string v0, "audio/3gpp"

    .line 213
    :goto_0
    return-object v0

    .line 209
    :cond_1
    const-string v1, "js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const-string v0, "text/javascript"

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Landroid/net/Uri;)Lorg/apache/cordova/i;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 399
    const/16 v0, 0x2c

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 400
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 417
    :goto_0
    return-object v6

    .line 403
    :cond_0
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 406
    array-length v0, v8

    if-lez v0, :cond_4

    .line 407
    aget-object v3, v8, v4

    :goto_1
    move v0, v1

    move v2, v4

    .line 409
    :goto_2
    array-length v9, v8

    if-ge v0, v9, :cond_2

    .line 410
    const-string v9, "base64"

    aget-object v10, v8, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v1

    .line 409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 414
    :cond_2
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v2, :cond_3

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v1, v0

    .line 416
    :goto_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 417
    new-instance v0, Lorg/apache/cordova/i;

    array-length v1, v1

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/i;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    move-object v6, v0

    goto :goto_0

    .line 415
    :cond_3
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v3, v6

    goto :goto_1
.end method

.method private static e(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Relative URIs are not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 134
    invoke-static {p1}, Lorg/apache/cordova/h;->e(Landroid/net/Uri;)V

    .line 135
    iget-object v0, p0, Lorg/apache/cordova/h;->e:Lorg/apache/cordova/x;

    .line 1429
    iget-object v0, v0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    .line 1430
    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lorg/apache/cordova/g;->e()Landroid/net/Uri;

    goto :goto_0

    .line 136
    :cond_1
    return-object p1
.end method

.method public final c(Landroid/net/Uri;)Lorg/apache/cordova/i;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 240
    invoke-static {p1}, Lorg/apache/cordova/h;->a(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI not supported by CordovaResourceApi: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 245
    new-instance v0, Lorg/apache/cordova/i;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/i;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    .line 285
    :goto_0
    return-object v0

    .line 248
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-wide/16 v4, -0x1

    .line 253
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/h;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 255
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 260
    :goto_1
    invoke-static {v0}, Lorg/apache/cordova/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v0, Lorg/apache/cordova/i;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/i;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    iget-object v1, p0, Lorg/apache/cordova/h;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 265
    :pswitch_2
    iget-object v0, p0, Lorg/apache/cordova/h;->d:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v0, p0, Lorg/apache/cordova/h;->d:Landroid/content/ContentResolver;

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 267
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 268
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 269
    new-instance v0, Lorg/apache/cordova/i;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/i;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-static {p1}, Lorg/apache/cordova/h;->d(Landroid/net/Uri;)Lorg/apache/cordova/i;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :pswitch_4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 282
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 284
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 285
    new-instance v0, Lorg/apache/cordova/i;

    int-to-long v4, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/i;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
