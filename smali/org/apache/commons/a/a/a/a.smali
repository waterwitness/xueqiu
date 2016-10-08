.class public final Lorg/apache/commons/a/a/a/a;
.super Ljava/lang/Object;
.source "TarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/a/a/a;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:J

.field e:J

.field f:B

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Z

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private final r:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    .line 124
    iput v2, p0, Lorg/apache/commons/a/a/a/a;->b:I

    .line 127
    iput v2, p0, Lorg/apache/commons/a/a/a/a;->c:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/a/a/a/a;->d:J

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->g:Ljava/lang/String;

    .line 145
    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->o:Ljava/lang/String;

    .line 147
    const-string v0, "00"

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->p:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->i:Ljava/lang/String;

    .line 156
    iput v2, p0, Lorg/apache/commons/a/a/a/a;->j:I

    .line 159
    iput v2, p0, Lorg/apache/commons/a/a/a/a;->k:I

    .line 186
    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 189
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->h:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->r:Ljava/io/File;

    .line 194
    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/a/a/b/b;)V
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v6, 0x64

    const/16 v5, 0xc

    const/16 v4, 0x8

    .line 323
    invoke-direct {p0}, Lorg/apache/commons/a/a/a/a;-><init>()V

    .line 1939
    invoke-static {p1, v1, v6, p2}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    .line 1942
    invoke-static {p1, v6, v4}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/a/a/a/a;->m:I

    .line 1944
    const/16 v2, 0x6c

    invoke-static {p1, v2, v4}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/a/a/a/a;->b:I

    .line 1946
    const/16 v2, 0x74

    invoke-static {p1, v2, v4}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/a/a/a/a;->c:I

    .line 1948
    const/16 v2, 0x7c

    invoke-static {p1, v2, v5}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/a/a/a/a;->d:J

    .line 1950
    const/16 v2, 0x88

    invoke-static {p1, v2, v5}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/a/a/a/a;->e:J

    .line 1952
    invoke-static {p1}, Lorg/apache/commons/a/a/a/e;->a([B)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/a/a/a/a;->n:Z

    .line 1954
    const/16 v2, 0x9c

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/commons/a/a/a/a;->f:B

    .line 1955
    const/16 v2, 0x9d

    invoke-static {p1, v2, v6, p2}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->g:Ljava/lang/String;

    .line 1958
    const/16 v2, 0x101

    const/4 v3, 0x6

    invoke-static {p1, v2, v3}, Lorg/apache/commons/a/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->o:Ljava/lang/String;

    .line 1960
    const/16 v2, 0x107

    invoke-static {p1, v2, v0}, Lorg/apache/commons/a/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->p:Ljava/lang/String;

    .line 1962
    const/16 v2, 0x109

    const/16 v3, 0x20

    invoke-static {p1, v2, v3, p2}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->h:Ljava/lang/String;

    .line 1965
    const/16 v2, 0x129

    const/16 v3, 0x20

    invoke-static {p1, v2, v3, p2}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/a/a/a/a;->i:Ljava/lang/String;

    .line 1968
    const/16 v2, 0x149

    invoke-static {p1, v2, v4}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/a/a/a/a;->j:I

    .line 1970
    const/16 v2, 0x151

    invoke-static {p1, v2, v4}, Lorg/apache/commons/a/a/a/e;->b([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/a/a/a/a;->k:I

    .line 2055
    const-string v2, "ustar "

    invoke-static {v2, p1}, Lorg/apache/commons/a/c/a;->a(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1974
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1990
    const/16 v0, 0x159

    const/16 v1, 0x9b

    invoke-static {p1, v0, v1, p2}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    invoke-virtual {p0}, Lorg/apache/commons/a/a/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    .line 1998
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    .line 1986
    :cond_1
    :goto_1
    return-void

    .line 2058
    :cond_2
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1}, Lorg/apache/commons/a/c/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2059
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2061
    goto :goto_0

    .line 1982
    :pswitch_0
    const/16 v0, 0x1e2

    invoke-static {p1, v0}, Lorg/apache/commons/a/a/a/e;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/a/a/a/a;->l:Z

    .line 1984
    const/16 v0, 0x1e3

    invoke-static {p1, v0, v5}, Lorg/apache/commons/a/a/a/e;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/a/a/a/a;->q:J

    goto :goto_1

    .line 1974
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 390
    .line 5011
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 5013
    if-eqz v0, :cond_2

    .line 5018
    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5019
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 5020
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5021
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5023
    if-ne v1, v4, :cond_2

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 5026
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5037
    :cond_2
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 5042
    :goto_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5043
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5029
    :cond_3
    const-string v1, "netware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 5030
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 5031
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 5032
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 390
    :cond_4
    iput-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 584
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/a;->d:J

    return-wide v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 718
    iget-object v1, p0, Lorg/apache/commons/a/a/a/a;->r:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 719
    iget-object v0, p0, Lorg/apache/commons/a/a/a/a;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    iget-byte v1, p0, Lorg/apache/commons/a/a/a/a;->f:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    .line 5381
    iget-object v1, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/commons/a/a/a/a;

    .line 2381
    iget-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3381
    iget-object v1, p1, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2335
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 360
    .line 4381
    iget-object v0, p0, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
