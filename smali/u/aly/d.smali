.class public final Lu/aly/d;
.super Lu/aly/ah;
.source "UError.java"

# interfaces
.implements Lu/aly/ha;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lu/aly/ah;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1182
    iput-wide v0, p0, Lu/aly/ah;->a:J

    .line 1183
    invoke-virtual {p0}, Lu/aly/ah;->b()V

    .line 22
    sget-object v0, Lu/aly/an;->a:Lu/aly/an;

    .line 1237
    iput-object v0, p0, Lu/aly/ah;->c:Lu/aly/an;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lu/aly/d;-><init>()V

    .line 2205
    iput-object p1, p0, Lu/aly/ah;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lu/aly/d;-><init>()V

    .line 32
    invoke-static {p1}, Lu/aly/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3205
    iput-object v0, p0, Lu/aly/ah;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-object v0

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 49
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 52
    if-nez p0, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 58
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lu/aly/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/an;->b:Lu/aly/an;

    .line 3237
    iput-object v0, p0, Lu/aly/ah;->c:Lu/aly/an;

    .line 37
    return-object p0
.end method

.method public final a(Lu/aly/dz;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1}, Lu/aly/dz;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 3382
    iget-object v0, p1, Lu/aly/dz;->f:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    move-object v0, v1

    .line 77
    :goto_0
    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lu/aly/bz;

    invoke-direct {v0}, Lu/aly/bz;-><init>()V

    .line 4195
    iput-object p2, v0, Lu/aly/bz;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v0}, Lu/aly/dz;->a(Lu/aly/bz;)V

    .line 4223
    :cond_2
    iget-object v1, v0, Lu/aly/bz;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 4224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lu/aly/bz;->b:Ljava/util/List;

    .line 4226
    :cond_3
    iget-object v0, v0, Lu/aly/bz;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 69
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bz;

    .line 4191
    iget-object v3, v0, Lu/aly/bz;->a:Ljava/lang/String;

    .line 70
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method
