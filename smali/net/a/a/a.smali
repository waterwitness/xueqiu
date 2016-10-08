.class final Lnet/a/a/a;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# instance fields
.field a:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/a/a/a;->a:Ljava/util/Properties;

    .line 1066
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2042
    iput-object v0, p0, Lnet/a/a/a;->a:Ljava/util/Properties;

    .line 2049
    iget-object v0, p0, Lnet/a/a/a;->a:Ljava/util/Properties;

    .line 1067
    const-string v1, "/pinyindb/unicode_to_hanyu_pinyin.txt"

    invoke-static {v1}, Lnet/a/a/d;->a(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1073
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1072
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lnet/a/a/a;-><init>()V

    return-void
.end method
