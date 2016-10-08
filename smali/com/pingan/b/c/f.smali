.class final Lcom/pingan/b/c/f;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/pingan/b/c/a;

.field final c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pingan/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Lcom/pingan/b/c/h;

.field private final g:Lcom/pingan/b/c/l;

.field private final h:Lcom/pingan/b/a/f;

.field private final i:[B

.field private final j:[Ljava/lang/String;

.field private final k:[Lorg/apache/http/Header;

.field private final l:J

.field private m:Ljava/io/RandomAccessFile;

.field private n:Ljava/io/File;

.field private o:Lcom/pingan/b/c/j;

.field private p:Z

.field private q:Lcom/pingan/b/d/b;


# direct methods
.method constructor <init>(Lcom/pingan/b/a/f;Lcom/pingan/b/c/a;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/b/c/j;Lcom/pingan/b/c/h;Lcom/pingan/b/c/l;)V
    .locals 6

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pingan/b/c/f;->p:Z

    .line 64
    iput-object p1, p0, Lcom/pingan/b/c/f;->h:Lcom/pingan/b/a/f;

    .line 65
    iput-object p2, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    .line 66
    iput-object p3, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    .line 67
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/pingan/b/c/f;->e:I

    .line 68
    iput-object p4, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    iput-object v0, p0, Lcom/pingan/b/c/f;->k:[Lorg/apache/http/Header;

    .line 71
    iget-object v0, p0, Lcom/pingan/b/c/f;->k:[Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UpToken "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p6, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    .line 73
    new-instance v0, Lcom/pingan/b/c/f$1;

    invoke-direct {v0, p0, p7}, Lcom/pingan/b/c/f$1;-><init>(Lcom/pingan/b/c/f;Lcom/pingan/b/c/h;)V

    iput-object v0, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    .line 86
    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    .line 87
    iget v0, p2, Lcom/pingan/b/c/a;->i:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pingan/b/c/f;->i:[B

    .line 88
    iget v0, p0, Lcom/pingan/b/c/f;->e:I

    const/high16 v1, 0x400000

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x400000

    div-int/2addr v0, v1

    int-to-long v0, v0

    .line 89
    long-to-int v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/c/f;->j:[Ljava/lang/String;

    .line 90
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pingan/b/c/f;->l:J

    .line 91
    iput-object p6, p0, Lcom/pingan/b/c/f;->o:Lcom/pingan/b/c/j;

    .line 92
    new-instance v0, Lcom/pingan/b/d/b;

    invoke-direct {v0}, Lcom/pingan/b/d/b;-><init>()V

    iput-object v0, p0, Lcom/pingan/b/c/f;->q:Lcom/pingan/b/d/b;

    .line 93
    return-void

    .line 1078
    :cond_0
    new-instance p8, Lcom/pingan/b/c/l;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p8, v0, v1}, Lcom/pingan/b/c/l;-><init>(Lcom/pingan/b/c/i;Lcom/pingan/b/c/g;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 189
    add-int/lit8 v0, p1, -0x1

    const/high16 v1, 0x400000

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 191
    const-wide/32 v2, 0x400000

    iget-object v4, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/pingan/b/c/f;I)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/pingan/b/c/f;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/pingan/b/c/f;)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 10

    .prologue
    const/high16 v9, 0x400000

    const/4 v8, 0x0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 320
    new-array v2, v9, [B

    .line 322
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 323
    if-eq v3, v9, :cond_0

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x400000

    rem-long/2addr v4, v6

    long-to-int v3, v4

    .line 325
    new-array v4, v3, [B

    .line 326
    invoke-static {v2, v8, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    invoke-static {v4}, Lcom/pingan/b/d/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {v2}, Lcom/pingan/b/d/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pingan/b/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 341
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 12

    .prologue
    .line 200
    :goto_0
    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 201
    new-instance v5, Lcom/pingan/b/c/f$2;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/pingan/b/c/f$2;-><init>(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    iget-object v2, v0, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    .line 2166
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "http://%s/mkfile/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2308
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2309
    iget-object v3, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    invoke-static {v3}, Lcom/pingan/b/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 2310
    const-string v4, "token"

    iget-object v6, p0, Lcom/pingan/b/c/f;->o:Lcom/pingan/b/c/j;

    iget-object v6, v6, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    const-string v4, "fileSize"

    iget-object v6, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    const-string v4, "fileName"

    iget-object v6, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    const-string v4, "md5"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    invoke-static {v1, v0}, Lcom/pingan/b/c/f;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2175
    iget-object v0, p0, Lcom/pingan/b/c/f;->h:Lcom/pingan/b/a/f;

    iget-boolean v6, p0, Lcom/pingan/b/c/f;->p:Z

    .line 3103
    new-instance v3, Lcom/pingan/b/a/h;

    invoke-direct {v3}, Lcom/pingan/b/a/h;-><init>()V

    .line 3104
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/pingan/b/a/h;->a(Lcom/pingan/b/a/j;Lcom/pingan/b/a/c;)Lcom/pingan/b/a/b;

    move-result-object v2

    .line 3105
    iget-object v3, v0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/http/Header;

    invoke-interface {v3, v4}, Lcom/pingan/b/a/g;->a([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 3106
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Z)V

    .line 8160
    :goto_1
    return-void

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    iget-object v1, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 4040
    iget-boolean v0, v0, Lcom/pingan/b/b/a;->b:Z

    .line 228
    if-eqz v0, :cond_1

    .line 229
    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 232
    :cond_1
    new-instance v4, Lcom/pingan/b/c/f$3;

    invoke-direct {v4, p0, p1}, Lcom/pingan/b/c/f$3;-><init>(Lcom/pingan/b/c/f;I)V

    .line 242
    new-instance v5, Lcom/pingan/b/c/f$4;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/pingan/b/c/f$4;-><init>(Lcom/pingan/b/c/f;IILjava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 5032
    iget v0, v0, Lcom/pingan/b/b/a;->a:I

    .line 280
    if-nez v0, :cond_2

    .line 5293
    invoke-direct {p0, p1}, Lcom/pingan/b/c/f;->a(I)I

    move-result v0

    .line 5294
    iget-object v1, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget v1, v1, Lcom/pingan/b/c/a;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 282
    add-int/lit8 v0, p1, -0x1

    const/high16 v1, 0x400000

    mul-int/2addr v0, v1

    .line 283
    iget-object v1, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    iget-object v6, v1, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    .line 6138
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "http://%s/mkblk/%s/%s/%d?token=%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/pingan/b/c/f;->o:Lcom/pingan/b/c/j;

    iget-object v9, v9, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6140
    :try_start_1
    iget-object v2, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6141
    iget-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/pingan/b/c/f;->i:[B

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6147
    iget-object v2, p0, Lcom/pingan/b/c/f;->i:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pingan/b/c/f;->a(Ljava/lang/String;[BILcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/c/g;)V

    goto/16 :goto_1

    .line 6142
    :catch_1
    move-exception v0

    .line 6143
    iget-object v1, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget v1, v0, Lcom/pingan/b/c/a;->i:I

    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 7032
    iget v0, v0, Lcom/pingan/b/b/a;->a:I

    .line 286
    mul-int/2addr v1, v0

    .line 287
    add-int/lit8 v0, p1, -0x1

    const/high16 v2, 0x400000

    mul-int/2addr v0, v2

    add-int v2, v0, v1

    .line 7184
    invoke-direct {p0, p1}, Lcom/pingan/b/c/f;->a(I)I

    move-result v0

    .line 7185
    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget v3, v3, Lcom/pingan/b/c/a;->i:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 289
    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    iget-object v6, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    iget-object v6, v6, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    .line 8152
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8153
    invoke-static {v0}, Lcom/pingan/b/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8154
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "http://%s/bput/%s/%s/%s/%d?token=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/pingan/b/c/f;->o:Lcom/pingan/b/c/j;

    iget-object v1, v1, Lcom/pingan/b/c/j;->a:Ljava/lang/String;

    aput-object v1, v9, v0

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8156
    :try_start_2
    iget-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8157
    iget-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/pingan/b/c/f;->i:[B

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8162
    iget-object v2, p0, Lcom/pingan/b/c/f;->i:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pingan/b/c/f;->a(Ljava/lang/String;[BILcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/c/g;)V

    goto/16 :goto_1

    .line 8158
    :catch_2
    move-exception v0

    .line 8159
    iget-object v1, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/pingan/b/c/f;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/pingan/b/c/f;->a(IILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;[BILcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/c/g;)V
    .locals 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pingan/b/c/f;->h:Lcom/pingan/b/a/f;

    iget-object v3, p0, Lcom/pingan/b/c/f;->k:[Lorg/apache/http/Header;

    iget-boolean v6, p0, Lcom/pingan/b/c/f;->p:Z

    .line 2098
    new-instance v2, Lcom/pingan/b/a/b;

    invoke-direct {v2, p2, p3, p4, p6}, Lcom/pingan/b/a/b;-><init>([BILcom/pingan/b/a/j;Lcom/pingan/b/a/c;)V

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 2099
    invoke-virtual/range {v0 .. v6}, Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Z)V

    .line 181
    return-void
.end method

.method static synthetic b(Lcom/pingan/b/c/f;)V
    .locals 3

    .prologue
    .line 41
    .line 9121
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    if-eqz v0, :cond_0

    .line 9122
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    iget-object v1, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pingan/b/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/pingan/b/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/l;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    return-object v0
.end method

.method static synthetic e(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    return-object v0
.end method

.method static synthetic f(Lcom/pingan/b/c/f;)Z
    .locals 1

    .prologue
    .line 41
    .line 9195
    iget-object v0, p0, Lcom/pingan/b/c/f;->g:Lcom/pingan/b/c/l;

    iget-object v0, v0, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    invoke-interface {v0}, Lcom/pingan/b/c/g;->a()Z

    move-result v0

    .line 41
    return v0
.end method

.method static synthetic g(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    return-object v0
.end method

.method static synthetic h(Lcom/pingan/b/c/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/pingan/b/c/f;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/pingan/b/c/f;->e:I

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 96
    .line 1113
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    iget-object v1, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pingan/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1114
    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    iget-object v1, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    iget-object v2, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pingan/b/c/e;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    :goto_0
    iput-object v0, p0, Lcom/pingan/b/c/f;->d:Ljava/util/List;

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/pingan/b/c/f;->n:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pingan/b/c/f;->m:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v2, v2, Lcom/pingan/b/c/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/pingan/b/c/f;->a(IILjava/lang/String;)V

    .line 105
    :goto_1
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/c/f;->b:Lcom/pingan/b/c/a;

    iget-object v0, v0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    iget-object v1, p0, Lcom/pingan/b/c/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pingan/b/c/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 101
    iget-object v1, p0, Lcom/pingan/b/c/f;->f:Lcom/pingan/b/c/h;

    iget-object v2, p0, Lcom/pingan/b/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_1
.end method
